// ignore_for_file: avoid_print

import 'package:clock/clock.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/util/app_const.dart';
import 'package:farmhub/core/errors/exceptions.dart';
import 'package:farmhub/core/util/printer.dart';
import 'package:farmhub/features/produce_manager/domain/entities/price/price.dart';
import 'package:farmhub/features/produce_manager/data/repository/produce_manager_helpers.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:intl/intl.dart';

import '../../../../core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import '../../domain/entities/produce/produce.dart';

abstract class IProduceManagerRemoteDatasource {
  Future<Produce> getProduce(String produceId);
  Future<List<Produce>> getFirstTenProduce();
  Future<List<Produce>> getNextTenProduce(List<Produce> lastProduceList);
  Future<Produce> createNewProduce({
    required String produceName,
    required num currentProducePrice,
    required String authorId,
  });
  Future<List<Produce>> getProduceAsList(List<String> produceIdList);
  Future<FarmhubUser> addToFavorites(FarmhubUser farmhubUser, String produceId);
  Future<FarmhubUser> removeFromFavorites(FarmhubUser farmhubUser, String produceId);

  Future<Unit> editProduce(String produceId, String newProduceName);
  Future<Unit> deleteProduce(String produceId);
  Future<List<Produce>> searchProduce({required String query});
  Future<List<Produce>> getNextTenSearchProduce({
    required List<Produce> lastProduceList,
    required String query,
  });

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

  Future<void>? debugMethod(String produceId);
}

class ProduceManagerRemoteDatasource implements IProduceManagerRemoteDatasource {
  final FirebaseFirestore firebaseFirestore;

  ProduceManagerRemoteDatasource({
    required this.firebaseFirestore,
  });

  @override
  Future<Produce> getProduce(String produceId) async {
    final document = await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .doc(produceId)
        .get()
        .then((value) => value.data());

    final Produce produce = Produce.fromMap(document);

    return produce;
  }

  @override
  Future<List<Produce>> getFirstTenProduce() async {
    final documentsList = await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .where("isDeleted", isEqualTo: false)
        .limit(10)
        .get()
        .then((snapshot) => snapshot.docs);

    final produceList = documentsList.map((documentSnapshot) {
      return Produce.fromMap(documentSnapshot.data());
    }).toList();

    return produceList;
  }

  @override
  Future<List<Produce>> getNextTenProduce(List<Produce> lastProduceList) async {
    if (lastProduceList.isEmpty) {
      throw ProduceManagerException(
        code: PM_ERR_EMPTY_PREVIOUS_PRODUCE_LIST,
        message: "Something went wrong when retrieving produce...",
        stackTrace: StackTrace.current,
      );
    }

    final lastDocument = await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .doc(lastProduceList[lastProduceList.length - 1].produceId)
        .get();

    final documentsList = await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .startAfterDocument(lastDocument)
        .where("isDeleted", isEqualTo: false)
        .limit(10)
        .get()
        .then((snapshot) => snapshot.docs);

    final List<Produce> newProduceList = documentsList.map((documentSnapshot) {
      return Produce.fromMap(documentSnapshot.data());
    }).toList();

    List<Produce> combinedProduceList = List.from(lastProduceList)..addAll(newProduceList);

    return combinedProduceList;
  }

  @override
  Future<List<Produce>> searchProduce({required String query}) async {
    final queryList = await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .where('produceNameSearch', arrayContains: query.toLowerCase())
        .where("isDeleted", isEqualTo: false)
        .limit(10)
        .get();

    final produceList = queryList.docs.map((documentSnapshot) {
      return Produce.fromMap(documentSnapshot.data());
    }).toList();

    return produceList;
  }

