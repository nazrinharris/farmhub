import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fpdart/fpdart.dart';

import 'package:farmhub/core/auth/data/datasources/auth_local_datasource.dart';
import 'package:farmhub/core/auth/data/datasources/auth_remote_datasource.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/domain/i_auth_repository.dart';
import 'package:farmhub/core/constants/app_const.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:farmhub/core/network/network_info.dart';

class AuthRepository implements IAuthRepository {
  final IAuthRemoteDataSource authRemoteDataSource;
  final IAuthLocalDataSource authLocalDataSource;
  final INetworkInfo networkInfo;

  AuthRepository({
    required this.networkInfo,
    required this.authRemoteDataSource,
    required this.authLocalDataSource,
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
      } on FirebaseAuthException catch (e) {
        return Left(
            FirebaseAuthFailure(code: e.code, message: e.message, stackTrace: StackTrace.current));
      } catch (e) {
        return Left(UnexpectedFailure(
          code: e.toString(),
          message: "An unexpected error occured",
          stackTrace: StackTrace.current,
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
  }) async {
    // TODO: implement registerWithEmailAndPassword
    // TODO: tests registerWithEmailAndPassword
    if (await networkInfo.isConnected) {
      try {
        final result = await authRemoteDataSource.registerWithEmailAndPassword(
          email: email,
          password: password,
          username: username,
        );
        await authLocalDataSource.storeFarmhubUser(result);
        return Right(result);
      } on FirebaseAuthException catch (e) {
        return Left(FirebaseAuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: StackTrace.current,
        ));
      } catch (e) {
        return Left(UnexpectedFailure(
          message: e.toString(),
          stackTrace: StackTrace.current,
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
      print("Sign Out Requested");
      return const Right(unit);
    } on FirebaseAuthException catch (e) {
      print("Sign Out Error Occurred");
      return Left(FirebaseAuthFailure(
        code: e.code,
        message: e.message,
        stackTrace: StackTrace.current,
      ));
    } catch (e) {
      return Left(UnexpectedFailure(
        code: e.toString(),
        message: "An unexpected error occured",
        stackTrace: StackTrace.current,
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
        final FarmhubUser user = await authRemoteDataSource.retrieveUserData();

        return Right(user);
      } on FirebaseAuthException catch (e) {
        print('Retrieval of User Information Error Occurred, ${e.code}, ${e.message}');
        return Left(FirebaseAuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: StackTrace.current,
        ));
      } on FirebaseException catch (e) {
        print('Retrieval of User Information Error Occurred, ${e.code}, ${e.message}');
        return Left(FirebaseFirestoreFailure(
          code: e.code,
          message: e.message,
          stackTrace: StackTrace.current,
        ));
      } catch (e, stack) {
        print('Retrieval of User Information Error Occurred, $e');
        print("$stack");
        return Left(UnexpectedFailure(
          message: e.toString(),
          stackTrace: stack,
        ));
      }
    } else {
      // TODO: Retrieval of user information from local storage.
      return Left(InternetConnectionFailure(
          code: ERROR_NO_INTERNET_CONNECTION,
          message: MESSAGE_NO_INTERNET_CONNECTION,
          stackTrace: StackTrace.current));
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
          stackTrace: StackTrace.current,
        ));
      } on FirebaseException catch (e) {
        print('isAdmin Check Error Occurred, ${e.code}, ${e.message}');
        return Left(FirebaseFirestoreFailure(
          code: e.code,
          message: e.message,
          stackTrace: StackTrace.current,
        ));
      } catch (e) {
        print('isAdmin Check Error Occurred, $e');
        return Left(UnexpectedFailure(
          message: e.toString(),
          stackTrace: StackTrace.current,
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
        return Right(user);
      } on FirebaseAuthException catch (e) {
        return Left(
            FirebaseAuthFailure(code: e.code, message: e.message, stackTrace: StackTrace.current));
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
}
