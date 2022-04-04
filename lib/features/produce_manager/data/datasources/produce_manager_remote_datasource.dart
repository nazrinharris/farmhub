import 'package:clock/clock.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/features/produce_manager/domain/entities/price/price.dart';
import 'package:clock/clock.dart';

import '../../domain/entities/produce/produce.dart';

abstract class IProduceManagerRemoteDatasource {
  Future<List<Produce>> getFirstTenProduce();

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
    // Create produce and store in Firestore
    final String resultingId = await firebaseFirestore.collection('produce').add({
      "currentProducePrice": {
        "price": currentProducePrice,
        "updateDate": clock.now().toString(),
      },
      "previousProducePrice": {
        "price": null,
        "updateDate": null,
      },
      "produceId": "0000",
      "produceName": produceName,
      "weeklyPrices": [currentProducePrice],
      "authorId": authorId,
    }).then((doc) async {
      doc.update({
        "produceId": doc.id,
      });

      // Create Prices sub-collection
      firebaseFirestore.collection('produce').doc(doc.id).collection('prices');

      return doc.id;
    });

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
      weeklyPrices: [],
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

    // Get most recent [currentProducePrice] and [weeklyPrice]
    final Map<String, dynamic> staleProduce =
        await firebaseFirestore.collection('produce').doc(produceId).get().then(
              (doc) => doc.data()!,
            );
    final Map<String, dynamic> staleCurrentProducePrice = staleProduce["currentProducePrice"];
    final List<dynamic> weeklyPrices = staleProduce["weeklyPrices"];

    // Update Prices Collection
    await firebaseFirestore.collection('produce').doc(produceId).collection('prices').add(
      {
        "currentPrice": currentPrice,
        "editHistory": [
          {
            "price": currentPrice,
            "editDate": currentTimeStamp,
          }
        ],
        "updateDate": currentTimeStamp,
      },
    ).then((doc) => doc.update({"priceId": doc.id}));

    // Locally process and update [weeklyPrices]
    weeklyPrices.insert(0, currentPrice);
    // Remove last price if list is too long.
    if (weeklyPrices.length > 7) {
      weeklyPrices.removeLast();
    }

    // Update [currentProducePrice], [previousProducePrice] and [weeklyPrices]
    await firebaseFirestore.collection('produce').doc(produceId).update(
      {
        "currentProducePrice": {
          "price": currentPrice,
          "updateDate": currentTimeStamp,
        },
        "previousProducePrice": staleCurrentProducePrice,
        "weeklyPrices": weeklyPrices,
      },
    );

    // Retrieve updated produce
    final produce = await firebaseFirestore.collection('produce').doc(produceId).get().then(
          (snapshot) => Produce.fromMap(snapshot.data()),
        );

    return produce;
  }
}