  @override
  Future<List<Produce>> getNextTenSearchProduce(
      {required List<Produce> lastProduceList, required String query}) async {
    if (lastProduceList.isEmpty) {
      // Do nothing
      throw ProduceManagerException(
        code: PM_ERR_EMPTY_PREVIOUS_PRODUCE_LIST,
        message: "Something went wrong when retrieving produce...",
        stackTrace: StackTrace.current,
      );
    } else {
      final lastDocument = await firebaseFirestore
          .collection(FS_GLOBAL_PRODUCE)
          .doc(lastProduceList[lastProduceList.length - 1].produceId)
          .get();

      final newQueryList = await firebaseFirestore
          .collection(FS_GLOBAL_PRODUCE)
          .startAfterDocument(lastDocument)
          .where("isDeleted", isEqualTo: false)
          .where('produceNameSearch', arrayContains: query.toLowerCase())
          .limit(10)
          .get();

      final List<Produce> newProduceList = newQueryList.docs.map((documentSnapshot) {
        return Produce.fromMap(documentSnapshot.data());
      }).toList();

      List<Produce> combinedProduceList = List.from(lastProduceList)..addAll(newProduceList);

      return combinedProduceList;
    }
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
  Future<Produce> createNewProduce({
    required String produceName,
    required num currentProducePrice,
    required String authorId,
  }) async {
    //! Check if a Produce of the same name already exists.
    final result = await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .where("produceName", isEqualTo: produceName)
        .get();
    if (result.docs.isNotEmpty) {
      throw ProduceManagerException(
        code: PM_ERR_SAME_PRODUCE_NAME,
        message: "Sorry, there is already a produce with this name, try using another name.",
        stackTrace: StackTrace.current,
      );
    } else {
      // Basic setups
      DateTime currentTimeStamp = clock.now();
      String currentDate = DateFormat("dd-MM-yyyy").format(currentTimeStamp);
      String currentYear = DateFormat("yyyy").format(currentTimeStamp);
      Map<String, dynamic> weeklyPrices = {currentDate: currentProducePrice};
      List<String> produceNameSearch = returnProduceNameSearch(produceName);

      // Create produce and store in Firestore
      final String resultingId = await firebaseFirestore.collection(FS_GLOBAL_PRODUCE).add({
        "currentProducePrice": {
          "price": currentProducePrice,
          "priceDate": currentDate,
        },
        "previousProducePrice": {
          "price": null,
          "priceDate": null,
        },
        "produceId": "not-yet-updated",
        "produceName": produceName,
        "produceNameSearch": produceNameSearch,
        "weeklyPrices": weeklyPrices,
        "lastUpdateTimeStamp": currentTimeStamp,
        "isDeleted": false,
        "authorId": authorId,
      }).then((doc) async {
        doc.update({
          "produceId": doc.id,
        });

        // Create Prices Sub-Collection and Price Document
        await createPriceDocument(
          firebaseFirestore: firebaseFirestore,
          produceId: doc.id,
          newPrice: currentProducePrice,
          chosenTimeStamp: currentTimeStamp,
        );

        // Create Aggregate Prices
        await firebaseFirestore
            .collection(FS_GLOBAL_PRODUCE)
            .doc(doc.id)
            .collection(FS_AGGREGATE_COLLECTION)
            .doc(FS_AGGREGATE_DOC)
            .set({
          "prices-map": {
            currentDate: currentProducePrice,
          }
        });

        return doc.id;
      });

      // Create [Produce] to return to caller.
      final produce = Produce(
        produceId: resultingId,
        produceName: produceName,
        currentProducePrice: {
          "price": currentProducePrice,
          "updateDate": clock.now().toString(),
        },
        previousProducePrice: {
          "price": null,
          "updateDate": null,
        },
        weeklyPrices: weeklyPrices,
        authorId: authorId,
        lastUpdateTimeStamp: currentTimeStamp,
      );

      return produce;
    }
  }

  @override
  Future<Unit> editProduce(String produceId, String newProduceName) async {
    // Create search parameters
    List<String> newProduceNameSearch = returnProduceNameSearch(newProduceName);

    await firebaseFirestore.collection(FS_GLOBAL_PRODUCE).doc(produceId).update({
      "produceName": newProduceName,
      "produceNameSearch": newProduceNameSearch,
    });

    return unit;
  }

  @override
  Future<Unit> deleteProduce(String produceId) async {
    await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .doc(produceId)
        .update({"isDeleted": true});

    return unit;
  }

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
    final chosenYear = DateFormat("yyyy").format(currentTimeStamp);

    //! Begin updating Price Document and Aggregate Prices
    // Find out if price document of date [chosenDate] exists
    // If it exists, there should one in the list, if not, it should be empty.
    final chosenDatePriceDoc = await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .doc(produceId)
        .collection('prices')
        .where('priceDate', isEqualTo: chosenDate)
        .get()
        .then((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        return doc.data();
      }).toList();
    });

    await returnPriceAndUpdatePriceDocAndAggregate(
      firebaseFirestore: firebaseFirestore,
      chosenTimeStamp: currentTimeStamp,
      produceId: produceId,
      newPrice: currentPrice,
      chosenPriceDoc: chosenDatePriceDoc,
    );

    //! Begin Updating Produce Document
    final Map<String, dynamic> aggregatePricesMap = await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .doc(produceId)
        .collection(FS_AGGREGATE_COLLECTION)
        .doc("aggregatePrices$chosenYear")
        .get()
        .then((value) => value.data()!);

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

    await firebaseFirestore.collection(FS_GLOBAL_PRODUCE).doc(produceId).update({
      "weeklyPrices": weeklyPricesSnippetJSON,
    });

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
    await firebaseFirestore.collection(FS_GLOBAL_PRODUCE).doc(produceId).update({
      "currentProducePrice": currentProducePrice,
      "previousProducePrice": previousProducePrice,
      "lastUpdateTimeStamp": currentTimeStamp,
    });

    // Retrieve updated produce
    final produce = await firebaseFirestore.collection(FS_GLOBAL_PRODUCE).doc(produceId).get().then(
          (snapshot) => Produce.fromMap(snapshot.data()),
        );

    return produce;
  }

  @override
  Future<void>? debugMethod(String produceId) async {
    num calculatedPrice = 18;
    String chosenDate = "02-05-2022";

    final Map<String, dynamic> produce =
        await firebaseFirestore.collection(FS_GLOBAL_PRODUCE).doc(produceId).get().then(
              (doc) => doc.data()!,
            );
    final Map<String, dynamic> weeklyPrices = produce["weeklyPrices"];
    final List<PriceSnippet> weeklyPricesSnippet = [];
    weeklyPrices.forEach((d, p) => weeklyPricesSnippet.add(PriceSnippet(price: p, priceDate: d)));
    weeklyPricesSnippet.add(PriceSnippet(price: calculatedPrice, priceDate: chosenDate));

    debugPrint("Unsorted weeklyPricesSnippet");
    for (PriceSnippet snippet in weeklyPricesSnippet) {
      debugPrint(snippet.toString());
    }

    weeklyPricesSnippet.sort((a, b) {
      DateTime aPriceDate = DateFormat("dd-MM-yyyy").parse(a.priceDate);
      DateTime bPriceDate = DateFormat("dd-MM-yyyy").parse(b.priceDate);

      return aPriceDate.compareTo(bPriceDate);
    });

    debugPrint("Sorted weeklyPricesSnippet");
    for (PriceSnippet snippet in weeklyPricesSnippet) {
      debugPrint(snippet.toString());
    }

    // At this point, weeklyPricesSnippet[0] should represent the lower bound and the
    // last entry of weeklyPricesSnippet should represent the upper bounr.
    final int lastIndex = weeklyPricesSnippet.length - 1;
    DateTime lowerDate = DateFormat("dd-MM-yyyy").parse(weeklyPricesSnippet[0].priceDate);
    DateTime upperDate = DateFormat("dd-MM-yyyy").parse(weeklyPricesSnippet[lastIndex].priceDate);

    Duration diff = upperDate.difference(lowerDate);
    bool isOverAWeek = diff.inDays > 7;

    debugPrint("From $lowerDate to $upperDate");
    debugPrint("The difference of which is: ${diff.inDays}, that means isOverAWeek = $isOverAWeek");

    if (isOverAWeek == true) {
      assert(diff.inDays > 8,
          "There should at max, be 8 prices within [weeklyPricesSnippet] but there are ${diff.inDays}");
      weeklyPricesSnippet.removeAt(0);
    }

    // At this point, [weeklyPricesSnippet] should have been fully updated. Convert it to map and update
    Map<String, dynamic> weeklyPricesSnippetMap = {};
    for (PriceSnippet priceSnippet in weeklyPricesSnippet) {
      weeklyPricesSnippetMap[priceSnippet.priceDate] = priceSnippet.price;
    }
    debugPrint(weeklyPricesSnippetMap.toString());

    await firebaseFirestore.collection(FS_GLOBAL_PRODUCE).doc(produceId).update({
      "weeklyPrices": weeklyPricesSnippetMap,
    });
  }

  @override
  Future<List<Price>> getFirstTenPrices(String produceId) async {
    final queryList = await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .doc(produceId)
        .collection('prices')
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
        .collection('prices')
        .doc(lastPricesList[lastPricesList.length - 1].priceId)
        .get();

    final newQueryList = await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .doc(produceId)
        .collection('prices')
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
  Future<Price> editSubPrice(
    String produceId,
    String priceId,
    num newPrice,
    String subPriceDate,
  ) async {
    /// Retrieve the [Price] document and return a [Price] object
    final Price price = await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .doc(produceId)
        .collection('prices')
        .doc(priceId)
        .get()
        .then((value) => Price.fromMap(value.data()!));

    /// Retrieve the [Produce] document and return a [Produce] object
    final Produce produce = await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .doc(produceId)
        .get()
        .then((value) => Produce.fromMap(value.data()!));

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

    /// [updatedSubPrice]'s name might be a bit misleading, but here, it means the [Price] object
    /// supplied, but with an updated [allPricesWithDateList]
    ///
    /// But the [currentPrice] for the [Price] document has not yet been updated, therefore
    /// updateCurrentPrice() is called.
    final Price updatedSubPrice = price.copyWith(allPricesWithDateList: updatedSubPricesList);
    final Price updatedPrice = updateCurrentPrice(updatedSubPrice);

    // At this point, [updatedPrice] should be the most recent.
    // Update Price Document
    await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .doc(produceId)
        .collection('prices')
        .doc(priceId)
        .update(
          Price.toMap(updatedPrice),
        );
    // Update Aggregate Price
    await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .doc(produceId)
        .collection(FS_AGGREGATE_COLLECTION)
        .doc('aggregatePrices$chosenYear')
        .update({
      "prices-map.$formattedAggregatePriceDate": updatedPrice.currentPrice,
    });

    // This uses the retrieved produce last updated time stamp because realistically, we want
    // [lastUpdateTimeStamp] to be like "last price added".
    await updateProducePrices(
      firebaseFirestore: firebaseFirestore,
      produceId: produceId,
      lastUpdateTimeStamp: produce.lastUpdateTimeStamp,
    );

    return updatedPrice;
  }

  @override
  Future<Price> getPrice(String produceId, String priceId) async {
    final Price price = await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .doc(produceId)
        .collection('prices')
        .doc(priceId)
        .get()
        .then((value) => Price.fromMap(value.data()));

    return price;
  }

  @override
  Future<bool> deleteSubPrice(String produceId, String priceId, String subPriceDate) async {
    bool isPriceDocDeleted = false;

    final Price price = await firebaseFirestore
        .collection(FS_GLOBAL_PRODUCE)
        .doc(produceId)
        .collection('prices')
        .doc(priceId)
        .get()
        .then((value) => Price.fromMap(value.data()));
    final priceYear = DateFormat("yyyy").format(price.priceDateTimeStamp);

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
      // Note that this checks if it is the last price of that year.
      final allPricesList = await firebaseFirestore
          .collection(FS_GLOBAL_PRODUCE)
          .doc(produceId)
          .collection(FS_AGGREGATE_COLLECTION)
          .doc("aggregatePrices$priceYear")
          .get()
          .then((value) => PriceSnippet.fromAggregateToList(value.data()!));
      if (allPricesList.length == 1) {
        throw ProduceManagerException(
          code: PM_ERR_LAST_PRICE,
          message: "This is the last price of the Produce, so it cannot be deleted.",
          stackTrace: StackTrace.current,
        );
      }

      //! Delete [Price] from [aggregatePrices]
      await firebaseFirestore
          .collection(FS_GLOBAL_PRODUCE)
          .doc(produceId)
          .collection(FS_AGGREGATE_COLLECTION)
          .doc('aggregatePrices$priceYear')
          .update({"prices-map.${price.priceDate}": FieldValue.delete()});
      //! Delete [Price] document
      await firebaseFirestore
          .collection(FS_GLOBAL_PRODUCE)
          .doc(produceId)
          .collection('prices')
          .doc(priceId)
          .delete();
      //! Update [Produce]
      updateProducePrices(
        firebaseFirestore: firebaseFirestore,
        produceId: produceId,
      );

      isPriceDocDeleted = true;
    } else {
      //? This means that there are at least one [subPrice] left.
      //? steps: Update [Price]'s [currentPrice] and [allPrices], Update [aggregatePrices], Update [Produce]

      //! Update [Price]'s [currentPrice] and [allPrices]
      final updatedPrice = _deleteSubPriceAndUpdatePrice(price, subPriceDate);
      await firebaseFirestore
          .collection(FS_GLOBAL_PRODUCE)
          .doc(produceId)
          .collection('prices')
          .doc(priceId)
          .update(
            Price.toMap(updatedPrice),
          );
      //! Update [aggregatePrices]
      await firebaseFirestore
          .collection(FS_GLOBAL_PRODUCE)
          .doc(produceId)
          .collection(FS_AGGREGATE_COLLECTION)
          .doc('aggregatePrices$priceYear')
          .update({"prices-map.${price.priceDate}": updatedPrice.currentPrice});
      //! Update [Produce]
      updateProducePrices(
        firebaseFirestore: firebaseFirestore,
        produceId: produceId,
      );
    }

    return isPriceDocDeleted;
  }

  @override
  Future<List<Produce>> getProduceAsList(List<String> produceIdList) async {
    List<Produce> produceList = [];

    for (String produceId in produceIdList) {
      final Map<String, dynamic>? doc = await firebaseFirestore
          .collection(FS_GLOBAL_PRODUCE)
          .doc(produceId)
          .get()
          .then((value) => value.data());
      if (doc == null || doc["isDeleted"] == true) {
        continue;
      } else {
        final Produce produce = Produce.fromMap(doc);
        produceList.add(produce);
      }
    }

    return produceList;
  }

  @override
  Future<FarmhubUser> addToFavorites(FarmhubUser farmhubUser, String produceId) async {
    final now = clock.now();
    String formattedDateAdded = DateFormat("yyyy-MM-dd hh:mm:ss aaa").format(now);

    await firebaseFirestore.collection('users').doc(farmhubUser.uid).update({
      "produceFavoritesMap.$produceId": formattedDateAdded,
    }).then((_) {
      for (ProduceFavorite favorite in farmhubUser.produceFavoritesList) {
        if (favorite.produceId == produceId) {
          throw ProduceManagerException(
            code: 'PM-Add-Favorite-Should-Not-Duplicate',
            message:
                "Add operation of a produce to a favorites list, but it already exists, this should never happen.",
            stackTrace: StackTrace.current,
          );
        }
      }
      farmhubUser.produceFavoritesList.add(ProduceFavorite(produceId: produceId, dateAdded: now));
    });

    return farmhubUser;
  }

  @override
  Future<FarmhubUser> removeFromFavorites(FarmhubUser farmhubUser, String produceId) async {
    await firebaseFirestore.collection('users').doc(farmhubUser.uid).update({
      "produceFavoritesMap.$produceId": FieldValue.delete(),
    }).then((_) {
      ProduceFavorite? produceFavoriteToRemove;

      for (ProduceFavorite favorite in farmhubUser.produceFavoritesList) {
        if (favorite.produceId == produceId) {
          produceFavoriteToRemove = favorite;
          break;
        }
      }

      if (produceFavoriteToRemove != null) {
        farmhubUser.produceFavoritesList.remove(produceFavoriteToRemove);
      } else {
        throw ProduceManagerException(
          code: PM_ERR_DELETE_NONEXISTENT_FAVORITE,
          message:
              "Removal operation of a certain produce from favorites, but it doesn't exist to begin with.",
          stackTrace: StackTrace.current,
        );
      }
    });

    return farmhubUser;
  }
}

