import 'package:clock/clock.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/fpdart.dart';
import 'package:intl/intl.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/util/app_const.dart';
import '../../../../core/util/printer.dart';
import '../../domain/entities/price/price.dart';
import '../../domain/entities/produce/produce.dart';
import '../repository/produce_manager_helpers.dart';

abstract class IProducePricesRemoteDatasource {
  /// This method will return a list of [PriceSnippet] which is unsorted. Use
  /// helper methods from [helpers.dart] to filter and sort it.
  Future<List<PriceSnippet>> getAggregatePrices(String produceId);
  Future<Produce> addNewPrice({
    required String produceId,
    required num currentPrice,
    num? daysFromNow,
  });
  Future<List<Price>> getFirstTenPrices(String produceId);
  Future<List<Price>> getNextTenPrices(List<Price> lastPricesList, String produceId);
  Future<Price> getPrice(String produceId, String priceId);
  Future<Price> editSubPrice(String produceId, String priceId, num newPrice, String subPriceDate);
  Future<bool> deleteSubPrice(String produceId, String priceId, String subPriceDate);
}

class ProducePricesRemoteDatasource implements IProducePricesRemoteDatasource {
  final FirebaseFirestore firebaseFirestore;

  ProducePricesRemoteDatasource({required this.firebaseFirestore});

  /// There are two possible cases:
  ///
  /// 1. Adding a Price to a date that already has a price.
  /// 2. Adding a Price to a date that does not have a price.
  @override
  Future<Produce> addNewPrice({
    required String produceId,
    required num currentPrice,
    num? daysFromNow,
  }) async {
    DateTime currentTimeStamp;
    if (daysFromNow == null) {
      currentTimeStamp = clock.now();
    } else {
      currentTimeStamp = clock.daysAgo(daysFromNow.toInt());
    }

    final chosenDate = DateFormat("dd-MM-yyyy").format(currentTimeStamp);

    // Run transaction
    return await firebaseFirestore.runTransaction(
      (transaction) async {
        //! Retrieve all the required data.
        // Get the price document of the chosen date. If it exists, there should one in the list, if not, it should be empty.
        final chosenDatePriceDoc = await firebaseFirestore
            .collection(FS_GLOBAL_PRODUCE)
            .doc(produceId)
            .collection(FS_PRICES_COLLECTION)
            .where('priceDate', isEqualTo: chosenDate)
            .get()
            .then((querySnapshot) {
          return querySnapshot.docs.map((doc) {
            return doc.data();
          }).toList();
        });
        // Get the aggregate prices document.
        final aggregatePricesDoc = await firebaseFirestore
            .collection(FS_GLOBAL_PRODUCE)
            .doc(produceId)
            .collection(FS_AGGREGATE_COLLECTION)
            .doc(FS_AGGREGATE_DOC)
            .get()
            .then((doc) {
          return doc.data();
        });

        //! Update the prices.
        final Tuple2<Price, Map<String, dynamic>> updatedPrices =
            await _returnPriceAndUpdatePricesTransaction(
          transaction: transaction,
          firebaseFirestore: firebaseFirestore,
          chosenTimeStamp: currentTimeStamp,
          produceId: produceId,
          newPrice: currentPrice,
          chosenPriceDoc: chosenDatePriceDoc,
          aggregatePricesMap: aggregatePricesDoc!,
        );

        //! Begin Updating Produce Document
        final List<PriceSnippet> pricesList = [];
        updatedPrices.mapSecond((aggregatePricesMap) {
          aggregatePricesMap["prices-map"].forEach((date, price) {
            pricesList.add(PriceSnippet(price: price, priceDate: date));
          });
        });

        final oneWeekPrices = pricesToRanged(pricesList, rangeType: RangeType.oneW);
        final oneYearPrices = pricesToRanged(pricesList, rangeType: RangeType.oneY);

        // At this point, [weeklyPricesSnippet] should have been fully updated. Convert it to map and update
        Map<String, dynamic> weeklyPricesSnippetJSON = {};
        for (PriceSnippet priceSnippet in oneWeekPrices) {
          weeklyPricesSnippetJSON[priceSnippet.priceDate] = priceSnippet.price;
        }
        prettyPrintJson(weeklyPricesSnippetJSON);

        transaction.update(
          firebaseFirestore.collection(FS_GLOBAL_PRODUCE).doc(produceId),
          {"weeklyPrices": weeklyPricesSnippetJSON},
        );

        // There can be a case where [currentProducePrice] is being updated while [previousProducePrice] has
        // not yet existed.
        Map<String, dynamic> currentProducePrice = {
          "price": oneYearPrices[oneYearPrices.length - 1].price,
          "priceDate": oneYearPrices[oneYearPrices.length - 1].priceDate,
        };
        Map<String, dynamic> previousProducePrice = {};
        if (oneYearPrices.length == 1) {
          previousProducePrice = {
            "price": null,
            "priceDate": null,
          };
        } else {
          previousProducePrice = {
            "price": oneYearPrices[oneYearPrices.length - 2].price,
            "priceDate": oneYearPrices[oneYearPrices.length - 2].priceDate,
          };
        }

        //! Start updating [currentProducePrice] and [previousProducePrice] based on [weeklyPrices]
        transaction.update(
          firebaseFirestore.collection(FS_GLOBAL_PRODUCE).doc(produceId),
          {
            "currentProducePrice": currentProducePrice,
            "previousProducePrice": previousProducePrice,
            "lastUpdateTimeStamp": currentTimeStamp,
          },
        );
      },
    ).then((_) async {
      // Retrieve updated produce
      final updatedProduceSnapshot =
          await firebaseFirestore.collection(FS_GLOBAL_PRODUCE).doc(produceId).get();

      // Convert snapshot data to Produce object
      final updatedProduce = Produce.fromMap(updatedProduceSnapshot.data());

      return updatedProduce;
    });
  }

