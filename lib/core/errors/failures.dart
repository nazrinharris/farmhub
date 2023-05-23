import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String? code;
  final String? message;
  final StackTrace? stackTrace;

  const Failure({
    this.code = "UNKNOWN CODE",
    this.message = "Unknown message for this failure",
    required this.stackTrace,
  });

  @override
  List<Object> get props {
    return [
      code ?? 'UNKNOWN CODE',
      message ?? 'Unknown message for this failure',
      stackTrace ?? StackTrace.current,
    ];
  }
}

class UnexpectedFailure extends Failure {
  const UnexpectedFailure({
    String? code,
    String? message,
    required StackTrace? stackTrace,
  }) : super(
          code: code,
          message: message,
          stackTrace: stackTrace,
        );
}

//! Firebase Suite Failures
class FirebaseAuthFailure extends Failure {
  const FirebaseAuthFailure({
    String? code,
    String? message,
    required StackTrace? stackTrace,
  }) : super(
          code: code,
          message: message,
          stackTrace: stackTrace,
        );
}

class FirebaseFirestoreFailure extends Failure {
  const FirebaseFirestoreFailure({
    String? code,
    String? message,
    required StackTrace? stackTrace,
  }) : super(
          code: code,
          message: message,
          stackTrace: stackTrace,
        );
}

//! Explicit Connection Failures
class InternetConnectionFailure extends Failure {
  const InternetConnectionFailure({
    String? code,
    String? message,
    required StackTrace? stackTrace,
  }) : super(
          code: code,
          message: message,
          stackTrace: stackTrace,
        );
}

//! Core Failures
class AuthFailure extends Failure {
  const AuthFailure({
    String? code,
    String? message,
    required StackTrace? stackTrace,
  }) : super(
          code: code,
          message: message,
          stackTrace: stackTrace,
        );
}

class AppVersionFailure extends Failure {
  const AppVersionFailure({
    String? code,
    String? message,
    required StackTrace? stackTrace,
  }) : super(
          code: code,
          message: message,
          stackTrace: stackTrace,
        );
}

//! Feature Failures
class ProduceManagerFailure extends Failure {
  const ProduceManagerFailure({
    String? code,
    String? message,
    required StackTrace? stackTrace,
  }) : super(
          code: code,
          message: message,
          stackTrace: stackTrace,
        );
}

class FarmShopManagerFailure extends Failure {
  const FarmShopManagerFailure({
    String? code,
    String? message,
    required StackTrace? stackTrace,
  }) : super(
          code: code,
          message: message,
          stackTrace: stackTrace,
        );
}
