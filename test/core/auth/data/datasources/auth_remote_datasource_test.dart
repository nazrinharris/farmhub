// ignore_for_file: subtype_of_sealed_class

// TODO: Check Mocktail documentation and see how they mock the FirebaseSuite

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/auth/data/datasources/auth_remote_datasource.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../presets/failures_exceptions_presets.dart';

class MockFirebaseFirestore extends Mock implements FirebaseFirestore {}

class MockCollectionReference extends Mock
    implements CollectionReference<Map<String, dynamic>> {}

class MockDocumentReference extends Mock
    implements DocumentReference<Map<String, dynamic>> {}

class MockDocumentSnapshot extends Mock
    implements DocumentSnapshot<Map<String, dynamic>> {}

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockUserCredential extends Mock implements UserCredential {}

class MockUser extends Mock implements User {}

void main() {
  late AuthRemoteDataSource authRemoteDataSource;

  late MockFirebaseFirestore mockFirebaseFirestore;
  late MockCollectionReference mockCollectionReference;
  late MockDocumentReference mockDocumentReference;
  late MockDocumentSnapshot mockDocumentSnapshot;

  late MockFirebaseAuth mockFirebaseAuth;
  late MockUserCredential mockUserCredential;
  late MockUser mockUser;

  setUp(() {
    mockFirebaseFirestore = MockFirebaseFirestore();
    mockCollectionReference = MockCollectionReference();
    mockDocumentReference = MockDocumentReference();
    mockDocumentSnapshot = MockDocumentSnapshot();
    mockFirebaseAuth = MockFirebaseAuth();
    mockUserCredential = MockUserCredential();
    mockUser = MockUser();

    authRemoteDataSource = AuthRemoteDataSource(
      firebaseAuth: mockFirebaseAuth,
      firebaseFirestore: mockFirebaseFirestore,
    );
  });

  group('AuthRemoteDataSource', () {
    group('loginWithEmailAndPassword() ->', () {
      void setupSuccesfullQuery() {
        when(() => mockFirebaseFirestore.collection(any()))
            .thenAnswer((_) => mockCollectionReference);
        when(() => mockCollectionReference.doc(any()))
            .thenAnswer((_) => mockDocumentReference);
        when(() => mockDocumentReference.get())
            .thenAnswer((_) async => mockDocumentSnapshot);
        // when(() => mockDocumentSnapshot.data())
        //     .thenAnswer((_) => tStoraygeUserJSON);
      }

      void setupFailureQuery() {
        when(() => mockFirebaseFirestore.collection(any()))
            .thenAnswer((_) => mockCollectionReference);
        when(() => mockCollectionReference.doc(any()))
            .thenAnswer((_) => mockDocumentReference);
        when(() => mockDocumentReference.get()).thenThrow(tFirebaseException);
        // when(() => mockDocumentSnapshot.data())
        //     .thenAnswer((_) => tStoraygeUserJSON);
      }
    });
  });
}
