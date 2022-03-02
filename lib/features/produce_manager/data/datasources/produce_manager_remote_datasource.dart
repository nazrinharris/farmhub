import 'package:clock/clock.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';

import '../../domain/entities/produce/produce.dart';

abstract class IProduceManagerRemoteDatasource {
  Future<List<Produce>> getFirstTenProduce();

  Future<Produce> createNewProduce({
    required String produceName,
    required num currentProducePrice,
    required String authorId,
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
      print(documentSnapshot.data());
      return Produce.fromMap(documentSnapshot.data());
    }).toList();

    return produceList;
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
      "weeklyPrices": [],
      "authorId": authorId,
    }).then((doc) async {
      doc.update({
        "produceId": doc.id,
      });

      // Create Prices sub-collection
      await firebaseFirestore.collection('produce').doc(doc.id).collection('prices');

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
}
