import 'package:farmhub/core/auth/data/datasources/auth_local_datasource.dart';
import 'package:farmhub/core/auth/data/datasources/auth_remote_datasource.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/domain/i_auth_repository.dart';
import 'package:farmhub/core/network/network_info.dart';
import 'package:fpdart/src/unit.dart';
import 'package:fpdart/src/either.dart';
import 'package:farmhub/core/errors/failures.dart';

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
  }) {
    // TODO: implement loginWithEmailAndPassword
    // TODO: tests loginWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, FarmhubUser>> registerWithEmailAndPassword({
    required String email,
    required String password,
    required String username,
  }) {
    // TODO: implement registerWithEmailAndPassword
    // TODO: tests registerWithEmailAndPassword
    throw UnimplementedError();
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
