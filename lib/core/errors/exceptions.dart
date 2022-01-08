class InCodeException implements Exception {
  final String code;
  final String message;

  InCodeException({
    required this.code,
    required this.message,
  });
}

class UnexpectedException implements InCodeException {
  @override
  final String code;
  @override
  final String message;

  UnexpectedException({required this.code, required this.message});
}
