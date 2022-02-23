import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/entities/produce/produce.dart';

abstract class IProduceManagerRemoteDatasource {
  Future<List<Produce>> getFirstTenProduce();
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

    final produceList =
        documentsList.map((documentSnapshot) => Produce.fromMap(documentSnapshot.data())).toList();

    return produceList;
  }
}
