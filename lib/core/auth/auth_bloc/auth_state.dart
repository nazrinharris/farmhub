part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  // General States
  const factory AuthState.initial() = ASInitial;
  const factory AuthState.idle() = ASIdle;
  const factory AuthState.loading() = ASLoading;

  // Login-Specific States
  const factory AuthState.loginLoading() = ASLoginLoading;
  const factory AuthState.loginSuccess({
    required FarmhubUser user,
  }) = ASLoginSuccess;
  const factory AuthState.loginError({
    required String code,
    required String message,
    required StackTrace stackTrace,
  }) = ASLoginError;

  // Register-Specific States
  const factory AuthState.registerLoading() = ASRegisterLoading;
  const factory AuthState.registerSuccess({
    required FarmhubUser user,
  }) = ASRegisterSuccess;
  const factory AuthState.registerError({
    required String code,
    required String message,
    required StackTrace stackTrace,
  }) = ASRegisterError;

  // Sign-Out States
  const factory AuthState.signOutLoading() = ASSignOutLoading;
  const factory AuthState.signOutSuccess() = ASSignOutSuccess;
  const factory AuthState.signOutError({
    required String code,
    required String message,
    required StackTrace stackTrace,
  }) = ASSignOutError;

  // Retrieve User States
  const factory AuthState.retrieveUserDataLoading() = ASRetrieveUserDataLoading;
  const factory AuthState.retrieveUserDataSuccess({
    required FarmhubUser farmhubUser,
  }) = ASRetrieveUserDataSuccess;
  const factory AuthState.retrieveUserDataError({
    required String code,
    required String message,
    required StackTrace stackTrace,
  }) = ASRetrieveUserDataError;

  // isAdmin States
  const factory AuthState.isAdminLoading() = ASIsAdminLoading;
  const factory AuthState.isAdminSuccess({
    required bool isAdmin,
  }) = ASIsAdminSuccess;
  const factory AuthState.isAdminError({
    required String code,
    required String message,
    required StackTrace stackTrace,
  }) = ASIsAdminError;

  // PhoneSignIn States
  const factory AuthState.verifyPhoneLoading() = ASVerifyPhoneLoading;
  const factory AuthState.verifyPhoneCompleted() = ASVerifyPhoneCompleted;
  const factory AuthState.verifyPhoneError(Failure failure) = ASVerifyPhoneError;
  const factory AuthState.phoneCodeSent({
    required String verificationId,
    required PhoneNumber phoneNumber,
    int? resendToken,
  }) = ASPhoneCodeSent;
  const factory AuthState.phoneCodeLoginComplete() = ASPhoneCodeLoginComplete;
  const factory AuthState.phoneCodeLoginError(Failure failure) = ASPhoneCodeLoginError;
  const factory AuthState.codeAutoRetrievalTimeout() = ASCodeAutoRetrievalTimeout;
}
