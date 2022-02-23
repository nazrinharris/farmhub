import 'package:farmhub/features/produce_manager/data/datasources/produce_manager_remote_datasource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../presets/mockings.dart';

void main() {
  late MockFirebaseFirestore mockFirebaseFirestore;
  late MockCollectionReference mockCollectionReference;
  late MockDocumentReference mockDocumentReference;
  late MockQuery mockQuery;
  late MockQuerySnapshot mockQuerySnapshot;
  late MockQueryDocumentSnapshot mockQueryDocumentSnapshot;

  late ProduceManagerRemoteDatasource remoteDatasource;

  setUp(() {
    mockFirebaseFirestore = MockFirebaseFirestore();
    mockCollectionReference = MockCollectionReference();
    mockQuery = MockQuery();
    mockQuerySnapshot = MockQuerySnapshot();
    mockQueryDocumentSnapshot = MockQueryDocumentSnapshot();

    remoteDatasource = ProduceManagerRemoteDatasource(
      firebaseFirestore: mockFirebaseFirestore,
    );
  });

  group('ProduceManagerRemoteDatasource', () {
    group('getFirstTenProduce() ->', () {
      test(
        'should return List<Produce> when query is succesfull',
        () async {
          // arrange

          // act

          // assert
        },
      );
    });
  });
}
