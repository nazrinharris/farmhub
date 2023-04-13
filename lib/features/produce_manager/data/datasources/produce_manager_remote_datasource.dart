// ignore_for_file: avoid_print

import 'package:clock/clock.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/util/app_const.dart';
import 'package:farmhub/core/errors/exceptions.dart';
import 'package:farmhub/core/util/printer.dart';
import 'package:farmhub/features/produce_manager/data/datasources/produce_prices_remote_datasource.dart';
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

  Future<void>? debugMethod(String produceId);
}

class ProduceManagerRemoteDatasource implements IProduceManagerRemoteDatasource {
  final FirebaseFirestore firebaseFirestore;

  ProduceManagerRemoteDatasource({required this.firebaseFirestore});

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
      DateTime currentTimeStamp = clock.now();
      String currentDate = DateFormat("dd-MM-yyyy").format(currentTimeStamp);
      Map<String, dynamic> weeklyPrices = {currentDate: currentProducePrice};
      List<String> produceNameSearch = returnProduceNameSearch(produceName);

      // Start a transaction
      return firebaseFirestore.runTransaction((transaction) async {
        // Create the new produce document
        DocumentReference produceDocRef = firebaseFirestore.collection(FS_GLOBAL_PRODUCE).doc();

        transaction.set(produceDocRef, {
          "currentProducePrice": {
            "price": currentProducePrice,
            "priceDate": currentDate,
          },
          "previousProducePrice": {
            "price": null,
            "priceDate": null,
          },
          "produceId": produceDocRef.id,
          "produceName": produceName,
          "produceNameSearch": produceNameSearch,
          "weeklyPrices": weeklyPrices,
          "lastUpdateTimeStamp": currentTimeStamp,
          "isDeleted": false,
          "authorId": authorId,
        });

        // Create the price document in the Prices sub-collection
        await createPriceDocumentTransaction(
          transaction: transaction,
          firebaseFirestore: firebaseFirestore,
          produceId: produceDocRef.id,
          newPrice: currentProducePrice,
          chosenTimeStamp: currentTimeStamp,
        );

        // Create the aggregate prices document
        DocumentReference aggregateDocRef =
            produceDocRef.collection(FS_AGGREGATE_COLLECTION).doc(FS_AGGREGATE_DOC);

        transaction.set(aggregateDocRef, {
          "prices-map": {
            currentDate: currentProducePrice,
          },
        });

        print(transaction);

        // Return the created Produce object
        return Produce(
          produceId: produceDocRef.id,
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
      });
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
