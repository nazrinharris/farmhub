import 'package:farmhub/core/typedefs/typedefs.dart';
import 'package:farmhub/features/farm_shop_manager/data/datasources/farm_shop_manager_remote_datasource.dart';
import 'package:farmhub/features/farm_shop_manager/domain/i_farm_shop_manager_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fpdart/fpdart.dart';

import 'package:farmhub/core/auth/data/datasources/auth_local_datasource.dart';
import 'package:farmhub/core/auth/data/datasources/auth_remote_datasource.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/domain/i_auth_repository.dart';
import 'package:farmhub/core/util/app_const.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:farmhub/core/network/network_info.dart';

import '../../../errors/exceptions.dart';

class AuthRepository implements IAuthRepository {
  final IAuthRemoteDataSource authRemoteDataSource;
  final IAuthLocalDataSource authLocalDataSource;
  final IFarmShopManagerRemoteDatasource farmShopManagerRemoteDatasource;
  final INetworkInfo networkInfo;

  AuthRepository({
    required this.networkInfo,
    required this.authRemoteDataSource,
    required this.authLocalDataSource,
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
  Future<Either<Failure, FarmhubUser>> registerWithEmailAndPassword({
    required String email,
    required String password,
    required String username,
    required UserType userType,
  }) async {
    // TODO: implement registerWithEmailAndPassword
    // TODO: tests registerWithEmailAndPassword
    if (await networkInfo.isConnected) {
      try {
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
      } on AuthException catch (e) {
        return Left(AuthFailure(
          message: e.message,
          code: e.code,
          stackTrace: e.stackTrace,
        ));
      } catch (e, stack) {
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
  Future<Either<Failure, Unit>> signOut() async {
    // TODO: implement signOut
    // TODO: tests signOut
    try {
      await authRemoteDataSource.signOut();
      await authLocalDataSource.clearStoredFarmhubUser();
      print("Sign Out Requested");
      return const Right(unit);
    } on FirebaseAuthException catch (e) {
      print("Sign Out Error Occurred");
      return Left(FirebaseAuthFailure(
        code: e.code,
        message: e.message,
        stackTrace: StackTrace.current,
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
  Future<Either<Failure, FarmhubUser>> loginWithGoogleAccount() {
    // TODO: implement loginWithGoogleAccount
    // TODO: tests loginWithGoogleAccount
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, FarmhubUser>> registerWithGoogleAccount() {
    // TODO: implement registerWithGoogleAccount
    // TODO: tests registerWithGoogleAccount
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, FarmhubUser>> retrieveUserData() async {
    if (await networkInfo.isConnected) {
      try {
        FarmhubUser user = await authRemoteDataSource.retrieveUserData();

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

        print("User Data ->");
        print(user);
        await authLocalDataSource.storeFarmhubUser(user);

        return Right(user);
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
      print("Not connected");
      // TODO: Retrieval of user information from local storage.
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
    // TODO: implement isAdmin
    if (await networkInfo.isConnected) {
      try {
        bool isAdmin = await authRemoteDataSource.isAdmin(uid);

        return Right(isAdmin);
      } on FirebaseAuthException catch (e) {
        print('isAdmin Check Error Occurred, ${e.code}, ${e.message}');
        return Left(FirebaseAuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: e.stackTrace,
        ));
      } on FirebaseException catch (e) {
        print('isAdmin Check Error Occurred, ${e.code}, ${e.message}');
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
        print('isAdmin Check Error Occurred, $e');
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
      try {
        final user = await authRemoteDataSource.updateRemoteUser(newUserData);
        await authLocalDataSource.storeFarmhubUser(newUserData);

        return Right(user);
      } on FirebaseAuthException catch (e) {
        return Left(
            FirebaseAuthFailure(code: e.code, message: e.message, stackTrace: e.stackTrace));
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
  Future<Either<Failure, Unit>> sendPasswordResetEmail(String email) async {
    if (await networkInfo.isConnected) {
      try {
        final user = await authRemoteDataSource.sendPasswordResetEmail(email);
        return Right(unit);
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
        await authRemoteDataSource.chooseUserType(uid, userType);
        return const Right(unit);
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
        final result =
            await authRemoteDataSource.createAccountWithPhone(uid: uid, phoneNumber: phoneNumber);

        return Right(result);
      } on AuthException catch (e, stack) {
        print(e);
        return Left(AuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: e.stackTrace,
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
}
