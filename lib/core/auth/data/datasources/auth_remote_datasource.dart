import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';

abstract class IAuthRemoteDataSource {
  Future<FarmhubUser> loginWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<FarmhubUser> registerWithEmailAndPassword({
    required String email,
    required String password,
    required String username,
  });
}

class AuthRemoteDataSource implements IAuthRemoteDataSource {
  @override
  Future<FarmhubUser> loginWithEmailAndPassword(
      {required String email, required String password}) {
    // TODO: implement loginWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<FarmhubUser> registerWithEmailAndPassword(
      {required String email,
      required String password,
      required String username}) {
    // TODO: implement registerWithEmailAndPassword
    throw UnimplementedError();
  }
}
