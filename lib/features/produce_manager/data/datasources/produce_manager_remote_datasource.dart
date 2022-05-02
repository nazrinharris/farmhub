// ignore_for_file: avoid_print

import 'package:clock/clock.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/errors/exceptions.dart';
import 'package:farmhub/features/produce_manager/domain/entities/price/price.dart';
import 'package:intl/intl.dart';

import '../../domain/entities/produce/produce.dart';

abstract class IProduceManagerRemoteDatasource {
  Future<List<Produce>> getFirstTenProduce();

  Future<List<Produce>> getNextTenProduce(List<Produce> lastProduceList);

  Future<Produce> createNewProduce({
    required String produceName,
    required num currentProducePrice,
    required String authorId,
  });

  Future<List<Price>> getOneWeekPrices(String pid);

  Future<Produce> addNewPrice({
    required String produceId,
    required num currentPrice,
  });

  Future<List<Produce>> searchProduce({required String query});

  Future<List<Produce>> getNextTenSearchProduce({
    required List<Produce> lastProduceList,
    required String query,
  });

  Future<void>? debugMethod(String produceId);
}

class ProduceManagerRemoteDatasource implements IProduceManagerRemoteDatasource {
  final FirebaseFirestore firebaseFirestore;

  ProduceManagerRemoteDatasource({
    required this.firebaseFirestore,
  });

  @override
  Future<List<Produce>> getFirstTenProduce() async {
    final documentsList = await firebaseFirestore
        .collection('produce')
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
  Future<List<Price>> getOneWeekPrices(String pid) async {
    final documentsList = await firebaseFirestore
        .collection('produce')
        .doc(pid)
        .collection('prices')
        .limit(7)
        .get()
        .then((querySnapshot) => querySnapshot.docs);

    final priceList = documentsList.map((documentSnapshot) {
      return Price.fromMap(documentSnapshot.data());
    }).toList();

    return priceList;
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

    // Create search parameters
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
      "authorId": authorId,
    }).then((doc) async {
      doc.update({
        "produceId": doc.id,
      });

      // Create Prices Sub-Collection and Price Document
      await firebaseFirestore.collection('produce').doc(doc.id).collection('prices').add(
        {
          "currentPrice": currentProducePrice,
          "priceDate": currentDate,
          "allPrices": [currentProducePrice],
          "isAverage": false,
        },
      ).then((doc) => doc.update({"priceId": doc.id}));

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
    );

    return produce;
  }

