import 'package:firebase_auth/firebase_auth.dart';
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
        return Left(FirebaseAuthFailure(code: e.code, message: e.message));
      }
    } else {
      return const Left(InternetConnectionFailure(
        code: ERROR_NO_INTERNET_CONNECTION,
        message: MESSAGE_NO_INTERNET_CONNECTION,
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
        final storaygeUser = FarmhubUser(
            username: result.username,
            email: result.email,
            uid: result.uid,
            createdAt: result.createdAt);
        return Right(storaygeUser);
      } on FirebaseAuthException catch (e) {
        return Left(FirebaseAuthFailure(
          code: e.code,
          message: e.message,
        ));
      }
    } else {
      return const Left(InternetConnectionFailure(
        code: ERROR_NO_INTERNET_CONNECTION,
        message: MESSAGE_NO_INTERNET_CONNECTION,
      ));
    }
  }

  @override
  Future<Either<Failure, Unit>> signOut() {
    // TODO: implement signOut
    // TODO: tests signOut
    throw UnimplementedError();
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
}