  @override
  Future<bool> deleteSubPrice(String produceId, String priceId, String subPriceDate) async {
    bool isPriceDocDeleted = false;

    return await firebaseFirestore.runTransaction<bool>((transaction) async {
      final Price price = await transaction
          .get(
            firebaseFirestore
                .collection(FS_GLOBAL_PRODUCE)
                .doc(produceId)
                .collection(FS_PRICES_COLLECTION)
                .doc(priceId),
          )
          .then((snap) => Price.fromMap(snap.data()));

      final Map<String, dynamic>? aggregatePricesMap = await transaction
          .get(
            firebaseFirestore
                .collection(FS_GLOBAL_PRODUCE)
                .doc(produceId)
                .collection(FS_AGGREGATE_COLLECTION)
                .doc(FS_AGGREGATE_DOC),
          )
          .then((snap) => snap.data());

      List<PriceSnippet> subPricesList = price.allPricesWithDateList;
      List<PriceSnippet> updatedSubPricesList = [];

      for (PriceSnippet priceSnippet in subPricesList) {
        if (priceSnippet.priceDate == subPriceDate) {
          // Do nothing, we technically "remove"
          continue;
        }
        updatedSubPricesList.add(priceSnippet);
      }

      if (updatedSubPricesList.isEmpty) {
        //? This means that the last [subPrice] was deleted and thus, the [Price] doc needs to be deleted.
        //? Three major steps: Update [aggregatePrices], Delete [Price] document, Update [Produce]
        //! Check if there is only one [Price] left, if yes, throw Exception.
        final allPricesList = PriceSnippet.fromAggregateToList(aggregatePricesMap!);
        if (allPricesList.length == 1) {
          throw ProduceManagerException(
            code: PM_ERR_LAST_PRICE,
            message: "This is the last price of the Produce, so it cannot be deleted.",
            stackTrace: StackTrace.current,
          );
        }

        //! Delete [Price] from [aggregatePrices]
        transaction.update(
          firebaseFirestore
              .collection(FS_GLOBAL_PRODUCE)
              .doc(produceId)
              .collection(FS_AGGREGATE_COLLECTION)
              .doc(FS_AGGREGATE_DOC),
          {"prices-map.${price.priceDate}": FieldValue.delete()},
        );
        aggregatePricesMap["prices-map"].remove(price.priceDate);

        //! Delete [Price] document
        transaction.delete(
          firebaseFirestore
              .collection(FS_GLOBAL_PRODUCE)
              .doc(produceId)
              .collection(FS_PRICES_COLLECTION)
              .doc(priceId),
        );

        //! Update [Produce]
        await updateProducePricesTransaction(
          transaction: transaction,
          firebaseFirestore: firebaseFirestore,
          produceId: produceId,
          aggregatePricesMap: aggregatePricesMap,
        );

        isPriceDocDeleted = true;
      } else {
        //? This means that there is at least one [subPrice] left.
        //? steps: Update [Price]'s [currentPrice] and [allPrices], Update [aggregatePrices], Update [Produce]

        //! Update [Price]'s [currentPrice] and [allPrices]
        final updatedPrice = _deleteSubPriceAndUpdatePrice(price, subPriceDate);
        transaction.update(
          firebaseFirestore
              .collection(FS_GLOBAL_PRODUCE)
              .doc(produceId)
              .collection(FS_PRICES_COLLECTION)
              .doc(priceId),
          Price.toMap(updatedPrice),
        );
        //! Update [aggregatePrices]
        transaction.update(
          firebaseFirestore
              .collection(FS_GLOBAL_PRODUCE)
              .doc(produceId)
              .collection(FS_AGGREGATE_COLLECTION)
              .doc(FS_AGGREGATE_DOC),
          {"prices-map.${price.priceDate}": updatedPrice.currentPrice},
        );
        aggregatePricesMap!["prices-map"][price.priceDate] = updatedPrice.currentPrice;

        //! Update [Produce]
        await updateProducePricesTransaction(
          transaction: transaction,
          firebaseFirestore: firebaseFirestore,
          produceId: produceId,
          aggregatePricesMap: aggregatePricesMap,
        );
      }

      return isPriceDocDeleted;
    });
  }

