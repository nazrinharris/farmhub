import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class INetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfo implements INetworkInfo {
  final InternetConnectionChecker internet;
  NetworkInfo({
    required this.internet,
  });

  @override
  // TODO: implement isConnected
  Future<bool> get isConnected => internet.hasConnection;
}
