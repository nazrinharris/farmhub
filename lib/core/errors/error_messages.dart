import 'package:farmhub/core/errors/failures.dart';
import 'package:firebase_auth/firebase_auth.dart';

/// This method takes in a [Failure] and returns a more beautiful error message.
///
/// Messages are added manually depending on the [Failure] type and its code.
///
/// If a certain error code does not have a corresponding beautiful error message,
/// it will return the original message instead, if the original message is null,
/// it will return "Uh oh, something went wrong.", or along the lines of that sentence.
String messageForFailure(Failure f) {
  print("Code is: ${f.code}");
  print("Message is: ${f.message}");
  print("Failure type: ${f.runtimeType}");

  if (f is UnexpectedFailure) {
    return f.message ?? "Uh oh, something went wrong.";
  }

  if (f is FirebaseAuthFailure) {
    switch (f.code) {
      case "invalid-verification-code":
        return "You have entered the wrong verification code, try again.";
      case "too-many-requests":
        return "This device seems to have unusual activity, please try again later.";
      default:
        return f.message ?? "Something wrong happened.";
    }
  }

  return f.message ?? "Something wrong happened.";
}