  @override
  Future<Price> editSubPrice(
      String produceId, String priceId, num newPrice, String subPriceDate) async {
    return await firebaseFirestore.runTransaction<Price>((transaction) async {
      final priceSnapshot = await transaction.get(
        firebaseFirestore
            .collection(FS_GLOBAL_PRODUCE)
            .doc(produceId)
            .collection(FS_PRICES_COLLECTION)
            .doc(priceId),
      );
      final Price price = Price.fromMap(priceSnapshot.data()!);

      final produceSnapshot = await transaction.get(
        firebaseFirestore.collection(FS_GLOBAL_PRODUCE).doc(produceId),
      );
      final Produce produce = Produce.fromMap(produceSnapshot.data()!);

      /// [priceDateTimeStamp] refers to the date associated with the price, NOT when it was updated.
      final priceDateTimeStamp = price.priceDateTimeStamp;
      final chosenYear = DateFormat("yyyy").format(priceDateTimeStamp);

      /// [formattedAggregatePriceDate] refers to the date of THIS price which will be kept in [aggregatePrices]
      final formattedAggregatePriceDate = DateFormat("dd-MM-yyyy").format(priceDateTimeStamp);

      /// [subPricesList] refers to the prices associated with this [Price] object
      List<PriceSnippet> subPricesList = price.allPricesWithDateList;
      List<PriceSnippet> updatedSubPricesList = [];

      /// Loop through [subPricesList] to find the date of the [subPrice] to edit, when it is found,
      /// it is added to the [updatedSubPricesList]
      for (PriceSnippet priceSnippet in subPricesList) {
        if (priceSnippet.priceDate == subPriceDate) {
          final newPriceSnippet = priceSnippet.copyWith(price: newPrice);
          updatedSubPricesList.add(newPriceSnippet);
          continue;
        }
        updatedSubPricesList.add(priceSnippet);
      }

      /// [updatedSubPrice]'s name might be a bit misleading, but here, it means the [Price] object previously
      /// supplied, but with an updated [allPricesWithDateList]
      ///
      /// But the [currentPrice] for the [Price] document has not yet been updated, therefore
      /// updateCurrentPrice() is called.
      final Price updatedSubPrice = price.copyWith(allPricesWithDateList: updatedSubPricesList);
      final Price updatedPrice = updateCurrentPrice(updatedSubPrice);

      // At this point, [updatedPrice] should be the most recent.
      // Update Price Document
      transaction.update(
        firebaseFirestore
            .collection(FS_GLOBAL_PRODUCE)
            .doc(produceId)
            .collection(FS_PRICES_COLLECTION)
            .doc(priceId),
        Price.toMap(updatedPrice),
      );
      // Update Aggregate Price
      transaction.update(
        firebaseFirestore
            .collection(FS_GLOBAL_PRODUCE)
            .doc(produceId)
            .collection(FS_AGGREGATE_COLLECTION)
            .doc(FS_AGGREGATE_DOC),
        {"prices-map.$formattedAggregatePriceDate": updatedPrice.currentPrice},
      );

      // This uses the retrieved produce last updated time stamp because realistically, we want
      // [lastUpdateTimeStamp] to be like "last price added".
      await updateProducePricesTransaction(
        transaction: transaction,
        firebaseFirestore: firebaseFirestore,
        produceId: produceId,
        lastUpdateTimeStamp: produce.lastUpdateTimeStamp,
        // TODO: Pass in aggregatePricesMap
        aggregatePricesMap: {},
      );

      return updatedPrice;
    });
  }

