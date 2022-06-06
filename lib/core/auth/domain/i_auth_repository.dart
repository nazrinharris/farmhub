import 'package:farmhub/core/errors/failures.dart';
import 'package:fpdart/fpdart.dart';

import 'entities/farmhub_user/farmhub_user.dart';

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
  });

  Future<Either<Failure, FarmhubUser>> loginWithGoogleAccount();
  Future<Either<Failure, FarmhubUser>> registerWithGoogleAccount();

  Future<Either<Failure, FarmhubUser>> retrieveUserData();

  Future<Either<Failure, bool>> isAdmin({
    required String uid,
  });

  Future<Either<Failure, FarmhubUser>> updateRemoteUser({
    required FarmhubUser newUserData,
  });
}
