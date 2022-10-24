// ignore_for_file: unused_local_variable

import 'package:farmhub/features/produce_manager/data/datasources/produce_manager_remote_datasource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../presets/mockings.dart';

void main() {
  late MockFirebaseFirestore mockFirebaseFirestore;
  late MockCollectionReference mockCollectionReference;
  late MockDocumentReference mockDocumentReference;
  late MockDocumentSnapshot mockDocumentSnapshot;
  late MockQuery mockQuery;
  late MockQuerySnapshot mockQuerySnapshot;
  late MockQueryDocumentSnapshot mockQueryDocumentSnapshot;

  late String tproduceName;
  late num tcurrentProducePrice;
  late String tauthorId;

  late ProduceManagerRemoteDatasource remoteDatasource;

  setUp(() {
    mockFirebaseFirestore = MockFirebaseFirestore();
    mockCollectionReference = MockCollectionReference();
    mockDocumentReference = MockDocumentReference();
    mockDocumentSnapshot = MockDocumentSnapshot();
    mockQuery = MockQuery();
    mockQuerySnapshot = MockQuerySnapshot();
    mockQueryDocumentSnapshot = MockQueryDocumentSnapshot();

    tproduceName = "tproduceName";
    tcurrentProducePrice = 99;
    tauthorId = "tauthorId";

    remoteDatasource = ProduceManagerRemoteDatasource(
      firebaseFirestore: mockFirebaseFirestore,
    );
  });

  group('ProduceManagerRemoteDatasource', () {
    void setupQuery() {
      when(() => mockFirebaseFirestore.collection(any()))
          .thenAnswer((_) => mockCollectionReference);
      when(() => mockCollectionReference.doc(any())).thenAnswer((_) => mockDocumentReference);
      when(() => mockDocumentReference.get()).thenAnswer((_) async => mockDocumentSnapshot);
    }

    group('createNewProduce() ->', () {
      test(
        'should perform proper queries',
        () async {
          // arrange
          setupQuery();
          // act
          final result = await remoteDatasource.createNewProduce(
            produceName: tproduceName,
            currentProducePrice: tcurrentProducePrice,
            authorId: tauthorId,
          );
          // assert
          verify(() => remoteDatasource.createNewProduce(
              produceName: tproduceName,
              currentProducePrice: tcurrentProducePrice,
              authorId: tauthorId));
        },
      );
    });
  });
}