  @override
  Future<List<PriceSnippet>> getAggregatePrices(String produceId) async {
    final Map<String, dynamic>? aggregatePricesMap = await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .doc(produceId)
        .collection(FS_AGGREGATE_COLLECTION)
        .doc(FS_AGGREGATE_DOC)
        .get()
        .then((doc) => doc.data());

    if (aggregatePricesMap == null) {
      return [];
    } else {
      final List<PriceSnippet> pricesList = [];
      aggregatePricesMap["prices-map"].forEach((date, price) {
        pricesList.add(PriceSnippet(price: price, priceDate: date));
      });

      return pricesList;
    }
  }

  @override
  Future<List<Price>> getFirstTenPrices(String produceId) async {
    final queryList = await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .doc(produceId)
        .collection(FS_PRICES_COLLECTION)
        .orderBy("priceDateTimeStamp", descending: true)
        .limit(10)
        .get();

    final priceList = queryList.docs.map((documentSnapshot) {
      return Price.fromMap(documentSnapshot.data());
    }).toList();

    return priceList;
  }

  @override
  Future<List<Price>> getNextTenPrices(List<Price> lastPricesList, String produceId) async {
    final lastDocument = await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .doc(produceId)
        .collection(FS_PRICES_COLLECTION)
        .doc(lastPricesList[lastPricesList.length - 1].priceId)
        .get();

    final newQueryList = await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .doc(produceId)
        .collection(FS_PRICES_COLLECTION)
        .orderBy("priceDateTimeStamp", descending: true)
        .startAfterDocument(lastDocument)
        .limit(10)
        .get();

    final List<Price> newPricesList = newQueryList.docs.map((documentSnapshot) {
      return Price.fromMap(documentSnapshot.data());
    }).toList();

    List<Price> combinedPricesList = List.from(lastPricesList)..addAll(newPricesList);

    return combinedPricesList;
  }

  @override
  Future<Price> getPrice(String produceId, String priceId) async {
    final Price price = await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .doc(produceId)
        .collection(FS_PRICES_COLLECTION)
        .doc(priceId)
        .get()
        .then((value) => Price.fromMap(value.data()));

    return price;
  }
}

