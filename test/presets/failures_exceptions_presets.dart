import 'package:farmhub/core/util/app_const.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:firebase_auth/firebase_auth.dart';

//! Firebase Failures
final FirebaseAuthFailure tFirebaseAuthFailure = FirebaseAuthFailure(
  code: 'CODE',
  message: 'tmessage',
  stackTrace: StackTrace.empty,
);

//! Firebase Exceptions
final FirebaseAuthException tFirebaseAuthException = FirebaseAuthException(
  code: 'CODE',
  message: 'tmessage',
);

final FirebaseException tFirebaseFirestoreException = FirebaseException(
  code: 'CODE',
  message: 'tmessage',
  plugin: FS_PLUGIN,
);

final FirebaseException tFirebaseException = FirebaseException(
  code: 'CODE',
  message: 'tmessage',
  plugin: UNSPECIFIED_PLUGIN,
);