  @override
  Future<Produce> addNewPrice({
    required String produceId,
    required num currentPrice,
  }) async {
    final currentTimeStamp = clock.now();
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

    if (chosenDatePriceDoc.isEmpty) {
      // Begin process of creating a new Price Document
      print("There is no Price Document for date $chosenDate");

      // Update Price Document
      await firebaseFirestore.collection('produce').doc(produceId).collection('prices').add(
        {
          "currentPrice": currentPrice,
          "priceDate": chosenDate,
          "allPrices": [currentPrice],
          "isAverage": false,
        },
      ).then((doc) => doc.update({"priceId": doc.id}));

      // Update Aggregate Prices
      await firebaseFirestore
          .collection('produce')
          .doc(produceId)
          .collection('prices')
          .doc('aggregate-prices-$chosenYear')
          .update({"prices-map.$chosenDate": currentPrice});

      // Set relevant variables
      calculatedPrice = currentPrice;
    } else if (chosenDatePriceDoc.length == 1) {
      // Begin process of updating the existing Price Document
      print("There already exists a Price Document for date $chosenDate");
      String priceId = chosenDatePriceDoc[0]["priceId"];
      List<num> newAllPrices = List.from(chosenDatePriceDoc[0]["allPrices"]);
      newAllPrices.add(currentPrice);

      // Calculate averaged price
      num tempSum = 0;
      num newCurrentPrice = 0;
      for (num price in newAllPrices) {
        tempSum = tempSum + price;
      }
      newCurrentPrice = tempSum / newAllPrices.length;

      // Update Price Document
      await firebaseFirestore
          .collection('produce')
          .doc(produceId)
          .collection('prices')
          .doc(priceId)
          .update({
        "allPrices": newAllPrices,
        "currentPrice": newCurrentPrice,
        "isAverage": true,
      });

      // Update Aggregate Prices
      await firebaseFirestore
          .collection('produce')
          .doc(produceId)
          .collection('prices')
          .doc('aggregate-prices-$chosenYear')
          .update({"prices-map.$chosenDate": newCurrentPrice});

      // Set relevant variables
      calculatedPrice = newCurrentPrice;
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

    //! Begin Updating Produce Document
    // From here, we will be updating [currentProducePrice], [previousProducePrice], and [weeklyPrices]
    // Get most recent [currentProducePrice] and [weeklyPrice]
    final Map<String, dynamic> staleProduce =
        await firebaseFirestore.collection('produce').doc(produceId).get().then(
              (doc) => doc.data()!,
            );
    final Map<String, dynamic> weeklyPrices = staleProduce["weeklyPrices"];

    //! Start updating [weeklyPrices]
    final List<PriceSnippet> weeklyPricesSnippet = [];
    // Convert the map to list
    weeklyPrices.forEach((d, p) => weeklyPricesSnippet.add(PriceSnippet(price: p, priceDate: d)));
    // Check if price for the same date exists. If so remove.
    final PriceSnippet newSnippet = PriceSnippet(price: calculatedPrice, priceDate: chosenDate);
    bool isThereAnEqualDate = false;
    int index = 0;
    for (PriceSnippet snippet in weeklyPricesSnippet) {
      if (snippet.priceDate == newSnippet.priceDate) {
        isThereAnEqualDate = true;
        break;
      }
      index++;
    }
    if (isThereAnEqualDate) weeklyPricesSnippet.removeAt(index);
    weeklyPricesSnippet.add(newSnippet);

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

    // At this point, we know that [weeklyPricesSnippet] date range between upper and lower is over a week.
    // And as such, we need to remove the price(s) documents of all those more than a week old.
    if (isOverAWeek == true) {
      assert(weeklyPricesSnippet.length <= 8,
          "There should at max, be 8 prices within [weeklyPricesSnippet] but there are ${weeklyPricesSnippet.length}");
      weeklyPricesSnippet.removeWhere((priceSnippet) {
        DateTime snippetDate = DateFormat("dd-MM-yyyy").parse(priceSnippet.priceDate);
        Duration diff = upperDate.difference(snippetDate);

        if (diff.inDays > 7) {
          return true;
        } else {
          return false;
        }
      });
    }

    // At this point, [weeklyPricesSnippet] should have been fully updated. Convert it to map and update
    Map<String, dynamic> weeklyPricesSnippetJSON = {};
    for (PriceSnippet priceSnippet in weeklyPricesSnippet) {
      weeklyPricesSnippetJSON[priceSnippet.priceDate] = priceSnippet.price;
    }
    print(weeklyPricesSnippetJSON);

    await firebaseFirestore.collection('produce').doc(produceId).update({
      "weeklyPrices": weeklyPricesSnippetJSON,
    });

    // There can be a case where [currentProducePrice] is being updated while [previousProducePrice] has
    // not yet existed.
    Map<String, dynamic> previousProducePrice = {};
    Map<String, dynamic> currentProducePrice = {};
    if (weeklyPricesSnippet.length == 1) {
      currentProducePrice = {
        "price": weeklyPricesSnippet[weeklyPricesSnippet.length - 1].price,
        "priceDate": weeklyPricesSnippet[weeklyPricesSnippet.length - 1].priceDate,
      };
      previousProducePrice = {
        "price": null,
        "priceDate": null,
      };
    } else {
      currentProducePrice = {
        "price": weeklyPricesSnippet[weeklyPricesSnippet.length - 1].price,
        "priceDate": weeklyPricesSnippet[weeklyPricesSnippet.length - 1].priceDate,
      };
      previousProducePrice = {
        "price": weeklyPricesSnippet[weeklyPricesSnippet.length - 2].price,
        "priceDate": weeklyPricesSnippet[weeklyPricesSnippet.length - 2].priceDate,
      };
    }

    //! Start updating [currentProducePrice] and [previousProducePrice] based on [weeklyPrices]
    await firebaseFirestore.collection('produce').doc(produceId).update({
      "currentProducePrice": currentProducePrice,
      "previousProducePrice": previousProducePrice,
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
}