/// Note that this is a CONSTRUCTIVE method!
///
/// This methods updates the remote [Price] doucment and [AggregatePrices].
/// If the [chosenPriceDoc] is empty, it will create a new [Price] document in remote.
///
/// If the [chosenPriceDoc] is not empty, (the length MUST be one, because there should
/// only be one [Price] document to represent a specific date), the [newPrice] will
/// be considered as an addition to the existing prices,
///
/// The [newPrice] will be added to the [chosenPriceDoc] and the average will be calculated.
/// The average will be the new [currentPrice] for the [Price] document.
///
/// It should return a [Price] object with the updated [currentPrice] and [allPricesWithDateList] as well as the new [aggregatePricesMap]
///
Future<Tuple2<Price, Map<String, dynamic>>> _returnPriceAndUpdatePricesTransaction({
  required FirebaseFirestore firebaseFirestore,
  required Transaction transaction,
  required DateTime chosenTimeStamp,
  required String produceId,
  required num newPrice,
  required List<Map<String, dynamic>?> chosenPriceDoc,
  required Map<String, dynamic> aggregatePricesMap,
}) async {
  final Price price = await _createOrUpdatePriceDocumentTransaction(
    firebaseFirestore: firebaseFirestore,
    transaction: transaction,
    chosenTimeStamp: chosenTimeStamp,
    produceId: produceId,
    newPrice: newPrice,
    chosenPriceDoc: chosenPriceDoc,
  );

  final newAggregatePricesMap = await _updateAggregatePricesTransaction(
    transaction: transaction,
    firebaseFirestore: firebaseFirestore,
    produceId: produceId,
    newPrice: price.currentPrice,
    chosenTimeStamp: chosenTimeStamp,
    allPricesMap: aggregatePricesMap,
  );

  return Tuple2(price, newAggregatePricesMap);
}

Future<Price> _createOrUpdatePriceDocumentTransaction({
  required FirebaseFirestore firebaseFirestore,
  required Transaction transaction,
  required DateTime chosenTimeStamp,
  required String produceId,
  required num newPrice,
  required List<Map<String, dynamic>?> chosenPriceDoc,
}) async {
  if (chosenPriceDoc.isEmpty) {
    return await createPriceDocumentTransaction(
      transaction: transaction,
      firebaseFirestore: firebaseFirestore,
      produceId: produceId,
      newPrice: newPrice,
      chosenTimeStamp: chosenTimeStamp,
    );
  } else if (chosenPriceDoc.length == 1) {
    return await _updatePriceDocumentTransaction(
      transaction: transaction,
      firebaseFirestore: firebaseFirestore,
      produceId: produceId,
      newPrice: newPrice,
      chosenTimeStamp: chosenTimeStamp,
      chosenPriceDoc: chosenPriceDoc[0]!,
    );
  } else {
    // If there are multiple documents, an error is thrown. There should never be multiple.
    throw ProduceManagerException(
      code: PM_ERR_MULTI_PRICE_DOC,
      message:
          "Unexpected structure: There should be only one or no document inside [chosenDatePriceDoc]",
      stackTrace: StackTrace.current,
    );
  }
}

Future<Price> createPriceDocumentTransaction({
  required Transaction transaction,
  required FirebaseFirestore firebaseFirestore,
  required String produceId,
  required num newPrice,
  required DateTime chosenTimeStamp,
}) async {
  DocumentReference priceDocRef = firebaseFirestore
      .collection(FS_GLOBAL_PRODUCE)
      .doc(produceId)
      .collection(FS_PRICES_COLLECTION)
      .doc();

  final chosenDate = DateFormat("dd-MM-yyyy").format(chosenTimeStamp);
  final formattedCurrentTimeStamp = DateFormat("yyyy-MM-dd hh:mm:ss aaa").format(clock.now());

  Price price = Price(
    currentPrice: newPrice,
    priceDate: chosenDate,
    priceDateTimeStamp: chosenTimeStamp,
    isAverage: false,
    allPricesWithDateList: [PriceSnippet(price: newPrice, priceDate: formattedCurrentTimeStamp)],
    priceId: priceDocRef.id,
  );

  transaction.set(priceDocRef, Price.toMap(price));

  return price;
}

