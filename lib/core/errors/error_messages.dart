import 'package:farmhub/core/errors/failures.dart';

/// This method takes in a [Failure] and returns a more beautiful error message. This is not an exhaustive list and
/// more may be added manually
///
/// Messages are added manually depending on the [Failure] type and its code.
///
/// If a certain error code does not have a corresponding beautiful error message,
/// it will return the original message instead, if the original message is null,
/// it will return "We're not sure what happened", or along the lines of that sentence.
String messageForFailure(Failure f) {
  print("Code is: ${f.code}");
  print("Message is: ${f.message}");
  print("Failure type: ${f.runtimeType}");

  if (f is UnexpectedFailure) {
    return f.message ?? f.code ?? "We're not sure what happened.";
  }

  if (f is FirebaseAuthFailure) {
    switch (f.code) {
      case "invalid-verification-code":
        return "You have entered the wrong verification code, try again.";
      case "too-many-requests":
        return "This device seems to have unusual activity, please try again later.";
      case "account-exists-with-different-credential":
        return "This account has already been associated with another login method, please try again.";
      case "invalid-credential":
        return "Uh oh, we had a problem accessing credentials, please try again.";
      default:
        return f.message ?? "Something wrong happened.";
    }
  }

  if (f is AuthFailure) {
    switch (f.code) {
      case "AuthorizationErrorCode.canceled":
        return "You have cancelled authentication with Apple";
      default:
        return f.message ?? "Something wrong happened.";
    }
  }

  return f.message ?? "Something wrong happened.";
}
