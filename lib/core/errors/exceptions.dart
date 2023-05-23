class InCodeException implements Exception {
  final String code;
  final String message;
  final StackTrace? stackTrace;

  InCodeException({
    required this.code,
    required this.message,
    required this.stackTrace,
  });
}

class UnexpectedException implements InCodeException {
  @override
  final String code;
  @override
  final String message;
  @override
  final StackTrace? stackTrace;

  UnexpectedException({
    required this.code,
    required this.message,
    required this.stackTrace,
  });
}

class ProduceManagerException implements Exception {
  final String code;
  final String message;
  final StackTrace? stackTrace;

  ProduceManagerException({
    required this.code,
    required this.message,
    required this.stackTrace,
  });
}

class FarmShopManagerException implements Exception {
  final String code;
  final String message;
  final StackTrace? stackTrace;

  FarmShopManagerException({
    required this.code,
    required this.message,
    required this.stackTrace,
  });
}

class AuthException implements Exception {
  final String code;
  final String message;
  final StackTrace? stackTrace;

  AuthException({
    required this.code,
    required this.message,
    required this.stackTrace,
  });
}

class AuthLocalDatasourceException implements Exception {
  final String code;
  final String message;
  final StackTrace? stackTrace;

  AuthLocalDatasourceException({
    required this.code,
    required this.message,
    required this.stackTrace,
  });
}

class AppVersionException implements Exception {
  final String code;
  final String message;
  final StackTrace? stackTrace;

  AppVersionException({
    required this.code,
    required this.message,
    required this.stackTrace,
  });
}