/// These [chosenTimeStamp] and [subPriceDate] must not both be specified. Only one.
///
/// Both of those variables are referring to a specific [subPrice]
///
/// The returned [Price] should have the new [Price.currentPrice] and [Price.allPricesMap].
Future<Price> _updatePriceDocumentTransaction({
  required Transaction transaction,
  required FirebaseFirestore firebaseFirestore,
  required String produceId,
  required num newPrice,
  required Map<String, dynamic> chosenPriceDoc,
  DateTime? chosenTimeStamp,
  String? subPriceDate,
}) async {
  String formattedCurrentTimeStamp;

  if (chosenTimeStamp != null) {
    formattedCurrentTimeStamp = DateFormat("yyyy-MM-dd hh:mm:ss aaa").format(chosenTimeStamp);
  } else if (subPriceDate != null) {
    formattedCurrentTimeStamp = subPriceDate;
  } else if (subPriceDate != null && chosenTimeStamp != null) {
    throw Exception();
  } else {
    throw Exception();
  }

  num newCurrentPrice = _calculateNewPriceAverage(chosenPriceDoc["allPricesMap"], newPrice);

  Price price = Price.fromMap(chosenPriceDoc);
  Price updatedPrice = price.copyWith(
    currentPrice: newCurrentPrice,
    isAverage: true,
    allPricesWithDateList: [
      ...price.allPricesWithDateList,
      PriceSnippet(price: newPrice, priceDate: formattedCurrentTimeStamp),
    ],
  );

  transaction.update(
    firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .doc(produceId)
        .collection(FS_PRICES_COLLECTION)
        .doc(chosenPriceDoc["priceId"]),
    Price.toMap(updatedPrice),
    // {
    //   "currentPrice": newCurrentPrice,
    //   "isAverage": true,
    //   "allPricesMap.$formattedCurrentTimeStamp": newPrice,
    // },
  );

  return updatedPrice;
}

/// This method will update [currentProducePrice], [previousProducePrice] and [weeklyPrices].
/// It will also update the [lastUpdateTimeStamp] if the [chosenTimeStamp] is the latest.
///
/// Ensure that [aggregatePricesMap] is the latest data before calling this method!
///
/// This is a Transaction method, so reads should be done before calling this method.
Future<void> updateProducePricesTransaction({
  required Transaction transaction,
  required FirebaseFirestore firebaseFirestore,
  required String produceId,
  required Map<String, dynamic> aggregatePricesMap,
  DateTime? lastUpdateTimeStamp,
}) async {
  // final Map<String, dynamic> aggregatePricesMap = await firebaseFirestore
  //     .collection(FS_GLOBAL_PRODUCE)
  //     .doc(produceId)
  //     .collection(FS_AGGREGATE_COLLECTION)
  //     .doc(FS_AGGREGATE_DOC)
  //     .get()
  //     .then((value) => value.data()!);

  final List<PriceSnippet> pricesList = [];
  aggregatePricesMap["prices-map"].forEach((date, price) {
    pricesList.add(PriceSnippet(price: price, priceDate: date));
  });

  final oneWeekPrices = pricesToRanged(pricesList, rangeType: RangeType.oneW);
  final oneYearPrices = pricesToRanged(pricesList, rangeType: RangeType.oneY);

  // At this point, [weeklyPricesSnippet] should have been fully updated. Convert it to map and update
  Map<String, dynamic> weeklyPricesSnippetJSON = {};
  for (PriceSnippet priceSnippet in oneWeekPrices) {
    weeklyPricesSnippetJSON[priceSnippet.priceDate] = priceSnippet.price;
  }
  prettyPrintJson(weeklyPricesSnippetJSON);

  // There can be a case where [currentProducePrice] is being updated while [previousProducePrice] has
  // not yet existed.
  Map<String, dynamic> currentProducePrice = {
    "price": oneYearPrices[oneYearPrices.length - 1].price,
    "priceDate": oneYearPrices[oneYearPrices.length - 1].priceDate,
  };
  Map<String, dynamic> previousProducePrice = {};
  if (oneYearPrices.length == 1) {
    previousProducePrice = {
      "price": null,
      "priceDate": null,
    };
  } else {
    previousProducePrice = {
      "price": oneYearPrices[oneYearPrices.length - 2].price,
      "priceDate": oneYearPrices[oneYearPrices.length - 2].priceDate,
    };
  }

  Map<String, dynamic> withTimeStampMap = {
    "currentProducePrice": currentProducePrice,
    "previousProducePrice": previousProducePrice,
    "lastUpdateTimeStamp": lastUpdateTimeStamp,
    "weeklyPrices": weeklyPricesSnippetJSON,
  };
  Map<String, dynamic> withoutTimeStampMap = {
    "currentProducePrice": currentProducePrice,
    "previousProducePrice": previousProducePrice,
    "weeklyPrices": weeklyPricesSnippetJSON,
  };

  /// This variable basically keeps the decision whether to include time stamp or not in the
  /// [Produce] document update
  Map<String, dynamic> mapUsed;

  if (lastUpdateTimeStamp == null) {
    mapUsed = withoutTimeStampMap;
  } else {
    mapUsed = withTimeStampMap;
  }

  //! Start updating [currentProducePrice] and [previousProducePrice]
  transaction.update(
    firebaseFirestore.collection(FS_GLOBAL_PRODUCE).doc(produceId),
    mapUsed,
  );
}

