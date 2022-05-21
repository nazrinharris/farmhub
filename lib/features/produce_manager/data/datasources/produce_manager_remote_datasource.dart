// ignore_for_file: avoid_print

import 'package:clock/clock.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/errors/exceptions.dart';
import 'package:farmhub/features/produce_manager/domain/entities/price/price.dart';
import 'package:farmhub/features/produce_manager/domain/helpers.dart';
import 'package:fpdart/fpdart.dart';
import 'package:intl/intl.dart';

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
  Future<Price> editSubPrice(String produceId, String priceId, num newPrice);

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
        .collection('produce')
        .doc(produceId)
        .get()
        .then((value) => value.data());

    final Produce produce = Produce.fromMap(document);

    return produce;
  }

  @override
  Future<List<Produce>> getFirstTenProduce() async {
    final documentsList = await firebaseFirestore
        .collection('produce')
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
    final lastDocument = await firebaseFirestore
        .collection('produce')
        .doc(lastProduceList[lastProduceList.length - 1].produceId)
        .get();

    final documentsList = await firebaseFirestore
        .collection('produce')
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
        .collection('produce')
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
    final lastDocument = await firebaseFirestore
        .collection('produce')
        .doc(lastProduceList[lastProduceList.length - 1].produceId)
        .get();

    final newQueryList = await firebaseFirestore
        .collection('produce')
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

  @override
  Future<List<PriceSnippet>> getAggregatePrices(String produceId) async {
    final DateTime todayTimeStamp = clock.now();
    final int currentYear = todayTimeStamp.year;

    final Map<String, dynamic>? aggregatePricesMap = await firebaseFirestore
        .collection('produce')
        .doc(produceId)
        .collection('prices')
        .doc('aggregate-prices-${currentYear.toString()}')
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
    // Basic setups
    DateTime currentTimeStamp = clock.now();
    String currentDate = DateFormat("dd-MM-yyyy").format(currentTimeStamp);
    String currentYear = DateFormat("yyyy").format(currentTimeStamp);
    Map<String, dynamic> weeklyPrices = {currentDate: currentProducePrice};

    List<String> produceNameSearch = returnProduceNameSearch(produceName);

    // Create produce and store in Firestore
    final String resultingId = await firebaseFirestore.collection('produce').add({
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
          .collection('produce')
          .doc(doc.id)
          .collection('prices')
          .doc("aggregate-prices-$currentYear")
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

  @override
  Future<Unit> editProduce(String produceId, String newProduceName) async {
    // Create search parameters
    List<String> newProduceNameSearch = returnProduceNameSearch(newProduceName);

    await firebaseFirestore.collection('produce').doc(produceId).update({
      "produceName": newProduceName,
      "produceNameSearch": newProduceNameSearch,
    });

    return unit;
  }

  @override
  Future<Unit> deleteProduce(String produceId) async {
    await firebaseFirestore.collection('produce').doc(produceId).update({"isDeleted": true});

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
    num calculatedPrice;

    //! Begin updating Price Document and Aggregate Prices
    // Find out if price document of date [chosenDate] exists
    // If it exists, there should one in the list, if not, it should be empty.
    final chosenDatePriceDoc = await firebaseFirestore
        .collection('produce')
        .doc(produceId)
        .collection('prices')
        .where('priceDate', isEqualTo: chosenDate)
        .get()
        .then((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        return doc.data();
      }).toList();
    });

    calculatedPrice = await returnPriceAndUpdatePriceDocAndAggregate(
      firebaseFirestore: firebaseFirestore,
      chosenTimeStamp: currentTimeStamp,
      produceId: produceId,
      newPrice: currentPrice,
      chosenPriceDoc: chosenDatePriceDoc,
    );

    //! Begin Updating Produce Document
    final Map<String, dynamic> aggregatePricesMap = await firebaseFirestore
        .collection('produce')
        .doc(produceId)
        .collection('prices')
        .doc("aggregate-prices-$chosenYear")
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
    print(weeklyPricesSnippetJSON);

    await firebaseFirestore.collection('produce').doc(produceId).update({
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
    await firebaseFirestore.collection('produce').doc(produceId).update({
      "currentProducePrice": currentProducePrice,
      "previousProducePrice": previousProducePrice,
      "lastUpdateTimeStamp": currentTimeStamp,
    });

    // Retrieve updated produce
    final produce = await firebaseFirestore.collection('produce').doc(produceId).get().then(
          (snapshot) => Produce.fromMap(snapshot.data()),
        );

    return produce;
  }

  @override
  Future<void>? debugMethod(String produceId) async {
    num calculatedPrice = 18;
    String chosenDate = "02-05-2022";
    DateTime currentDate = clock.now();

    final Map<String, dynamic> produce =
        await firebaseFirestore.collection('produce').doc(produceId).get().then(
              (doc) => doc.data()!,
            );
    final Map<String, dynamic> weeklyPrices = produce["weeklyPrices"];
    final List<PriceSnippet> weeklyPricesSnippet = [];
    weeklyPrices.forEach((d, p) => weeklyPricesSnippet.add(PriceSnippet(price: p, priceDate: d)));
    weeklyPricesSnippet.add(PriceSnippet(price: calculatedPrice, priceDate: chosenDate));

    print("Unsorted weeklyPricesSnippet");
    weeklyPricesSnippet.forEach((element) {
      print(element);
    });

    weeklyPricesSnippet.sort((a, b) {
      DateTime aPriceDate = DateFormat("dd-MM-yyyy").parse(a.priceDate);
      DateTime bPriceDate = DateFormat("dd-MM-yyyy").parse(b.priceDate);

      return aPriceDate.compareTo(bPriceDate);
    });

    print("Sorted weeklyPricesSnippet");
    weeklyPricesSnippet.forEach((element) {
      print(element);
    });

    // At this point, weeklyPricesSnippet[0] should represent the lower bound and the
    // last entry of weeklyPricesSnippet should represent the upper bounr.
    final int lastIndex = weeklyPricesSnippet.length - 1;
    DateTime lowerDate = DateFormat("dd-MM-yyyy").parse(weeklyPricesSnippet[0].priceDate);
    DateTime upperDate = DateFormat("dd-MM-yyyy").parse(weeklyPricesSnippet[lastIndex].priceDate);

    Duration diff = upperDate.difference(lowerDate);
    bool isOverAWeek = diff.inDays > 7;

    print("From $lowerDate to $upperDate");
    print("The difference of which is: ${diff.inDays}, that means isOverAWeek = $isOverAWeek");

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
    print(weeklyPricesSnippetMap);

    await firebaseFirestore.collection('produce').doc(produceId).update({
      "weeklyPrices": weeklyPricesSnippetMap,
    });
  }

  @override
  Future<List<Price>> getFirstTenPrices(String produceId) async {
    final queryList = await firebaseFirestore
        .collection('produce')
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
        .collection('produce')
        .doc(produceId)
        .collection('prices')
        .doc(lastPricesList[lastPricesList.length - 1].priceId)
        .get();

    final newQueryList = await firebaseFirestore
        .collection('produce')
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
  Future<Price> editSubPrice(String produceId, String priceId, num newPrice) async {
    final priceDoc = await firebaseFirestore
        .collection('produce')
        .doc(produceId)
        .collection('prices')
        .doc(priceId)
        .get()
        .then((value) => value.data()!);

    await updatePriceDocument(
      firebaseFirestore: firebaseFirestore,
      produceId: produceId,
      newPrice: newPrice,
      chosenTimeStamp: clock.now(),
      chosenPriceDoc: priceDoc,
    );

    throw UnimplementedError();
  }

  @override
  Future<Price> getPrice(String produceId, String priceId) async {
    final Price price = await firebaseFirestore
        .collection('produce')
        .doc(produceId)
        .collection('prices')
        .doc(priceId)
        .get()
        .then((value) => Price.fromMap(value.data()));

    return price;
  }
}

Future<void> createPriceDocument({
  required FirebaseFirestore firebaseFirestore,
  required String produceId,
  required num newPrice,
  required DateTime chosenTimeStamp,
}) async {
  final chosenDate = DateFormat("dd-MM-yyyy").format(chosenTimeStamp);
  final formattedCurrentTimeStamp = DateFormat("yyyy-MM-dd hh:mm:ss aaa").format(clock.now());

  await firebaseFirestore.collection('produce').doc(produceId).collection('prices').add(
    {
      "currentPrice": newPrice,
      "priceDate": chosenDate,
      "priceDateTimeStamp": chosenTimeStamp,
      "isAverage": false,
      "allPricesMap": {formattedCurrentTimeStamp: newPrice}
    },
  ).then((doc) => doc.update({"priceId": doc.id}));
}

Future<void> updatePriceDocument({
  required FirebaseFirestore firebaseFirestore,
  required String produceId,
  required num newPrice,
  required DateTime chosenTimeStamp,
  required Map<String, dynamic> chosenPriceDoc,
}) async {
  final formattedCurrentTimeStamp = DateFormat("yyyy-MM-dd hh:mm:ss aaa").format(chosenTimeStamp);
  num newCurrentPrice = calculateNewPriceAverage(chosenPriceDoc["allPricesMap"], newPrice);

  await firebaseFirestore
      .collection('produce')
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
      .collection('produce')
      .doc(produceId)
      .collection('prices')
      .doc('aggregate-prices-$chosenYear')
      .update({"prices-map.$chosenDate": newPrice});
}

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
      //TODO: Provide Proper Code
      code: "ERR",
      message:
          "Unexpected structure: There should be only one or no document inside [chosenDatePriceDoc]",
      stackTrace: StackTrace.current,
    );
  }
}

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
