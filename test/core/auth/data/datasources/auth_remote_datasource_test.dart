// ignore_for_file: subtype_of_sealed_class

// TODO: Check Mocktail documentation and see how they mock the FirebaseSuite

import 'package:clock/clock.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/auth/data/datasources/auth_remote_datasource.dart';
import 'package:farmhub/core/constants/app_const.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../presets/entities_presets.dart';
import '../../../../presets/failures_exceptions_presets.dart';
import '../../../../presets/mockings.dart';

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

  withClock(Clock.fixed(DateTime.parse("2021-11-28")), () {
    group('AuthRemoteDataSource', () {
      group('loginWithEmailAndPassword() ->', () {
        void setupSuccesfullQuery() {
          when(() => mockFirebaseFirestore.collection(any()))
              .thenAnswer((_) => mockCollectionReference);
          when(() => mockCollectionReference.doc(any()))
              .thenAnswer((_) => mockDocumentReference);
          when(() => mockDocumentReference.get())
              .thenAnswer((_) async => mockDocumentSnapshot);
          when(() => mockDocumentSnapshot.data())
              .thenAnswer((_) => tFarmhubUserJSON);
          when(() => mockFirebaseAuth.signInWithEmailAndPassword(
                  email: any(named: 'email'), password: any(named: 'password')))
              .thenAnswer((_) async => mockUserCredential);
          when(() => mockUserCredential.user).thenReturn(mockUser);
          when(() => mockUser.uid).thenReturn(tUid);
        }

        void setupFailureQuery() {
          when(() => mockFirebaseFirestore.collection(any()))
              .thenAnswer((_) => mockCollectionReference);
          when(() => mockCollectionReference.doc(any()))
              .thenAnswer((_) => mockDocumentReference);
          when(() => mockDocumentReference.get()).thenThrow(tFirebaseException);
          when(() => mockDocumentSnapshot.data())
              .thenAnswer((_) => tFarmhubUserJSON);
          when(() => mockFirebaseAuth.signInWithEmailAndPassword(
                  email: any(named: 'email'), password: any(named: 'password')))
              .thenAnswer((_) async => mockUserCredential);
          when(() => mockUserCredential.user).thenReturn(mockUser);
          when(() => mockUser.uid).thenReturn(tUid);
        }

        void setupNoDocumentQuery() {
          when(() => mockFirebaseFirestore.collection(any()))
              .thenAnswer((_) => mockCollectionReference);
          when(() => mockCollectionReference.doc(any()))
              .thenAnswer((_) => mockDocumentReference);
          when(() => mockDocumentReference.get())
              .thenAnswer((_) async => Future.value());
          // when(() => mockDocumentSnapshot.data())
          //     .thenAnswer((_) => tStoraygeUserJSON);
        }

        test(
          'should request account info to CloudFirestore with the passed in uid',
          () async {
            //arrange
            setupSuccesfullQuery();
            // act
            await authRemoteDataSource.loginWithEmailAndPassword(
              email: tEmail,
              password: tPassword,
            );
            // assert
            verifyInOrder([
              () => mockFirebaseFirestore.collection(FS_USER_COLLECTION),
              () => mockCollectionReference.doc(tUid),
              () => mockDocumentReference.get(),
            ]);
          },
        );

        test(
          'should return FarmhubUser when the login and data request is succesfull',
          () async {
            //arrange
            setupSuccesfullQuery();
            // act
            final result = await authRemoteDataSource.loginWithEmailAndPassword(
              email: tEmail,
              password: tPassword,
            );
            // assert
            expect(result, equals(tFarmhubUser));
          },
        );

        test(
          'should throw a FirebaseException with FIRESTORE_PLUGIN and FS_ERRCODE_JSON_NOT_FOUND when the uid-specific document is not found',
          () async {
            // arrange
            when(() => mockFirebaseFirestore.collection(any()))
                .thenAnswer((_) => mockCollectionReference);
            when(() => mockCollectionReference.doc(any()))
                .thenAnswer((_) => mockDocumentReference);
            when(() => mockDocumentReference.get())
                .thenAnswer((_) async => mockDocumentSnapshot);
            when(() => mockDocumentSnapshot.data()).thenAnswer((_) => tnullMap);
            when(() => mockFirebaseAuth.signInWithEmailAndPassword(
                    email: any(named: 'email'),
                    password: any(named: 'password')))
                .thenAnswer((_) async => mockUserCredential);
            when(() => mockUserCredential.user).thenReturn(mockUser);
            when(() => mockUser.uid).thenReturn(tUid);
            // act
            final call = authRemoteDataSource.loginWithEmailAndPassword;
            // assert
            expect(
                () => call(email: tEmail, password: tPassword),
                throwsA(predicate((e) =>
                    e is FirebaseException &&
                    e.code == FS_ERRCODE_JSON_NOT_FOUND &&
                    e.plugin == FS_PLUGIN &&
                    e.message == 'User document not found.')));
          },
        );

        test(
          'should throw a FirebaseException with UNSPECIFIED_PLUGIN when an error occurs',
          () async {
            // arrange
            setupFailureQuery();
            // act
            final call = authRemoteDataSource.loginWithEmailAndPassword;
            // assert
            expect(
                () => call(email: tEmail, password: tPassword),
                throwsA(predicate((e) =>
                    e is FirebaseException &&
                    e.code == 'CODE' &&
                    e.plugin == UNSPECIFIED_PLUGIN &&
                    e.message == 'tmessage')));
          },
        );
      });

      group('registerWithEmailAndPassword()', () {
        void setupSuccesfullQuery() {
          when(() => mockFirebaseFirestore.collection(any()))
              .thenAnswer((_) => mockCollectionReference);
          when(() => mockCollectionReference.doc(any()))
              .thenAnswer((_) => mockDocumentReference);
          when(() => mockDocumentReference.get())
              .thenAnswer((_) async => mockDocumentSnapshot);
          when(() => mockDocumentReference.set(any()))
              .thenAnswer((_) async => Future.value());
          when(() => mockDocumentReference.collection(any()))
              .thenAnswer((_) => mockCollectionReference);
          when(() => mockDocumentSnapshot.data())
              .thenAnswer((_) => tFarmhubUserJSON);
          when(() => mockFirebaseAuth.createUserWithEmailAndPassword(
                  email: any(named: 'email'), password: any(named: 'password')))
              .thenAnswer((_) async => mockUserCredential);
          when(() => mockUserCredential.user).thenReturn(mockUser);
          when(() => mockUser.uid).thenReturn(tUid);
        }

        test(
          'should return FarmhubUser when registration is succesfull',
          () async {
            // arrange
            setupSuccesfullQuery();
            // act
            final result = await withClock(
                Clock.fixed(DateTime(2021, 11, 28)),
                () async =>
                    await authRemoteDataSource.registerWithEmailAndPassword(
                      email: tEmail,
                      password: tPassword,
                      username: tUsername,
                    ));
            // assert
            expect(result, equals(tFarmhubUser));
          },
        );

        test(
          'should get currentTime and format as yyyy-MM-dd',
          () async {
            // arrange
            setupSuccesfullQuery();
            // act
            final result = await withClock(
                Clock.fixed(DateTime(2021, 11, 28)),
                () async =>
                    await authRemoteDataSource.registerWithEmailAndPassword(
                      email: tEmail,
                      password: tPassword,
                      username: tUsername,
                    ));
            // assert
            verifyInOrder([
              () => clock.now(),
              () => DateFormat('yyyy-MM-dd').format(tCurrentDate)
            ]);
            expect(result, tFarmhubUser);
          },
        );

        test(
          'should query account data to Cloud Firestore when registration is successfull',
          () async {
            // arrange
            setupSuccesfullQuery();
            // act
            await withClock(
                Clock.fixed(DateTime(2021, 11, 28)),
                () async =>
                    await authRemoteDataSource.registerWithEmailAndPassword(
                      email: tEmail,
                      password: tPassword,
                      username: tUsername,
                    ));
            // assert
            verify(() => mockFirebaseFirestore.collection(FS_USER_COLLECTION));
            verify(() => mockCollectionReference.doc(tUid));
            verify(() => mockDocumentReference.set({
                  "uid": tUid,
                  "email": tEmail,
                  "username": tUsername,
                  "createdAt": tCurrentDate,
                }, null));
          },
        );
      });
    });
  });
}
