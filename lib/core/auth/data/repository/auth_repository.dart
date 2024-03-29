import 'package:cloud_functions/cloud_functions.dart';
import 'package:farmhub/core/typedefs/typedefs.dart';
import 'package:farmhub/core/util/misc.dart';
import 'package:farmhub/features/farm_shop_manager/data/datasources/farm_shop_manager_remote_datasource.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';

import 'package:farmhub/core/auth/data/datasources/auth_local_datasource.dart';
import 'package:farmhub/core/auth/data/datasources/auth_remote_datasource.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/util/app_const.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:farmhub/core/network/network_info.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../../../app_version/app_version_repository.dart';
import '../../../errors/exceptions.dart';
import '../../../util/printer.dart';

abstract class IAuthRepository {
  // Login and Sign Out
  Future<Either<Failure, FarmhubUser>> loginWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<Failure, Unit>> signOut();

  // Registration
  Future<Either<Failure, FarmhubUser>> registerWithEmailAndPassword({
    required String email,
    required String password,
    required String username,
    required UserType userType,
  });

  Future<Either<Failure, FarmhubUser>> registerWithCredentials({
    required String uid,
    required String email,
    required String displayName,
  });

  FutureEither<FarmhubUser> createAccountWithPhone({
    required String uid,
    required String phoneNumber,
  });

  FutureEither<(FarmhubUser, bool)> signInWithGoogle();
  FutureEither<(FarmhubUser, bool)> signInWithApple();

  Future<Either<Failure, Unit>> sendPasswordResetEmail(String? email);

  Future<Either<Failure, FarmhubUser>> retrieveUserData({String? uid});

  Future<Either<Failure, bool>> isAdmin({
    required String uid,
  });

  FutureEither<Unit> chooseUserType(String uid, UserType userType);

  Future<Either<Failure, FarmhubUser>> updateRemoteUser({
    required FarmhubUser newUserData,
  });
}

class AuthRepository implements IAuthRepository {
  final IAuthRemoteDataSource authRemoteDataSource;
  final IAuthLocalDataSource authLocalDataSource;
  final IAppVersionRepository appVersionRepository;
  final IFarmShopManagerRemoteDatasource farmShopManagerRemoteDatasource;
  final INetworkInfo networkInfo;

  AuthRepository({
    required this.networkInfo,
    required this.authRemoteDataSource,
    required this.authLocalDataSource,
    required this.appVersionRepository,
    required this.farmShopManagerRemoteDatasource,
  });

  @override
  Future<Either<Failure, FarmhubUser>> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final user = await authRemoteDataSource.loginWithEmailAndPassword(
          email: email,
          password: password,
        );
        await authLocalDataSource.storeFarmhubUser(user);

