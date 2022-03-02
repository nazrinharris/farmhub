import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String? code;
  final String? message;

  const Failure({this.code = "UNKNOWN CODE", this.message = "Unknown message for this failure"});

  @override
  List<Object> get props {
    return [
      code ?? 'UNKNOWN CODE',
      message ?? 'Unknown message for this failure',
    ];
  }
}

//TODO: Change to [require] code and message. Unknown should be handled at data/repo level.
class UnexpectedFailure extends Failure {
  const UnexpectedFailure({
    String? code,
    String? message,
  }) : super(
          code: code ?? 'UNKNOWN CODE',
          message: message ?? 'Unknown message for this failure',
        );
}

//! Firebase Suite Failures
class FirebaseAuthFailure extends Failure {
  const FirebaseAuthFailure({
    String? code,
    String? message,
  }) : super(
          code: code,
          message: message,
        );
}

class FirebaseFirestoreFailure extends Failure {
  const FirebaseFirestoreFailure({
    String? code,
    String? message,
  }) : super(
          code: code,
          message: message,
        );
}

//! Explicit Connection Failures
class InternetConnectionFailure extends Failure {
  const InternetConnectionFailure({
    String? code,
    String? message,
  }) : super(
          code: code,
          message: message,
        );
}

//! Core Failures
class AuthFailure extends Failure {
  const AuthFailure({
    String? code,
    String? message,
  }) : super(
          code: code,
          message: message,
        );
}

//! Feature Failures
class ProduceManagerFailure extends Failure {
  const ProduceManagerFailure({
    String? code,
    String? message,
  }) : super(
          code: code,
          message: message,
        );
}
