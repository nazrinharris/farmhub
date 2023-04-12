import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

abstract class INetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfo implements INetworkInfo {
  final InternetConnectionCheckerPlus internet;
  NetworkInfo({
    required this.internet,
  });

  @override
  Future<bool> get isConnected => internet.hasConnection;
}
