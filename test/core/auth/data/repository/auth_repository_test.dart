// ignore_for_file: prefer_const_constructors

import 'package:farmhub/core/auth/data/datasources/auth_local_datasource.dart';
import 'package:farmhub/core/auth/data/datasources/auth_remote_datasource.dart';
import 'package:farmhub/core/auth/data/repository/auth_repository.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:farmhub/core/network/network_info.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRemoteDataSource extends Mock implements IAuthRemoteDataSource {}

class MockAuthLocalDataSource extends Mock implements IAuthLocalDataSource {}

class MockNetworkInfo extends Mock implements INetworkInfo {}

class FakeFarmhubUser extends Fake implements FarmhubUser {}

final FarmhubUser tFarmhubUser = FarmhubUser(
  uid: 'tuid',
  email: 'temail@temail.temail',
  createdAt: '11/11/1111',
);

final FirebaseAuthException tFirebaseAuthException = FirebaseAuthException(
  code: 'tcode',
  message: 'tmessage',
);

final FirebaseAuthFailure tFirebaseAuthFailure = FirebaseAuthFailure(
  code: 'tcode',
  message: 'tmessage',
);

final InternetConnectionFailure tInternetConnectionFailure =
    InternetConnectionFailure(
  code: 'tcode',
  message: 'tmessage',
);

void main() {
  late AuthRepository authRepository;
  late MockAuthRemoteDataSource authRemoteDataSource;
  late MockAuthLocalDataSource authLocalDataSource;
  late MockNetworkInfo networkInfo;

  setUp(() {
    authRemoteDataSource = MockAuthRemoteDataSource();
    authLocalDataSource = MockAuthLocalDataSource();
    networkInfo = MockNetworkInfo();
    authRepository = AuthRepository(
      networkInfo: networkInfo,
      authRemoteDataSource: authRemoteDataSource,
      authLocalDataSource: authLocalDataSource,
    );
    registerFallbackValue(FakeFarmhubUser());
  });

  group('AuthRepository', () {
    // Tests for [loginWithEmailAndPassword]
    group('loginWithEmailAndPassword() ->', () {
      group('[online]', () {
        setUp(() {
          when(() => networkInfo.isConnected).thenAnswer((_) async => true);
        });

        test(
          'should check device is online',
          () async {
            // act
            await authRepository.loginWithEmailAndPassword(
              email: any(named: 'email'),
              password: any(named: 'password'),
            );
            // assert
            verify(() => networkInfo.isConnected);
          },
        );

        test(
          'should return FarmhubUser when login is successfull',
          () async {
            // arrange
            when(() => authRemoteDataSource.loginWithEmailAndPassword(
                  email: any(named: 'email'),
                  password: any(named: 'password'),
                )).thenAnswer((_) async => tFarmhubUser);
            // act
            final result = await authRepository.loginWithEmailAndPassword(
              email: any(named: 'email'),
              password: any(named: 'password'),
            );
            // assert
            verify(() => authRemoteDataSource.loginWithEmailAndPassword(
                  email: any(named: 'email'),
                  password: any(named: 'password'),
                ));
            expect(result, Right(tFarmhubUser));
          },
        );

        test(
          'should store FarmhubUser when successfull login',
          () async {
            // arrange
            when(() => authLocalDataSource.storeFarmhubUser())
                .thenAnswer((_) async => unit);
            // act
            await authRepository.loginWithEmailAndPassword(
              email: any(named: 'email'),
              password: any(named: 'password'),
            );
            // assert
            verify(() => authLocalDataSource.storeFarmhubUser());
          },
        );

        test(
          'should return FirebaseAuthFailure when login fails',
          () async {
            // arrange
            when(() => authRemoteDataSource.loginWithEmailAndPassword(
                  email: any(named: 'email'),
                  password: any(named: 'password'),
                )).thenThrow(tFirebaseAuthException);
            // act
            final result = await authRepository.loginWithEmailAndPassword(
              email: any(named: 'email'),
              password: any(named: 'password'),
            );
            // assert
            expect(result, Left(tFirebaseAuthFailure));
          },
        );
      });

      group('[offline]', () {
        setUp(() {
          when(() => networkInfo.isConnected).thenAnswer((_) async => false);
        });

        test(
          'should check device is offline',
          () async {
            // act
            await authRepository.loginWithEmailAndPassword(
              email: any(named: 'email'),
              password: any(named: 'password'),
            );
            // assert
            verify(() => networkInfo.isConnected);
          },
        );

        test(
          'should return InternetConnectionFailure when there is no internet connection',
          () async {
            // act
            final result = await authRepository.loginWithEmailAndPassword(
              email: any(named: 'email'),
              password: any(named: 'password'),
            );
            // assert
            expect(result, tInternetConnectionFailure);
          },
        );
      });
    });
  });
}
