part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _AEStarted;

  // Login-Specific Events
  const factory AuthEvent.execLoginWithEmailAndPassword({
    required String email,
    required String password,
  }) = _AEExecLoginWithEmailAndPassword;

  // Register-Specific Events
  const factory AuthEvent.execRegisterWithEmailAndPassword({
    required String email,
    required String password,
    required String username,
    required UserType userType,
  }) = _AEExecRegisterWithEmailAndPassword;

  // Others
  const factory AuthEvent.execRetrieveUserData() = _AEExecRetrieveUserData;
  const factory AuthEvent.execSignOut() = _AEExecSignOut;

  const factory AuthEvent.execIsAdmin(String uid) = _AEExecIsAdmin;
}
