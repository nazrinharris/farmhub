// ignore_for_file: non_constant_identifier_names

part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.phoneVerificationLoading() = PhoneVerificationLoading;
  const factory AuthState.SMSCodeSentToClient({
    required String verificationId,
    required PhoneNumber phoneNumber,
    int? resendToken,
  }) = SMSCodeSentToClient;
  const factory AuthState.phoneVerificationError(
    Failure failure,
  ) = PhoneVerificationError;

  const factory AuthState.smsCodeInvalid() = SMSCodeInvalid;

  const factory AuthState.credentialLoginLoading() = CredentialLoginLoading;
  const factory AuthState.credentialLoginError(Failure failure) = CredentialLoginError;

  // This state will be emitted when account creation is succesfull OR account retrieval is successfull
  // Account retrieval referring to when the user already exists.
  const factory AuthState.accountCreationSuccess(FarmhubUser user) = AccountCreationSuccess;
  const factory AuthState.accountCreationError(Failure failure) = AccountCreationError;

  const factory AuthState.thirdPartyAccountCreationSuccess(Tuple2<FarmhubUser, bool> result) =
      ThirdPartyAccountCreationSuccess;

  const factory AuthState.remoteConfigLoading() = RemoteConfigLoading;
  const factory AuthState.remoteConfigError(Failure failure) = RemoteConfigError;
  const factory AuthState.remoteConfigSuccess() = RemoteConfigSuccess;
}