/// The [newPrice] field must be the calculated average of [allPricesMap].
Future<Map<String, dynamic>> _updateAggregatePricesTransaction({
  required FirebaseFirestore firebaseFirestore,
  required Transaction transaction,
  required String produceId,
  required num newPrice,
  required DateTime chosenTimeStamp,
  required Map<String, dynamic> allPricesMap,
}) async {
  final aggregateDocRef = firebaseFirestore
      .collection(FS_GLOBAL_PRODUCE)
      .doc(produceId)
      .collection(FS_AGGREGATE_COLLECTION)
      .doc(FS_AGGREGATE_DOC);

  final chosenDate = DateFormat("dd-MM-yyyy").format(chosenTimeStamp);

  // Update the [allPricesMap] with the new price
  allPricesMap["prices-map"][chosenDate] = newPrice;

  transaction.update(aggregateDocRef, {"prices-map.$chosenDate": newPrice});

  return allPricesMap;
}

/// This method expects [newPrice] to be a whole new sub-price, as in, it cannot be used to "edit"
/// a price.
///
/// Basically, only use this when you want to add a new price to the [subPrice] list and calculate
/// the new average price. Though this method doesn't update [allPricesMap], but simply returns
/// the correct average price.
num _calculateNewPriceAverage(Map<String, dynamic> allPricesMap, num newPrice) {
  List<num> allPricesList = [newPrice];

  allPricesMap.forEach((date, price) {
    allPricesList.add(price);
  });

  num tempSum = 0;
  num newCurrentPrice = 0;

  for (num price in allPricesList) {
    tempSum = tempSum + price;
  }
  newCurrentPrice = tempSum / allPricesList.length;

  return newCurrentPrice;
}

/// This method will update the [newPrice] associated with [chosenSubPriceDate] and return
/// an updated [Price].
Price _editSubPrice(Price price, num newPrice, String chosenSubPriceDate) {
  List<PriceSnippet> subPricesList = price.allPricesWithDateList;
  List<PriceSnippet> updatedSubPricesList = [];

  for (PriceSnippet priceSnippet in subPricesList) {
    if (priceSnippet.priceDate == chosenSubPriceDate) {
      final newPriceSnippet = priceSnippet.copyWith(price: newPrice);
      updatedSubPricesList.add(newPriceSnippet);
      continue;
    }
    updatedSubPricesList.add(priceSnippet);
  }

  final updatedPrice = price.copyWith(allPricesWithDateList: updatedSubPricesList);

  return updatedPrice;
}

/// This method will remove the [chosenSubPriceDate] and return an updated [Price]
Price _deleteSubPriceAndUpdatePrice(Price price, String chosenSubPriceDate) {
  List<PriceSnippet> subPricesList = price.allPricesWithDateList;
  List<PriceSnippet> updatedSubPricesList = [];
  bool isAverage = price.isAverage;

  for (PriceSnippet priceSnippet in subPricesList) {
    if (priceSnippet.priceDate == chosenSubPriceDate) {
      continue;
    }
    updatedSubPricesList.add(priceSnippet);
  }

  if (updatedSubPricesList.length == 1) isAverage = false;

  final updatedPrice = updateCurrentPrice(price.copyWith(
    allPricesWithDateList: updatedSubPricesList,
    isAverage: isAverage,
  ));

  return updatedPrice;
}
