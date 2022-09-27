import 'package:farmhub/core/errors/failures.dart';
import 'package:farmhub/core/typedefs/typedefs.dart';
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
    required UserType userType,
  });

  Future<Either<Failure, FarmhubUser>> loginWithGoogleAccount();
  Future<Either<Failure, FarmhubUser>> registerWithGoogleAccount();

  FutureEither<FarmhubUser> createAccountWithPhone({
    required String uid,
    required String phoneNumber,
  });

  Future<Either<Failure, Unit>> sendPasswordResetEmail(String email);

  Future<Either<Failure, FarmhubUser>> retrieveUserData({String? uid});

  Future<Either<Failure, bool>> isAdmin({
    required String uid,
  });

  FutureEither<Unit> chooseUserType(String uid, UserType userType);

  Future<Either<Failure, FarmhubUser>> updateRemoteUser({
    required FarmhubUser newUserData,
  });
}