        return Right(user);
      } on FirebaseAuthException catch (e, stack) {
        return Left(FirebaseAuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: stack,
        ));
      } on FirebaseFunctionsException catch (e, stack) {
        debugPrint(e.toString());

        return Left(FirebaseAuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: stack,
        ));
      } on AuthException catch (e, stack) {
        return Left(AuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: stack,
        ));
      } catch (e, stack) {
        return Left(UnexpectedFailure(
            code: e.toString(), message: "An unexpected error occured", stackTrace: stack));
      }
    } else {
      return Left(InternetConnectionFailure(
        code: ERROR_NO_INTERNET_CONNECTION,
        message: MESSAGE_NO_INTERNET_CONNECTION,
        stackTrace: StackTrace.current,
      ));
    }
  }

  @override
  Future<Either<Failure, FarmhubUser>> registerWithEmailAndPassword({
    required String email,
    required String password,
    required String username,
    required UserType userType,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final isAllowed = await appVersionRepository.isAppVersionAllowed();
        isAllowed.fold((f) => Left(f), (isAllowed) async {
          if (!isAllowed) {
            await signOut();
            return Left(AppVersionFailure(
              code: ERR_APP_VERSION_NOT_SUPPORTED,
              message: MESSAGE_APP_VERSION_NOT_SUPPORTED,
              stackTrace: StackTrace.current,
            ));
          }
        });

        final result = await authRemoteDataSource.registerWithEmailAndPassword(
          email: email,
          password: password,
          username: username,
          userType: userType,
        );
        await authLocalDataSource.storeFarmhubUser(result);
        return Right(result);
      } on FirebaseAuthException catch (e) {
        return Left(FirebaseAuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: e.stackTrace,
        ));
      } on FirebaseFunctionsException catch (e, stack) {
        return Left(FirebaseAuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: stack,
        ));
      } on AuthException catch (e) {
        return Left(AuthFailure(
          message: e.message,
          code: e.code,
          stackTrace: e.stackTrace,
        ));
      } catch (e, stack) {
        return Left(UnexpectedFailure(message: e.toString(), stackTrace: stack));
      }
    } else {
      return Left(InternetConnectionFailure(
        code: ERROR_NO_INTERNET_CONNECTION,
        message: MESSAGE_NO_INTERNET_CONNECTION,
        stackTrace: StackTrace.current,
      ));
    }
  }

  @override
  Future<Either<Failure, Unit>> signOut() async {
    try {
      await authRemoteDataSource.signOut();
      await authLocalDataSource.clearStoredFarmhubUser();
      debugPrint("Sign Out Requested");
      return const Right(unit);
    } on FirebaseAuthException catch (e) {
      debugPrint("Sign Out Error Occurred");
      return Left(FirebaseAuthFailure(
        code: e.code,
        message: e.message,
        stackTrace: StackTrace.current,
      ));
    } on AuthException catch (e, stack) {
      return Left(AuthFailure(
        code: e.code,
        message: e.message,
        stackTrace: stack,
      ));
    } catch (e, stack) {
      return Left(UnexpectedFailure(
        code: e.toString(),
        message: "An unexpected error occured",
        stackTrace: stack,
      ));
    }
  }

  @override
  Future<Either<Failure, FarmhubUser>> retrieveUserData({String? uid}) async {
    if (await networkInfo.isConnected) {
      try {
        FarmhubUser user = await authRemoteDataSource.retrieveUserData(uid: uid);

        /// When we retrieve [user], it only retrieves [FarmhubUser], as such, [farmList] and
        /// [shopList] will be empty, here, we will retrieve it.
        if (user is FarmhubUserFarmer || user is FarmhubUserBusiness) {
          final farmList = await farmShopManagerRemoteDatasource.getUserFarms(farmhubUser: user);
          final shopList = await farmShopManagerRemoteDatasource.getUserShops(farmhubUser: user);

          user = user.map(
            (user) => user,
            farmer: (farmer) => farmer.copyWith(userFarms: farmList, userShops: shopList),
            business: (business) => business.copyWith(userFarms: farmList, userShops: shopList),
          );
        }

        debugPrintUserData("User Retrieved", user);
        await authLocalDataSource.storeFarmhubUser(user);

        return Right(user);
      } on AuthException catch (e, stack) {
        return Left(AuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: stack,
        ));
      } on FirebaseAuthException catch (e) {
        return Left(FirebaseAuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: e.stackTrace,
        ));
      } on FirebaseException catch (e, stack) {
        return Left(FirebaseFirestoreFailure(
          code: e.code,
          message: e.message,
          stackTrace: stack,
        ));
      } catch (e, stack) {
        return Left(UnexpectedFailure(
          message: e.toString(),
          stackTrace: stack,
        ));
      }
    } else {
      debugPrint("Not connected");
      try {
        final user = await authLocalDataSource.retrieveFarmhubUser();

        return Right(user);
      } catch (e, stack) {
        return Left(UnexpectedFailure(message: e.toString(), stackTrace: stack));
      }
    }
  }

  @override
  Future<Either<Failure, bool>> isAdmin({required String uid}) async {
    if (await networkInfo.isConnected) {
      try {
        bool isAdmin = await authRemoteDataSource.isAdmin(uid);

        return Right(isAdmin);
      } on FirebaseAuthException catch (e) {
        debugPrint('isAdmin Check Error Occurred, ${e.code}, ${e.message}');
        return Left(FirebaseAuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: e.stackTrace,
        ));
      } on FirebaseException catch (e) {
        debugPrint('isAdmin Check Error Occurred, ${e.code}, ${e.message}');
        return Left(FirebaseFirestoreFailure(
          code: e.code,
          message: e.message,
          stackTrace: e.stackTrace,
        ));
      } on AuthException catch (e) {
        return Left(AuthFailure(
          message: e.message,
          code: e.code,
          stackTrace: e.stackTrace,
        ));
      } catch (e, stack) {
        debugPrint('isAdmin Check Error Occurred, $e');
        return Left(UnexpectedFailure(
          message: e.toString(),
          stackTrace: stack,
        ));
      }
    } else {
      return Left(InternetConnectionFailure(
        code: ERROR_NO_INTERNET_CONNECTION,
        message: MESSAGE_NO_INTERNET_CONNECTION,
        stackTrace: StackTrace.current,
      ));
    }
  }

  @override
  Future<Either<Failure, FarmhubUser>> updateRemoteUser({required FarmhubUser newUserData}) async {
    if (await networkInfo.isConnected) {
      final staleUser = await authLocalDataSource.retrieveFarmhubUser();

      try {
        final isAllowed = await appVersionRepository.isAppVersionAllowed();
        isAllowed.fold((f) => Left(f), (isAllowed) async {
          if (!isAllowed) {
            await signOut();
            return Left(AppVersionFailure(
              code: ERR_APP_VERSION_NOT_SUPPORTED,
              message: MESSAGE_APP_VERSION_NOT_SUPPORTED,
              stackTrace: StackTrace.current,
            ));
          }
        });

        if (staleUser.userType == UserType.admin && newUserData.userType != UserType.admin) {
          throw AuthException(
            code: "ERROR_CANNOT_CHANGE_USERTYPE",
            message: "Sorry, but you can't change your user type from admin. Contact support.",
            stackTrace: StackTrace.current,
          );
        }

        final user = await authRemoteDataSource.updateRemoteUser(newUserData);
        await authLocalDataSource.storeFarmhubUser(newUserData);

        return Right(user);
      } on FirebaseAuthException catch (e) {
        return Left(
            FirebaseAuthFailure(code: e.code, message: e.message, stackTrace: e.stackTrace));
      } on AuthException catch (e, stack) {
        return Left(AuthFailure(code: e.code, message: e.message, stackTrace: stack));
      } catch (e, stack) {
        return Left(UnexpectedFailure(
          code: e.toString(),
          message: "An unexpected error occured",
          stackTrace: stack,
        ));
      }
    } else {
      return Left(InternetConnectionFailure(
        code: ERROR_NO_INTERNET_CONNECTION,
        message: MESSAGE_NO_INTERNET_CONNECTION,
        stackTrace: StackTrace.current,
      ));
    }
  }

  @override
  Future<Either<Failure, Unit>> sendPasswordResetEmail(String? email) async {
    if (await networkInfo.isConnected) {
      try {
        if (email == null) {
          return Left(AuthFailure(
            code: AUTH_NO_EMAIL_FOR_PASSWORD_RESET,
            message: MSG_AUTH_NO_EMAIL_FOR_PASSWORD_RESET,
            stackTrace: StackTrace.current,
          ));
        }
        await authRemoteDataSource.sendPasswordResetEmail(email);
        return const Right(unit);
      } on AuthException catch (e, stack) {
        return Left(AuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: stack,
        ));
      } on FirebaseAuthException catch (e) {
        return Left(FirebaseAuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: e.stackTrace,
        ));
      } catch (e, stack) {
        return Left(UnexpectedFailure(
          code: e.toString(),
          message: "An unexpected error occured",
          stackTrace: stack,
        ));
      }
    } else {
      return Left(InternetConnectionFailure(
        code: ERROR_NO_INTERNET_CONNECTION,
        message: MESSAGE_NO_INTERNET_CONNECTION,
        stackTrace: StackTrace.current,
      ));
    }
  }

  @override
  FutureEither<Unit> chooseUserType(String uid, UserType userType) async {
    if (await networkInfo.isConnected) {
      try {
        final isAllowed = await appVersionRepository.isAppVersionAllowed();
        isAllowed.fold((f) => Left(f), (isAllowed) async {
          if (!isAllowed) {
            await signOut();
            return Left(AppVersionFailure(
              code: ERR_APP_VERSION_NOT_SUPPORTED,
              message: MESSAGE_APP_VERSION_NOT_SUPPORTED,
              stackTrace: StackTrace.current,
            ));
          }
        });

        await authRemoteDataSource.chooseUserType(uid, userType);
        return const Right(unit);
      } on AuthException catch (e, stack) {
        return Left(AuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: stack,
        ));
      } on FirebaseFunctionsException catch (e, stack) {
        return Left(FirebaseAuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: stack,
        ));
      } catch (e, stack) {
        return Left(UnexpectedFailure(
          code: e.toString(),
          stackTrace: stack,
        ));
      }
    } else {
      return Left(InternetConnectionFailure(
        code: ERROR_NO_INTERNET_CONNECTION,
        message: MESSAGE_NO_INTERNET_CONNECTION,
        stackTrace: StackTrace.current,
      ));
    }
  }

  @override
  FutureEither<FarmhubUser> createAccountWithPhone({
    required String uid,
    required String phoneNumber,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final isAllowed = await appVersionRepository.isAppVersionAllowed();
        isAllowed.fold((f) => Left(f), (isAllowed) async {
          if (!isAllowed) {
            await signOut();
            return Left(AppVersionFailure(
              code: ERR_APP_VERSION_NOT_SUPPORTED,
              message: MESSAGE_APP_VERSION_NOT_SUPPORTED,
              stackTrace: StackTrace.current,
            ));
          }
        });

        final result =
            await authRemoteDataSource.createAccountWithPhone(uid: uid, phoneNumber: phoneNumber);

        return Right(result);
      } on AuthException catch (e, stack) {
        debugPrint(e.toString());
        return Left(AuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: stack,
        ));
      } on FirebaseFunctionsException catch (e, stack) {
        return Left(FirebaseAuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: stack,
        ));
      } catch (e, stack) {
        return Left(UnexpectedFailure(
          code: e.toString(),
          stackTrace: stack,
        ));
      }
    } else {
      return Left(InternetConnectionFailure(
        code: ERROR_NO_INTERNET_CONNECTION,
        message: MESSAGE_NO_INTERNET_CONNECTION,
        stackTrace: StackTrace.current,
      ));
    }
  }

  /// General steps:
  /// 1. Check if user exists.
  /// 2. If no, create new account. If yes, retrieve the user and return it.
  @override
  Future<Either<Failure, FarmhubUser>> registerWithCredentials({
    required String uid,
    required String email,
    required String displayName,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        FarmhubUser? resultingUser;
        bool? isNewAccount;

        final isAllowed = await appVersionRepository.isAppVersionAllowed();
        isAllowed.fold((f) => Left(f), (isAllowed) async {
          if (!isAllowed) {
            await signOut();
            return Left(AppVersionFailure(
              code: ERR_APP_VERSION_NOT_SUPPORTED,
              message: MESSAGE_APP_VERSION_NOT_SUPPORTED,
              stackTrace: StackTrace.current,
            ));
          }
        });

        // Start checking for existence of account
        final uidCheckResult = await retrieveUserData(uid: uid);

        final (FarmhubUser, bool) toReturn = await uidCheckResult.fold(
          (f) async {
            resultingUser = await authRemoteDataSource.registerWithCredentials(
              uid: uid,
              email: email,
              displayName: displayName,
            );
            isNewAccount = true;
            return (resultingUser!, isNewAccount!);
          },
          (user) {
            resultingUser = user;
            isNewAccount = false;
            return (resultingUser!, isNewAccount!);
          },
        );

        if (toReturn.$2 == false) {
          return Left(
            AuthFailure(
              code: AUTH_USER_ALREADY_EXISTS,
              message: MSG_AUTH_USER_ALREADY_EXISTS,
              stackTrace: StackTrace.current,
            ),
          );
        }

        return Right(toReturn.$1);
      } on AuthException catch (e, stack) {
        debugPrint(e.toString());
        return Left(AuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: stack,
        ));
      } on FirebaseFunctionsException catch (e, stack) {
        return Left(FirebaseAuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: stack,
        ));
      } catch (e, stack) {
        return Left(
          UnexpectedFailure(
            message: "An unexpected error occured while creating account with credentials",
            code: e.toString(),
            stackTrace: stack,
          ),
        );
      }
    } else {
      return Left(InternetConnectionFailure(
        code: ERROR_NO_INTERNET_CONNECTION,
        message: MESSAGE_NO_INTERNET_CONNECTION,
        stackTrace: StackTrace.current,
      ));
    }
  }

  @override
  FutureEither<(FarmhubUser, bool)> signInWithGoogle() async {
    if (await networkInfo.isConnected) {
      try {
        FarmhubUser? resultingUser;
        bool? isNewAccount;
        final userCredential = await authRemoteDataSource.signInWithGoogle();

        // Start checking for existence of account
        final uidCheckResult = await retrieveUserData(uid: userCredential.user!.uid);

        final (FarmhubUser, bool) toReturn = await uidCheckResult.fold(
          (f) async {
            resultingUser = await authRemoteDataSource.registerWithCredentials(
              uid: userCredential.user!.uid,
              email: userCredential.user!.email,
              displayName: userCredential.user!.displayName ?? generateRandomName(),
            );
            isNewAccount = true;
            return (resultingUser!, isNewAccount!);
          },
          (user) {
            resultingUser = user;
            isNewAccount = false;
            return (resultingUser!, isNewAccount!);
          },
        );

        return Right(toReturn);
      } on AuthException catch (e, stack) {
        debugPrint(e.toString());
        return Left(AuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: stack,
        ));
      } on FirebaseAuthException catch (e) {
        debugPrint(e.toString());
        return Left(
          FirebaseAuthFailure(
            stackTrace: e.stackTrace,
            message: e.message,
            code: e.code,
          ),
        );
      } on FirebaseFunctionsException catch (e, stack) {
        return Left(FirebaseAuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: stack,
        ));
      } catch (e, stack) {
        return Left(
          UnexpectedFailure(
            message: "An unexpected error occured while signing in with Google.",
            code: e.toString(),
            stackTrace: stack,
          ),
        );
      }
    } else {
      return Left(InternetConnectionFailure(
        code: ERROR_NO_INTERNET_CONNECTION,
        message: MESSAGE_NO_INTERNET_CONNECTION,
        stackTrace: StackTrace.current,
      ));
    }
  }

  @override
  FutureEither<(FarmhubUser, bool)> signInWithApple() async {
    if (await networkInfo.isConnected) {
      try {
        FarmhubUser? resultingUser;
        bool? isNewAccount;
        final userCredential = await authRemoteDataSource.signInWithApple();

        // Start checking for existence of account
        final uidCheckResult = await retrieveUserData(uid: userCredential.user!.uid);

        final (FarmhubUser, bool) toReturn = await uidCheckResult.fold(
          (f) async {
            resultingUser = await authRemoteDataSource.registerWithCredentials(
              uid: userCredential.user!.uid,
              email: userCredential.user!.email,
              displayName: userCredential.user!.displayName ?? generateRandomName(),
            );
            isNewAccount = true;
            return (resultingUser!, isNewAccount!);
          },
          (user) {
            resultingUser = user;
            isNewAccount = false;
            return (resultingUser!, isNewAccount!);
          },
        );

        return Right(toReturn);
      } on AuthException catch (e, stack) {
        debugPrint(e.toString());
        return Left(AuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: stack,
        ));
      } on FirebaseAuthException catch (e) {
        debugPrint(e.toString());
        return Left(
          FirebaseAuthFailure(
            stackTrace: e.stackTrace,
            message: e.message,
            code: e.code,
          ),
        );
      } on SignInWithAppleAuthorizationException catch (e, stack) {
        debugPrint(e.toString());
        return Left(
          AuthFailure(
            stackTrace: stack,
            message: e.message,
            code: e.code.toString(),
          ),
        );
      } on FirebaseFunctionsException catch (e, stack) {
        return Left(FirebaseAuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: stack,
        ));
      } catch (e, stack) {
        return Left(
          UnexpectedFailure(
            message: "An unexpected error occured while signing in with Apple.",
            code: e.toString(),
            stackTrace: stack,
          ),
        );
      }
    } else {
      return Left(InternetConnectionFailure(
        code: ERROR_NO_INTERNET_CONNECTION,
        message: MESSAGE_NO_INTERNET_CONNECTION,
        stackTrace: StackTrace.current,
      ));
    }
  }
}