/// This method will update [currentProducePrice], [previousProducePrice] and [weeklyPrices].
///
/// Note that this method assumes [aggregatePrices] is up-to-date. So update aggregate first before
/// using this method.
Future<void> updateProducePrices({
  required FirebaseFirestore firebaseFirestore,
  required String produceId,
  DateTime? lastUpdateTimeStamp,
}) async {
  final String chosenYear = DateFormat("yyyy").format(clock.now());

  final Map<String, dynamic> aggregatePricesMap = await firebaseFirestore
      .collection(FS_GLOBAL_PRODUCE)
      .doc(produceId)
      .collection(FS_AGGREGATE_COLLECTION)
      .doc("aggregatePrices$chosenYear")
      .get()
      .then((value) => value.data()!);

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
  await firebaseFirestore.collection(FS_GLOBAL_PRODUCE).doc(produceId).update(mapUsed);
}

Future<void> createPriceDocument({
  required FirebaseFirestore firebaseFirestore,
  required String produceId,
  required num newPrice,
  required DateTime chosenTimeStamp,
}) async {
  final chosenDate = DateFormat("dd-MM-yyyy").format(chosenTimeStamp);
  final formattedCurrentTimeStamp = DateFormat("yyyy-MM-dd hh:mm:ss aaa").format(clock.now());

  await firebaseFirestore.collection(FS_GLOBAL_PRODUCE).doc(produceId).collection('prices').add(
    {
      "currentPrice": newPrice,
      "priceDate": chosenDate,
      "priceDateTimeStamp": chosenTimeStamp,
      "isAverage": false,
      "allPricesMap": {formattedCurrentTimeStamp: newPrice}
    },
  ).then((doc) => doc.update({"priceId": doc.id}));
}

