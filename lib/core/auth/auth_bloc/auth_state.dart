part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  // General States
  const factory AuthState.initial() = ASInitial;
  const factory AuthState.idle() = ASIdle;

  // Login-Specific States
  const factory AuthState.loginLoading() = ASLoginLoading;
  const factory AuthState.loginSuccess({
    required FarmhubUser user,
  }) = ASLoginSuccess;
  const factory AuthState.loginError({
    required String code,
    required String message,
  }) = ASLoginError;

  // Register-Specific States
  const factory AuthState.registerLoading() = ASRegisterLoading;
  const factory AuthState.registerSuccess({
    required FarmhubUser user,
  }) = ASRegisterSuccess;
  const factory AuthState.registerError({
    required String code,
    required String message,
  }) = ASRegisterError;

  // Sign-Out States
  const factory AuthState.signOutLoading() = ASSignOutLoading;
  const factory AuthState.signOutSuccess() = ASSignOutSuccess;
  const factory AuthState.signOutError({
    required String code,
    required String message,
  }) = ASSignOutError;
}
