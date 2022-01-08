abstract class INetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfo implements INetworkInfo {
  @override
  // TODO: implement isConnected
  Future<bool> get isConnected => throw UnimplementedError();
}
