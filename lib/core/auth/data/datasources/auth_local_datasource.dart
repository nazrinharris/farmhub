import 'package:fpdart/fpdart.dart';

abstract class IAuthLocalDataSource {
  Future<Unit> storeFarmhubUser();
}

class AuthLocalDataSource implements IAuthLocalDataSource {
  @override
  Future<Unit> storeFarmhubUser() {
    // TODO: implement storeFarmhubUser
    throw UnimplementedError();
  }
}
