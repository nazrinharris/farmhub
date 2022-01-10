import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:fpdart/fpdart.dart';

abstract class IAuthLocalDataSource {
  Future<Unit> storeFarmhubUser(FarmhubUser farmhubUser);
}

class AuthLocalDataSource implements IAuthLocalDataSource {
  @override
  Future<Unit> storeFarmhubUser(FarmhubUser farmhubUser) {
    // TODO: implement storeFarmhubUser
    throw UnimplementedError();
  }
}