/// These [chosenTimeStamp] and [subPriceDate] must not both be specified. Only one.
///
/// Both of those variables are referring to a specific [subPrice]
Future<void> updatePriceDocument({
  required FirebaseFirestore firebaseFirestore,
  required String produceId,
  required num newPrice,
  required Map<String, dynamic> chosenPriceDoc,
  // Refers to a specific [subPrice]
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

  num newCurrentPrice = calculateNewPriceAverage(chosenPriceDoc["allPricesMap"], newPrice);

  await firebaseFirestore
      .collection(FS_GLOBAL_PRODUCE)
      .doc(produceId)
      .collection('prices')
      .doc(chosenPriceDoc["priceId"])
      .update({
    "currentPrice": newCurrentPrice,
    "isAverage": true,
    "allPricesMap.$formattedCurrentTimeStamp": newPrice,
  });
}

/// The [newPrice] field must be the calculated average of [allPricesMap].
Future<void> updateAggregatePrices({
  required FirebaseFirestore firebaseFirestore,
  required String produceId,
  required num newPrice,
  required DateTime chosenTimeStamp,
}) async {
  final chosenDate = DateFormat("dd-MM-yyyy").format(chosenTimeStamp);
  final chosenYear = DateFormat("yyyy").format(chosenTimeStamp);

  await firebaseFirestore
      .collection(FS_GLOBAL_PRODUCE)
      .doc(produceId)
      .collection(FS_AGGREGATE_COLLECTION)
      .doc('aggregatePrices$chosenYear')
      .update({"prices-map.$chosenDate": newPrice});
}

/// Note that this is a CONSTRUCTIVE method!
///
/// This methods updates the remote [Price] doucment and Aggregate Prices.
/// If the [chosenPriceDoc] is empty, it will create a new [Price] document in remote.
///
/// If the [chosenPriceDoc] is not empty, (the length MUST be one, because there should
/// only be one [Price] document to represent a specific date), the [newPrice] will
/// be considered as an addition to the existing prices,
Future<num> returnPriceAndUpdatePriceDocAndAggregate({
  required FirebaseFirestore firebaseFirestore,
  required DateTime chosenTimeStamp,
  required String produceId,
  required num newPrice,
  required List<Map<String, dynamic>?> chosenPriceDoc,
}) async {
  if (chosenPriceDoc.isEmpty) {
    // This means the price for the chosen date does not exist.
    await createPriceDocument(
      firebaseFirestore: firebaseFirestore,
      produceId: produceId,
      newPrice: newPrice,
      chosenTimeStamp: chosenTimeStamp,
    );

    await updateAggregatePrices(
      firebaseFirestore: firebaseFirestore,
      produceId: produceId,
      newPrice: newPrice,
      chosenTimeStamp: chosenTimeStamp,
    );

    return newPrice;
  } else if (chosenPriceDoc.length == 1) {
    // This means the price for the chosen date indeed exists.
    num calculatedPrice = calculateNewPriceAverage(chosenPriceDoc[0]!["allPricesMap"], newPrice);

    await updatePriceDocument(
      firebaseFirestore: firebaseFirestore,
      produceId: produceId,
      newPrice: newPrice,
      chosenTimeStamp: chosenTimeStamp,
      chosenPriceDoc: chosenPriceDoc[0]!,
    );

    await updateAggregatePrices(
      firebaseFirestore: firebaseFirestore,
      produceId: produceId,
      newPrice: calculatedPrice,
      chosenTimeStamp: chosenTimeStamp,
    );

    return calculatedPrice;
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

/// This method expects [newPrice] to be a whole new sub-price, as in, it cannot be used to "edit"
/// a price.
///
/// Basically, only use this when you want to add a new price to the [subPrice] list and calculate
/// the new average price. Though this method doesn't update [allPricesMap], but simply returns
/// the correct average price.
num calculateNewPriceAverage(Map<String, dynamic> allPricesMap, num newPrice) {
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

/// This method generates a list of search cases for the given name. Cases for the whole phrase, as
/// well as a word by word basis.
List<String> returnProduceNameSearch(String produceName) {
  List<String> produceNameSearch = [];
  String temp = "";
  for (int i = 0; i < produceName.length; i++) {
    temp = temp + produceName[i].toLowerCase();
    produceNameSearch.add(temp);
  }
  // Create per-word basis search parameters
  List<String> listOfWords = produceName.split(" ");
  temp = "";
  if (listOfWords.length > 1) {
    for (String word in listOfWords) {
      for (int i = 0; i < word.length; i++) {
        temp = temp + word[i].toLowerCase();
        produceNameSearch.add(temp);
      }
      temp = "";
    }
  }

  return produceNameSearch;
}

/// This method will update the [newPrice] associated with [chosenSubPriceDate] and return
/// an updated [Price].
Price editSubPrice(Price price, num newPrice, String chosenSubPriceDate) {
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
