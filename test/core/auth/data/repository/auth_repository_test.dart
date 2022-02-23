// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'package:farmhub/core/auth/data/repository/auth_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../presets/entities_presets.dart';
import '../../../../presets/failures_exceptions_presets.dart';
import '../../../../presets/mockings.dart';

void main() {
  late AuthRepository authRepository;
  late MockAuthRemoteDataSource mockAuthRemoteDataSource;
  late MockAuthLocalDataSource mockAuthLocalDataSource;
  late MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockAuthRemoteDataSource = MockAuthRemoteDataSource();
    mockAuthLocalDataSource = MockAuthLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    authRepository = AuthRepository(
      networkInfo: mockNetworkInfo,
      authRemoteDataSource: mockAuthRemoteDataSource,
      authLocalDataSource: mockAuthLocalDataSource,
    );
    registerFallbackValue(FakeFarmhubUser());

    when(() => mockAuthLocalDataSource.storeFarmhubUser(any())).thenAnswer((_) async => unit);
  });

  group('AuthRepository', () {
    // Tests for [loginWithEmailAndPassword]
    group('loginWithEmailAndPassword() ->', () {
      group('[online]', () {
        setUp(() {
          when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
        });

        test(
          'should check device is online',
          () async {
            // arrange
            when(() => mockAuthRemoteDataSource.loginWithEmailAndPassword(
                  email: any(named: 'email'),
                  password: any(named: 'password'),
                )).thenAnswer((_) async => tFarmhubUser);
            // act
            await authRepository.loginWithEmailAndPassword(
              email: tEmail,
              password: tPassword,
            );
            // assert
            verify(() => mockNetworkInfo.isConnected);
          },
        );

        test(
          'should return FarmhubUser when login is successfull',
          () async {
            // arrange
            when(() => mockAuthRemoteDataSource.loginWithEmailAndPassword(
                  email: any(named: 'email'),
                  password: any(named: 'password'),
                )).thenAnswer((_) async => tFarmhubUser);
            // act
            final result = await authRepository.loginWithEmailAndPassword(
              email: tEmail,
              password: tPassword,
            );
            // assert
            verify(() => mockAuthRemoteDataSource.loginWithEmailAndPassword(
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

            when(() => mockAuthRemoteDataSource.loginWithEmailAndPassword(
                  email: any(named: 'email'),
                  password: any(named: 'password'),
                )).thenAnswer((_) async => tFarmhubUser);
            // act
            await authRepository.loginWithEmailAndPassword(
              email: tEmail,
              password: tPassword,
            );
            // assert
            verify(() => mockAuthLocalDataSource.storeFarmhubUser(tFarmhubUser));
          },
        );

        test(
          'should return FirebaseAuthFailure when login fails',
          () async {
            // arrange
            when(() => mockAuthRemoteDataSource.loginWithEmailAndPassword(
                  email: any(named: 'email'),
                  password: any(named: 'password'),
                )).thenThrow(tFirebaseAuthException);
            // act
            final result = await authRepository.loginWithEmailAndPassword(
              email: tEmail,
              password: tPassword,
            );
            // assert
            expect(result, Left(tFirebaseAuthFailure));
          },
        );
      });

      group('[offline]', () {
        setUp(() {
          when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);
        });

        test(
          'should check device is offline',
          () async {
            // act
            await authRepository.loginWithEmailAndPassword(
              email: tEmail,
              password: tPassword,
            );
            // assert
            verify(() => mockNetworkInfo.isConnected);
          },
        );

        test(
          'should return InternetConnectionFailure when there is no internet connection',
          () async {
            // act
            final result = await authRepository.loginWithEmailAndPassword(
              email: tEmail,
              password: tPassword,
            );
            // assert
            expect(result, Left(tInternetConnectionFailure));
          },
        );
      });
    });

    group('loginWithGoogleAccount() ->', () {
      group('[online]', () {
        setUp(() {
          when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
        });
      });

      group('[offline]', () {
        setUp(() {
          when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);
        });
      });
    });

    group('registerWithEmailAndPassword() ->', () {
      group('[online]', () {
        setUp(() {
          when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
        });

        test(
          'should check if device is online',
          () async {
            // arrange
            when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
            when(() => mockAuthRemoteDataSource.registerWithEmailAndPassword(
                  email: any(named: 'email'),
                  password: any(named: 'password'),
                  username: any(named: 'username'),
                )).thenAnswer((_) async => tFarmhubUser);
            // act
            authRepository.registerWithEmailAndPassword(
              email: tEmail,
              password: tPassword,
              username: tUsername,
            );
            // assert
            verify(() => mockNetworkInfo.isConnected);
          },
        );

        test(
          'should return FarmhubUser with current user details when succesfull register',
          () async {
            // arrange
            when(() => mockAuthRemoteDataSource.registerWithEmailAndPassword(
                  email: any(named: 'email'),
                  password: any(named: 'password'),
                  username: any(named: 'username'),
                )).thenAnswer((_) async => tFarmhubUser);
            // act
            final result = await authRepository.registerWithEmailAndPassword(
              email: tEmail,
              password: tPassword,
              username: tUsername,
            );
            // assert
            expect(result, equals(Right(tFarmhubUser)));
          },
        );

        test(
          'should store FarmhubUser with current user details when succesfull register',
          () async {
            // arrange
            when(() => mockAuthRemoteDataSource.registerWithEmailAndPassword(
                  email: any(named: 'email'),
                  password: any(named: 'password'),
                  username: any(named: 'username'),
                )).thenAnswer((_) async => tFarmhubUser);
            // act
            await authRepository.registerWithEmailAndPassword(
              email: tEmail,
              password: tPassword,
              username: tUsername,
            );
            // assert
            verify(() => mockAuthLocalDataSource.storeFarmhubUser(tFarmhubUser));
          },
        );

        test(
          'should return FirebaseAuthFailure when registration fails',
          () async {
            // arrange
            when(() => mockAuthRemoteDataSource.registerWithEmailAndPassword(
                  email: any(named: 'email'),
                  password: any(named: 'password'),
                  username: any(named: 'username'),
                )).thenThrow(tFirebaseAuthException);
            // act
            final result = await authRepository.registerWithEmailAndPassword(
              email: tEmail,
              password: tPassword,
              username: tUsername,
            );
            // assert
            expect(result, equals(Left(tFirebaseAuthFailure)));
          },
        );
      });

      group('[offline]', () {
        setUp(() {
          when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);
        });

        test(
          'should check device is offline',
          () async {
            // act
            await authRepository.loginWithEmailAndPassword(
              email: tEmail,
              password: tPassword,
            );
            // assert
            verify(() => mockNetworkInfo.isConnected);
          },
        );

        test(
          'should return InternetConnectionFailure when there is no internet connection',
          () async {
            // act
            final result = await authRepository.loginWithEmailAndPassword(
              email: tEmail,
              password: tPassword,
            );
            // assert
            expect(result, Left(tInternetConnectionFailure));
          },
        );
      });
    });

    group('registerWithGoogleAccount() ->', () {
      group('[online]', () {
        setUp(() {
          when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
        });
      });

      group('[offline]', () {
        setUp(() {
          when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);
        });
      });
    });

    group('signOut() ->', () {});
  });
}
