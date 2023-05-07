// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phoneVerificationLoading,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        SMSCodeSentToClient,
    required TResult Function(Failure failure) phoneVerificationError,
    required TResult Function() smsCodeInvalid,
    required TResult Function() credentialLoginLoading,
    required TResult Function(Failure failure) credentialLoginError,
    required TResult Function(FarmhubUser user) accountCreationSuccess,
    required TResult Function(Failure failure) accountCreationError,
    required TResult Function(Tuple2<FarmhubUser, bool> result)
        thirdPartyAccountCreationSuccess,
    required TResult Function() remoteConfigLoading,
    required TResult Function(Failure failure) remoteConfigError,
    required TResult Function() remoteConfigSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PhoneVerificationLoading value)
        phoneVerificationLoading,
    required TResult Function(SMSCodeSentToClient value) SMSCodeSentToClient,
    required TResult Function(PhoneVerificationError value)
        phoneVerificationError,
    required TResult Function(SMSCodeInvalid value) smsCodeInvalid,
    required TResult Function(CredentialLoginLoading value)
        credentialLoginLoading,
    required TResult Function(CredentialLoginError value) credentialLoginError,
    required TResult Function(AccountCreationSuccess value)
        accountCreationSuccess,
    required TResult Function(AccountCreationError value) accountCreationError,
    required TResult Function(ThirdPartyAccountCreationSuccess value)
        thirdPartyAccountCreationSuccess,
    required TResult Function(RemoteConfigLoading value) remoteConfigLoading,
    required TResult Function(RemoteConfigError value) remoteConfigError,
    required TResult Function(RemoteConfigSuccess value) remoteConfigSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phoneVerificationLoading,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        SMSCodeSentToClient,
    required TResult Function(Failure failure) phoneVerificationError,
    required TResult Function() smsCodeInvalid,
    required TResult Function() credentialLoginLoading,
    required TResult Function(Failure failure) credentialLoginError,
    required TResult Function(FarmhubUser user) accountCreationSuccess,
    required TResult Function(Failure failure) accountCreationError,
    required TResult Function(Tuple2<FarmhubUser, bool> result)
        thirdPartyAccountCreationSuccess,
    required TResult Function() remoteConfigLoading,
    required TResult Function(Failure failure) remoteConfigError,
    required TResult Function() remoteConfigSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PhoneVerificationLoading value)
        phoneVerificationLoading,
    required TResult Function(SMSCodeSentToClient value) SMSCodeSentToClient,
    required TResult Function(PhoneVerificationError value)
        phoneVerificationError,
    required TResult Function(SMSCodeInvalid value) smsCodeInvalid,
    required TResult Function(CredentialLoginLoading value)
        credentialLoginLoading,
    required TResult Function(CredentialLoginError value) credentialLoginError,
    required TResult Function(AccountCreationSuccess value)
        accountCreationSuccess,
    required TResult Function(AccountCreationError value) accountCreationError,
    required TResult Function(ThirdPartyAccountCreationSuccess value)
        thirdPartyAccountCreationSuccess,
    required TResult Function(RemoteConfigLoading value) remoteConfigLoading,
    required TResult Function(RemoteConfigError value) remoteConfigError,
    required TResult Function(RemoteConfigSuccess value) remoteConfigSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$PhoneVerificationLoadingCopyWith<$Res> {
  factory _$$PhoneVerificationLoadingCopyWith(_$PhoneVerificationLoading value,
          $Res Function(_$PhoneVerificationLoading) then) =
      __$$PhoneVerificationLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PhoneVerificationLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$PhoneVerificationLoadingCopyWith<$Res> {
  __$$PhoneVerificationLoadingCopyWithImpl(_$PhoneVerificationLoading _value,
      $Res Function(_$PhoneVerificationLoading) _then)
      : super(_value, (v) => _then(v as _$PhoneVerificationLoading));

  @override
  _$PhoneVerificationLoading get _value =>
      super._value as _$PhoneVerificationLoading;
}

/// @nodoc

class _$PhoneVerificationLoading implements PhoneVerificationLoading {
  const _$PhoneVerificationLoading();

  @override
  String toString() {
    return 'AuthState.phoneVerificationLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneVerificationLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phoneVerificationLoading,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        SMSCodeSentToClient,
    required TResult Function(Failure failure) phoneVerificationError,
    required TResult Function() smsCodeInvalid,
    required TResult Function() credentialLoginLoading,
    required TResult Function(Failure failure) credentialLoginError,
    required TResult Function(FarmhubUser user) accountCreationSuccess,
    required TResult Function(Failure failure) accountCreationError,
    required TResult Function(Tuple2<FarmhubUser, bool> result)
        thirdPartyAccountCreationSuccess,
    required TResult Function() remoteConfigLoading,
    required TResult Function(Failure failure) remoteConfigError,
    required TResult Function() remoteConfigSuccess,
  }) {
    return phoneVerificationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
  }) {
    return phoneVerificationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (phoneVerificationLoading != null) {
      return phoneVerificationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PhoneVerificationLoading value)
        phoneVerificationLoading,
    required TResult Function(SMSCodeSentToClient value) SMSCodeSentToClient,
    required TResult Function(PhoneVerificationError value)
        phoneVerificationError,
    required TResult Function(SMSCodeInvalid value) smsCodeInvalid,
    required TResult Function(CredentialLoginLoading value)
        credentialLoginLoading,
    required TResult Function(CredentialLoginError value) credentialLoginError,
    required TResult Function(AccountCreationSuccess value)
        accountCreationSuccess,
    required TResult Function(AccountCreationError value) accountCreationError,
    required TResult Function(ThirdPartyAccountCreationSuccess value)
        thirdPartyAccountCreationSuccess,
    required TResult Function(RemoteConfigLoading value) remoteConfigLoading,
    required TResult Function(RemoteConfigError value) remoteConfigError,
    required TResult Function(RemoteConfigSuccess value) remoteConfigSuccess,
  }) {
    return phoneVerificationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
  }) {
    return phoneVerificationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (phoneVerificationLoading != null) {
      return phoneVerificationLoading(this);
    }
    return orElse();
  }
}

abstract class PhoneVerificationLoading implements AuthState {
  const factory PhoneVerificationLoading() = _$PhoneVerificationLoading;
}

/// @nodoc
abstract class _$$SMSCodeSentToClientCopyWith<$Res> {
  factory _$$SMSCodeSentToClientCopyWith(_$SMSCodeSentToClient value,
          $Res Function(_$SMSCodeSentToClient) then) =
      __$$SMSCodeSentToClientCopyWithImpl<$Res>;
  $Res call({String verificationId, PhoneNumber phoneNumber, int? resendToken});
}

/// @nodoc
class __$$SMSCodeSentToClientCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$SMSCodeSentToClientCopyWith<$Res> {
  __$$SMSCodeSentToClientCopyWithImpl(
      _$SMSCodeSentToClient _value, $Res Function(_$SMSCodeSentToClient) _then)
      : super(_value, (v) => _then(v as _$SMSCodeSentToClient));

  @override
  _$SMSCodeSentToClient get _value => super._value as _$SMSCodeSentToClient;

  @override
  $Res call({
    Object? verificationId = freezed,
    Object? phoneNumber = freezed,
    Object? resendToken = freezed,
  }) {
    return _then(_$SMSCodeSentToClient(
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      resendToken: resendToken == freezed
          ? _value.resendToken
          : resendToken // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SMSCodeSentToClient implements SMSCodeSentToClient {
  const _$SMSCodeSentToClient(
      {required this.verificationId,
      required this.phoneNumber,
      this.resendToken});

  @override
  final String verificationId;
  @override
  final PhoneNumber phoneNumber;
  @override
  final int? resendToken;

  @override
  String toString() {
    return 'AuthState.SMSCodeSentToClient(verificationId: $verificationId, phoneNumber: $phoneNumber, resendToken: $resendToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SMSCodeSentToClient &&
            const DeepCollectionEquality()
                .equals(other.verificationId, verificationId) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.resendToken, resendToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(verificationId),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(resendToken));

  @JsonKey(ignore: true)
  @override
  _$$SMSCodeSentToClientCopyWith<_$SMSCodeSentToClient> get copyWith =>
      __$$SMSCodeSentToClientCopyWithImpl<_$SMSCodeSentToClient>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phoneVerificationLoading,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        SMSCodeSentToClient,
    required TResult Function(Failure failure) phoneVerificationError,
    required TResult Function() smsCodeInvalid,
    required TResult Function() credentialLoginLoading,
    required TResult Function(Failure failure) credentialLoginError,
    required TResult Function(FarmhubUser user) accountCreationSuccess,
    required TResult Function(Failure failure) accountCreationError,
    required TResult Function(Tuple2<FarmhubUser, bool> result)
        thirdPartyAccountCreationSuccess,
    required TResult Function() remoteConfigLoading,
    required TResult Function(Failure failure) remoteConfigError,
    required TResult Function() remoteConfigSuccess,
  }) {
    return SMSCodeSentToClient(verificationId, phoneNumber, resendToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
  }) {
    return SMSCodeSentToClient?.call(verificationId, phoneNumber, resendToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (SMSCodeSentToClient != null) {
      return SMSCodeSentToClient(verificationId, phoneNumber, resendToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PhoneVerificationLoading value)
        phoneVerificationLoading,
    required TResult Function(SMSCodeSentToClient value) SMSCodeSentToClient,
    required TResult Function(PhoneVerificationError value)
        phoneVerificationError,
    required TResult Function(SMSCodeInvalid value) smsCodeInvalid,
    required TResult Function(CredentialLoginLoading value)
        credentialLoginLoading,
    required TResult Function(CredentialLoginError value) credentialLoginError,
    required TResult Function(AccountCreationSuccess value)
        accountCreationSuccess,
    required TResult Function(AccountCreationError value) accountCreationError,
    required TResult Function(ThirdPartyAccountCreationSuccess value)
        thirdPartyAccountCreationSuccess,
    required TResult Function(RemoteConfigLoading value) remoteConfigLoading,
    required TResult Function(RemoteConfigError value) remoteConfigError,
    required TResult Function(RemoteConfigSuccess value) remoteConfigSuccess,
  }) {
    return SMSCodeSentToClient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
  }) {
    return SMSCodeSentToClient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (SMSCodeSentToClient != null) {
      return SMSCodeSentToClient(this);
    }
    return orElse();
  }
}

abstract class SMSCodeSentToClient implements AuthState {
  const factory SMSCodeSentToClient(
      {required final String verificationId,
      required final PhoneNumber phoneNumber,
      final int? resendToken}) = _$SMSCodeSentToClient;

  String get verificationId;
  PhoneNumber get phoneNumber;
  int? get resendToken;
  @JsonKey(ignore: true)
  _$$SMSCodeSentToClientCopyWith<_$SMSCodeSentToClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneVerificationErrorCopyWith<$Res> {
  factory _$$PhoneVerificationErrorCopyWith(_$PhoneVerificationError value,
          $Res Function(_$PhoneVerificationError) then) =
      __$$PhoneVerificationErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$$PhoneVerificationErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$PhoneVerificationErrorCopyWith<$Res> {
  __$$PhoneVerificationErrorCopyWithImpl(_$PhoneVerificationError _value,
      $Res Function(_$PhoneVerificationError) _then)
      : super(_value, (v) => _then(v as _$PhoneVerificationError));

  @override
  _$PhoneVerificationError get _value =>
      super._value as _$PhoneVerificationError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$PhoneVerificationError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$PhoneVerificationError implements PhoneVerificationError {
  const _$PhoneVerificationError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AuthState.phoneVerificationError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneVerificationError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$PhoneVerificationErrorCopyWith<_$PhoneVerificationError> get copyWith =>
      __$$PhoneVerificationErrorCopyWithImpl<_$PhoneVerificationError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phoneVerificationLoading,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        SMSCodeSentToClient,
    required TResult Function(Failure failure) phoneVerificationError,
    required TResult Function() smsCodeInvalid,
    required TResult Function() credentialLoginLoading,
    required TResult Function(Failure failure) credentialLoginError,
    required TResult Function(FarmhubUser user) accountCreationSuccess,
    required TResult Function(Failure failure) accountCreationError,
    required TResult Function(Tuple2<FarmhubUser, bool> result)
        thirdPartyAccountCreationSuccess,
    required TResult Function() remoteConfigLoading,
    required TResult Function(Failure failure) remoteConfigError,
    required TResult Function() remoteConfigSuccess,
  }) {
    return phoneVerificationError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
  }) {
    return phoneVerificationError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (phoneVerificationError != null) {
      return phoneVerificationError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PhoneVerificationLoading value)
        phoneVerificationLoading,
    required TResult Function(SMSCodeSentToClient value) SMSCodeSentToClient,
    required TResult Function(PhoneVerificationError value)
        phoneVerificationError,
    required TResult Function(SMSCodeInvalid value) smsCodeInvalid,
    required TResult Function(CredentialLoginLoading value)
        credentialLoginLoading,
    required TResult Function(CredentialLoginError value) credentialLoginError,
    required TResult Function(AccountCreationSuccess value)
        accountCreationSuccess,
    required TResult Function(AccountCreationError value) accountCreationError,
    required TResult Function(ThirdPartyAccountCreationSuccess value)
        thirdPartyAccountCreationSuccess,
    required TResult Function(RemoteConfigLoading value) remoteConfigLoading,
    required TResult Function(RemoteConfigError value) remoteConfigError,
    required TResult Function(RemoteConfigSuccess value) remoteConfigSuccess,
  }) {
    return phoneVerificationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
  }) {
    return phoneVerificationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (phoneVerificationError != null) {
      return phoneVerificationError(this);
    }
    return orElse();
  }
}

abstract class PhoneVerificationError implements AuthState {
  const factory PhoneVerificationError(final Failure failure) =
      _$PhoneVerificationError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$PhoneVerificationErrorCopyWith<_$PhoneVerificationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SMSCodeInvalidCopyWith<$Res> {
  factory _$$SMSCodeInvalidCopyWith(
          _$SMSCodeInvalid value, $Res Function(_$SMSCodeInvalid) then) =
      __$$SMSCodeInvalidCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SMSCodeInvalidCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$SMSCodeInvalidCopyWith<$Res> {
  __$$SMSCodeInvalidCopyWithImpl(
      _$SMSCodeInvalid _value, $Res Function(_$SMSCodeInvalid) _then)
      : super(_value, (v) => _then(v as _$SMSCodeInvalid));

  @override
  _$SMSCodeInvalid get _value => super._value as _$SMSCodeInvalid;
}

/// @nodoc

class _$SMSCodeInvalid implements SMSCodeInvalid {
  const _$SMSCodeInvalid();

  @override
  String toString() {
    return 'AuthState.smsCodeInvalid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SMSCodeInvalid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phoneVerificationLoading,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        SMSCodeSentToClient,
    required TResult Function(Failure failure) phoneVerificationError,
    required TResult Function() smsCodeInvalid,
    required TResult Function() credentialLoginLoading,
    required TResult Function(Failure failure) credentialLoginError,
    required TResult Function(FarmhubUser user) accountCreationSuccess,
    required TResult Function(Failure failure) accountCreationError,
    required TResult Function(Tuple2<FarmhubUser, bool> result)
        thirdPartyAccountCreationSuccess,
    required TResult Function() remoteConfigLoading,
    required TResult Function(Failure failure) remoteConfigError,
    required TResult Function() remoteConfigSuccess,
  }) {
    return smsCodeInvalid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
  }) {
    return smsCodeInvalid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (smsCodeInvalid != null) {
      return smsCodeInvalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PhoneVerificationLoading value)
        phoneVerificationLoading,
    required TResult Function(SMSCodeSentToClient value) SMSCodeSentToClient,
    required TResult Function(PhoneVerificationError value)
        phoneVerificationError,
    required TResult Function(SMSCodeInvalid value) smsCodeInvalid,
    required TResult Function(CredentialLoginLoading value)
        credentialLoginLoading,
    required TResult Function(CredentialLoginError value) credentialLoginError,
    required TResult Function(AccountCreationSuccess value)
        accountCreationSuccess,
    required TResult Function(AccountCreationError value) accountCreationError,
    required TResult Function(ThirdPartyAccountCreationSuccess value)
        thirdPartyAccountCreationSuccess,
    required TResult Function(RemoteConfigLoading value) remoteConfigLoading,
    required TResult Function(RemoteConfigError value) remoteConfigError,
    required TResult Function(RemoteConfigSuccess value) remoteConfigSuccess,
  }) {
    return smsCodeInvalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
  }) {
    return smsCodeInvalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (smsCodeInvalid != null) {
      return smsCodeInvalid(this);
    }
    return orElse();
  }
}

abstract class SMSCodeInvalid implements AuthState {
  const factory SMSCodeInvalid() = _$SMSCodeInvalid;
}

/// @nodoc
abstract class _$$CredentialLoginLoadingCopyWith<$Res> {
  factory _$$CredentialLoginLoadingCopyWith(_$CredentialLoginLoading value,
          $Res Function(_$CredentialLoginLoading) then) =
      __$$CredentialLoginLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CredentialLoginLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$CredentialLoginLoadingCopyWith<$Res> {
  __$$CredentialLoginLoadingCopyWithImpl(_$CredentialLoginLoading _value,
      $Res Function(_$CredentialLoginLoading) _then)
      : super(_value, (v) => _then(v as _$CredentialLoginLoading));

  @override
  _$CredentialLoginLoading get _value =>
      super._value as _$CredentialLoginLoading;
}

/// @nodoc

class _$CredentialLoginLoading implements CredentialLoginLoading {
  const _$CredentialLoginLoading();

  @override
  String toString() {
    return 'AuthState.credentialLoginLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CredentialLoginLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phoneVerificationLoading,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        SMSCodeSentToClient,
    required TResult Function(Failure failure) phoneVerificationError,
    required TResult Function() smsCodeInvalid,
    required TResult Function() credentialLoginLoading,
    required TResult Function(Failure failure) credentialLoginError,
    required TResult Function(FarmhubUser user) accountCreationSuccess,
    required TResult Function(Failure failure) accountCreationError,
    required TResult Function(Tuple2<FarmhubUser, bool> result)
        thirdPartyAccountCreationSuccess,
    required TResult Function() remoteConfigLoading,
    required TResult Function(Failure failure) remoteConfigError,
    required TResult Function() remoteConfigSuccess,
  }) {
    return credentialLoginLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
  }) {
    return credentialLoginLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (credentialLoginLoading != null) {
      return credentialLoginLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PhoneVerificationLoading value)
        phoneVerificationLoading,
    required TResult Function(SMSCodeSentToClient value) SMSCodeSentToClient,
    required TResult Function(PhoneVerificationError value)
        phoneVerificationError,
    required TResult Function(SMSCodeInvalid value) smsCodeInvalid,
    required TResult Function(CredentialLoginLoading value)
        credentialLoginLoading,
    required TResult Function(CredentialLoginError value) credentialLoginError,
    required TResult Function(AccountCreationSuccess value)
        accountCreationSuccess,
    required TResult Function(AccountCreationError value) accountCreationError,
    required TResult Function(ThirdPartyAccountCreationSuccess value)
        thirdPartyAccountCreationSuccess,
    required TResult Function(RemoteConfigLoading value) remoteConfigLoading,
    required TResult Function(RemoteConfigError value) remoteConfigError,
    required TResult Function(RemoteConfigSuccess value) remoteConfigSuccess,
  }) {
    return credentialLoginLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
  }) {
    return credentialLoginLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (credentialLoginLoading != null) {
      return credentialLoginLoading(this);
    }
    return orElse();
  }
}

abstract class CredentialLoginLoading implements AuthState {
  const factory CredentialLoginLoading() = _$CredentialLoginLoading;
}

/// @nodoc
abstract class _$$CredentialLoginErrorCopyWith<$Res> {
  factory _$$CredentialLoginErrorCopyWith(_$CredentialLoginError value,
          $Res Function(_$CredentialLoginError) then) =
      __$$CredentialLoginErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$$CredentialLoginErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$CredentialLoginErrorCopyWith<$Res> {
  __$$CredentialLoginErrorCopyWithImpl(_$CredentialLoginError _value,
      $Res Function(_$CredentialLoginError) _then)
      : super(_value, (v) => _then(v as _$CredentialLoginError));

  @override
  _$CredentialLoginError get _value => super._value as _$CredentialLoginError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$CredentialLoginError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$CredentialLoginError implements CredentialLoginError {
  const _$CredentialLoginError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AuthState.credentialLoginError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CredentialLoginError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$CredentialLoginErrorCopyWith<_$CredentialLoginError> get copyWith =>
      __$$CredentialLoginErrorCopyWithImpl<_$CredentialLoginError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phoneVerificationLoading,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        SMSCodeSentToClient,
    required TResult Function(Failure failure) phoneVerificationError,
    required TResult Function() smsCodeInvalid,
    required TResult Function() credentialLoginLoading,
    required TResult Function(Failure failure) credentialLoginError,
    required TResult Function(FarmhubUser user) accountCreationSuccess,
    required TResult Function(Failure failure) accountCreationError,
    required TResult Function(Tuple2<FarmhubUser, bool> result)
        thirdPartyAccountCreationSuccess,
    required TResult Function() remoteConfigLoading,
    required TResult Function(Failure failure) remoteConfigError,
    required TResult Function() remoteConfigSuccess,
  }) {
    return credentialLoginError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
  }) {
    return credentialLoginError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (credentialLoginError != null) {
      return credentialLoginError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PhoneVerificationLoading value)
        phoneVerificationLoading,
    required TResult Function(SMSCodeSentToClient value) SMSCodeSentToClient,
    required TResult Function(PhoneVerificationError value)
        phoneVerificationError,
    required TResult Function(SMSCodeInvalid value) smsCodeInvalid,
    required TResult Function(CredentialLoginLoading value)
        credentialLoginLoading,
    required TResult Function(CredentialLoginError value) credentialLoginError,
    required TResult Function(AccountCreationSuccess value)
        accountCreationSuccess,
    required TResult Function(AccountCreationError value) accountCreationError,
    required TResult Function(ThirdPartyAccountCreationSuccess value)
        thirdPartyAccountCreationSuccess,
    required TResult Function(RemoteConfigLoading value) remoteConfigLoading,
    required TResult Function(RemoteConfigError value) remoteConfigError,
    required TResult Function(RemoteConfigSuccess value) remoteConfigSuccess,
  }) {
    return credentialLoginError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
  }) {
    return credentialLoginError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (credentialLoginError != null) {
      return credentialLoginError(this);
    }
    return orElse();
  }
}

abstract class CredentialLoginError implements AuthState {
  const factory CredentialLoginError(final Failure failure) =
      _$CredentialLoginError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$CredentialLoginErrorCopyWith<_$CredentialLoginError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountCreationSuccessCopyWith<$Res> {
  factory _$$AccountCreationSuccessCopyWith(_$AccountCreationSuccess value,
          $Res Function(_$AccountCreationSuccess) then) =
      __$$AccountCreationSuccessCopyWithImpl<$Res>;
  $Res call({FarmhubUser user});

  $FarmhubUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AccountCreationSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$AccountCreationSuccessCopyWith<$Res> {
  __$$AccountCreationSuccessCopyWithImpl(_$AccountCreationSuccess _value,
      $Res Function(_$AccountCreationSuccess) _then)
      : super(_value, (v) => _then(v as _$AccountCreationSuccess));

  @override
  _$AccountCreationSuccess get _value =>
      super._value as _$AccountCreationSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$AccountCreationSuccess(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FarmhubUser,
    ));
  }

  @override
  $FarmhubUserCopyWith<$Res> get user {
    return $FarmhubUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AccountCreationSuccess implements AccountCreationSuccess {
  const _$AccountCreationSuccess(this.user);

  @override
  final FarmhubUser user;

  @override
  String toString() {
    return 'AuthState.accountCreationSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountCreationSuccess &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$AccountCreationSuccessCopyWith<_$AccountCreationSuccess> get copyWith =>
      __$$AccountCreationSuccessCopyWithImpl<_$AccountCreationSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phoneVerificationLoading,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        SMSCodeSentToClient,
    required TResult Function(Failure failure) phoneVerificationError,
    required TResult Function() smsCodeInvalid,
    required TResult Function() credentialLoginLoading,
    required TResult Function(Failure failure) credentialLoginError,
    required TResult Function(FarmhubUser user) accountCreationSuccess,
    required TResult Function(Failure failure) accountCreationError,
    required TResult Function(Tuple2<FarmhubUser, bool> result)
        thirdPartyAccountCreationSuccess,
    required TResult Function() remoteConfigLoading,
    required TResult Function(Failure failure) remoteConfigError,
    required TResult Function() remoteConfigSuccess,
  }) {
    return accountCreationSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
  }) {
    return accountCreationSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (accountCreationSuccess != null) {
      return accountCreationSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PhoneVerificationLoading value)
        phoneVerificationLoading,
    required TResult Function(SMSCodeSentToClient value) SMSCodeSentToClient,
    required TResult Function(PhoneVerificationError value)
        phoneVerificationError,
    required TResult Function(SMSCodeInvalid value) smsCodeInvalid,
    required TResult Function(CredentialLoginLoading value)
        credentialLoginLoading,
    required TResult Function(CredentialLoginError value) credentialLoginError,
    required TResult Function(AccountCreationSuccess value)
        accountCreationSuccess,
    required TResult Function(AccountCreationError value) accountCreationError,
    required TResult Function(ThirdPartyAccountCreationSuccess value)
        thirdPartyAccountCreationSuccess,
    required TResult Function(RemoteConfigLoading value) remoteConfigLoading,
    required TResult Function(RemoteConfigError value) remoteConfigError,
    required TResult Function(RemoteConfigSuccess value) remoteConfigSuccess,
  }) {
    return accountCreationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
  }) {
    return accountCreationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (accountCreationSuccess != null) {
      return accountCreationSuccess(this);
    }
    return orElse();
  }
}

abstract class AccountCreationSuccess implements AuthState {
  const factory AccountCreationSuccess(final FarmhubUser user) =
      _$AccountCreationSuccess;

  FarmhubUser get user;
  @JsonKey(ignore: true)
  _$$AccountCreationSuccessCopyWith<_$AccountCreationSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountCreationErrorCopyWith<$Res> {
  factory _$$AccountCreationErrorCopyWith(_$AccountCreationError value,
          $Res Function(_$AccountCreationError) then) =
      __$$AccountCreationErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$$AccountCreationErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$AccountCreationErrorCopyWith<$Res> {
  __$$AccountCreationErrorCopyWithImpl(_$AccountCreationError _value,
      $Res Function(_$AccountCreationError) _then)
      : super(_value, (v) => _then(v as _$AccountCreationError));

  @override
  _$AccountCreationError get _value => super._value as _$AccountCreationError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$AccountCreationError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$AccountCreationError implements AccountCreationError {
  const _$AccountCreationError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AuthState.accountCreationError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountCreationError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$AccountCreationErrorCopyWith<_$AccountCreationError> get copyWith =>
      __$$AccountCreationErrorCopyWithImpl<_$AccountCreationError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phoneVerificationLoading,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        SMSCodeSentToClient,
    required TResult Function(Failure failure) phoneVerificationError,
    required TResult Function() smsCodeInvalid,
    required TResult Function() credentialLoginLoading,
    required TResult Function(Failure failure) credentialLoginError,
    required TResult Function(FarmhubUser user) accountCreationSuccess,
    required TResult Function(Failure failure) accountCreationError,
    required TResult Function(Tuple2<FarmhubUser, bool> result)
        thirdPartyAccountCreationSuccess,
    required TResult Function() remoteConfigLoading,
    required TResult Function(Failure failure) remoteConfigError,
    required TResult Function() remoteConfigSuccess,
  }) {
    return accountCreationError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
  }) {
    return accountCreationError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (accountCreationError != null) {
      return accountCreationError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PhoneVerificationLoading value)
        phoneVerificationLoading,
    required TResult Function(SMSCodeSentToClient value) SMSCodeSentToClient,
    required TResult Function(PhoneVerificationError value)
        phoneVerificationError,
    required TResult Function(SMSCodeInvalid value) smsCodeInvalid,
    required TResult Function(CredentialLoginLoading value)
        credentialLoginLoading,
    required TResult Function(CredentialLoginError value) credentialLoginError,
    required TResult Function(AccountCreationSuccess value)
        accountCreationSuccess,
    required TResult Function(AccountCreationError value) accountCreationError,
    required TResult Function(ThirdPartyAccountCreationSuccess value)
        thirdPartyAccountCreationSuccess,
    required TResult Function(RemoteConfigLoading value) remoteConfigLoading,
    required TResult Function(RemoteConfigError value) remoteConfigError,
    required TResult Function(RemoteConfigSuccess value) remoteConfigSuccess,
  }) {
    return accountCreationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
  }) {
    return accountCreationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (accountCreationError != null) {
      return accountCreationError(this);
    }
    return orElse();
  }
}

abstract class AccountCreationError implements AuthState {
  const factory AccountCreationError(final Failure failure) =
      _$AccountCreationError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$AccountCreationErrorCopyWith<_$AccountCreationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ThirdPartyAccountCreationSuccessCopyWith<$Res> {
  factory _$$ThirdPartyAccountCreationSuccessCopyWith(
          _$ThirdPartyAccountCreationSuccess value,
          $Res Function(_$ThirdPartyAccountCreationSuccess) then) =
      __$$ThirdPartyAccountCreationSuccessCopyWithImpl<$Res>;
  $Res call({Tuple2<FarmhubUser, bool> result});
}

/// @nodoc
class __$$ThirdPartyAccountCreationSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ThirdPartyAccountCreationSuccessCopyWith<$Res> {
  __$$ThirdPartyAccountCreationSuccessCopyWithImpl(
      _$ThirdPartyAccountCreationSuccess _value,
      $Res Function(_$ThirdPartyAccountCreationSuccess) _then)
      : super(_value, (v) => _then(v as _$ThirdPartyAccountCreationSuccess));

  @override
  _$ThirdPartyAccountCreationSuccess get _value =>
      super._value as _$ThirdPartyAccountCreationSuccess;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$ThirdPartyAccountCreationSuccess(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Tuple2<FarmhubUser, bool>,
    ));
  }
}

/// @nodoc

class _$ThirdPartyAccountCreationSuccess
    implements ThirdPartyAccountCreationSuccess {
  const _$ThirdPartyAccountCreationSuccess(this.result);

  @override
  final Tuple2<FarmhubUser, bool> result;

  @override
  String toString() {
    return 'AuthState.thirdPartyAccountCreationSuccess(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThirdPartyAccountCreationSuccess &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$ThirdPartyAccountCreationSuccessCopyWith<
          _$ThirdPartyAccountCreationSuccess>
      get copyWith => __$$ThirdPartyAccountCreationSuccessCopyWithImpl<
          _$ThirdPartyAccountCreationSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phoneVerificationLoading,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        SMSCodeSentToClient,
    required TResult Function(Failure failure) phoneVerificationError,
    required TResult Function() smsCodeInvalid,
    required TResult Function() credentialLoginLoading,
    required TResult Function(Failure failure) credentialLoginError,
    required TResult Function(FarmhubUser user) accountCreationSuccess,
    required TResult Function(Failure failure) accountCreationError,
    required TResult Function(Tuple2<FarmhubUser, bool> result)
        thirdPartyAccountCreationSuccess,
    required TResult Function() remoteConfigLoading,
    required TResult Function(Failure failure) remoteConfigError,
    required TResult Function() remoteConfigSuccess,
  }) {
    return thirdPartyAccountCreationSuccess(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
  }) {
    return thirdPartyAccountCreationSuccess?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (thirdPartyAccountCreationSuccess != null) {
      return thirdPartyAccountCreationSuccess(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PhoneVerificationLoading value)
        phoneVerificationLoading,
    required TResult Function(SMSCodeSentToClient value) SMSCodeSentToClient,
    required TResult Function(PhoneVerificationError value)
        phoneVerificationError,
    required TResult Function(SMSCodeInvalid value) smsCodeInvalid,
    required TResult Function(CredentialLoginLoading value)
        credentialLoginLoading,
    required TResult Function(CredentialLoginError value) credentialLoginError,
    required TResult Function(AccountCreationSuccess value)
        accountCreationSuccess,
    required TResult Function(AccountCreationError value) accountCreationError,
    required TResult Function(ThirdPartyAccountCreationSuccess value)
        thirdPartyAccountCreationSuccess,
    required TResult Function(RemoteConfigLoading value) remoteConfigLoading,
    required TResult Function(RemoteConfigError value) remoteConfigError,
    required TResult Function(RemoteConfigSuccess value) remoteConfigSuccess,
  }) {
    return thirdPartyAccountCreationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
  }) {
    return thirdPartyAccountCreationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (thirdPartyAccountCreationSuccess != null) {
      return thirdPartyAccountCreationSuccess(this);
    }
    return orElse();
  }
}

abstract class ThirdPartyAccountCreationSuccess implements AuthState {
  const factory ThirdPartyAccountCreationSuccess(
          final Tuple2<FarmhubUser, bool> result) =
      _$ThirdPartyAccountCreationSuccess;

  Tuple2<FarmhubUser, bool> get result;
  @JsonKey(ignore: true)
  _$$ThirdPartyAccountCreationSuccessCopyWith<
          _$ThirdPartyAccountCreationSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoteConfigLoadingCopyWith<$Res> {
  factory _$$RemoteConfigLoadingCopyWith(_$RemoteConfigLoading value,
          $Res Function(_$RemoteConfigLoading) then) =
      __$$RemoteConfigLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoteConfigLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$RemoteConfigLoadingCopyWith<$Res> {
  __$$RemoteConfigLoadingCopyWithImpl(
      _$RemoteConfigLoading _value, $Res Function(_$RemoteConfigLoading) _then)
      : super(_value, (v) => _then(v as _$RemoteConfigLoading));

  @override
  _$RemoteConfigLoading get _value => super._value as _$RemoteConfigLoading;
}

/// @nodoc

class _$RemoteConfigLoading implements RemoteConfigLoading {
  const _$RemoteConfigLoading();

  @override
  String toString() {
    return 'AuthState.remoteConfigLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoteConfigLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phoneVerificationLoading,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        SMSCodeSentToClient,
    required TResult Function(Failure failure) phoneVerificationError,
    required TResult Function() smsCodeInvalid,
    required TResult Function() credentialLoginLoading,
    required TResult Function(Failure failure) credentialLoginError,
    required TResult Function(FarmhubUser user) accountCreationSuccess,
    required TResult Function(Failure failure) accountCreationError,
    required TResult Function(Tuple2<FarmhubUser, bool> result)
        thirdPartyAccountCreationSuccess,
    required TResult Function() remoteConfigLoading,
    required TResult Function(Failure failure) remoteConfigError,
    required TResult Function() remoteConfigSuccess,
  }) {
    return remoteConfigLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
  }) {
    return remoteConfigLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (remoteConfigLoading != null) {
      return remoteConfigLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PhoneVerificationLoading value)
        phoneVerificationLoading,
    required TResult Function(SMSCodeSentToClient value) SMSCodeSentToClient,
    required TResult Function(PhoneVerificationError value)
        phoneVerificationError,
    required TResult Function(SMSCodeInvalid value) smsCodeInvalid,
    required TResult Function(CredentialLoginLoading value)
        credentialLoginLoading,
    required TResult Function(CredentialLoginError value) credentialLoginError,
    required TResult Function(AccountCreationSuccess value)
        accountCreationSuccess,
    required TResult Function(AccountCreationError value) accountCreationError,
    required TResult Function(ThirdPartyAccountCreationSuccess value)
        thirdPartyAccountCreationSuccess,
    required TResult Function(RemoteConfigLoading value) remoteConfigLoading,
    required TResult Function(RemoteConfigError value) remoteConfigError,
    required TResult Function(RemoteConfigSuccess value) remoteConfigSuccess,
  }) {
    return remoteConfigLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
  }) {
    return remoteConfigLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (remoteConfigLoading != null) {
      return remoteConfigLoading(this);
    }
    return orElse();
  }
}

abstract class RemoteConfigLoading implements AuthState {
  const factory RemoteConfigLoading() = _$RemoteConfigLoading;
}

/// @nodoc
abstract class _$$RemoteConfigErrorCopyWith<$Res> {
  factory _$$RemoteConfigErrorCopyWith(
          _$RemoteConfigError value, $Res Function(_$RemoteConfigError) then) =
      __$$RemoteConfigErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$$RemoteConfigErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$RemoteConfigErrorCopyWith<$Res> {
  __$$RemoteConfigErrorCopyWithImpl(
      _$RemoteConfigError _value, $Res Function(_$RemoteConfigError) _then)
      : super(_value, (v) => _then(v as _$RemoteConfigError));

  @override
  _$RemoteConfigError get _value => super._value as _$RemoteConfigError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$RemoteConfigError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$RemoteConfigError implements RemoteConfigError {
  const _$RemoteConfigError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AuthState.remoteConfigError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteConfigError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$RemoteConfigErrorCopyWith<_$RemoteConfigError> get copyWith =>
      __$$RemoteConfigErrorCopyWithImpl<_$RemoteConfigError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phoneVerificationLoading,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        SMSCodeSentToClient,
    required TResult Function(Failure failure) phoneVerificationError,
    required TResult Function() smsCodeInvalid,
    required TResult Function() credentialLoginLoading,
    required TResult Function(Failure failure) credentialLoginError,
    required TResult Function(FarmhubUser user) accountCreationSuccess,
    required TResult Function(Failure failure) accountCreationError,
    required TResult Function(Tuple2<FarmhubUser, bool> result)
        thirdPartyAccountCreationSuccess,
    required TResult Function() remoteConfigLoading,
    required TResult Function(Failure failure) remoteConfigError,
    required TResult Function() remoteConfigSuccess,
  }) {
    return remoteConfigError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
  }) {
    return remoteConfigError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (remoteConfigError != null) {
      return remoteConfigError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PhoneVerificationLoading value)
        phoneVerificationLoading,
    required TResult Function(SMSCodeSentToClient value) SMSCodeSentToClient,
    required TResult Function(PhoneVerificationError value)
        phoneVerificationError,
    required TResult Function(SMSCodeInvalid value) smsCodeInvalid,
    required TResult Function(CredentialLoginLoading value)
        credentialLoginLoading,
    required TResult Function(CredentialLoginError value) credentialLoginError,
    required TResult Function(AccountCreationSuccess value)
        accountCreationSuccess,
    required TResult Function(AccountCreationError value) accountCreationError,
    required TResult Function(ThirdPartyAccountCreationSuccess value)
        thirdPartyAccountCreationSuccess,
    required TResult Function(RemoteConfigLoading value) remoteConfigLoading,
    required TResult Function(RemoteConfigError value) remoteConfigError,
    required TResult Function(RemoteConfigSuccess value) remoteConfigSuccess,
  }) {
    return remoteConfigError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
  }) {
    return remoteConfigError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (remoteConfigError != null) {
      return remoteConfigError(this);
    }
    return orElse();
  }
}

abstract class RemoteConfigError implements AuthState {
  const factory RemoteConfigError(final Failure failure) = _$RemoteConfigError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$RemoteConfigErrorCopyWith<_$RemoteConfigError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoteConfigSuccessCopyWith<$Res> {
  factory _$$RemoteConfigSuccessCopyWith(_$RemoteConfigSuccess value,
          $Res Function(_$RemoteConfigSuccess) then) =
      __$$RemoteConfigSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoteConfigSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$RemoteConfigSuccessCopyWith<$Res> {
  __$$RemoteConfigSuccessCopyWithImpl(
      _$RemoteConfigSuccess _value, $Res Function(_$RemoteConfigSuccess) _then)
      : super(_value, (v) => _then(v as _$RemoteConfigSuccess));

  @override
  _$RemoteConfigSuccess get _value => super._value as _$RemoteConfigSuccess;
}

/// @nodoc

class _$RemoteConfigSuccess implements RemoteConfigSuccess {
  const _$RemoteConfigSuccess();

  @override
  String toString() {
    return 'AuthState.remoteConfigSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoteConfigSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phoneVerificationLoading,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        SMSCodeSentToClient,
    required TResult Function(Failure failure) phoneVerificationError,
    required TResult Function() smsCodeInvalid,
    required TResult Function() credentialLoginLoading,
    required TResult Function(Failure failure) credentialLoginError,
    required TResult Function(FarmhubUser user) accountCreationSuccess,
    required TResult Function(Failure failure) accountCreationError,
    required TResult Function(Tuple2<FarmhubUser, bool> result)
        thirdPartyAccountCreationSuccess,
    required TResult Function() remoteConfigLoading,
    required TResult Function(Failure failure) remoteConfigError,
    required TResult Function() remoteConfigSuccess,
  }) {
    return remoteConfigSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
  }) {
    return remoteConfigSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phoneVerificationLoading,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        SMSCodeSentToClient,
    TResult Function(Failure failure)? phoneVerificationError,
    TResult Function()? smsCodeInvalid,
    TResult Function()? credentialLoginLoading,
    TResult Function(Failure failure)? credentialLoginError,
    TResult Function(FarmhubUser user)? accountCreationSuccess,
    TResult Function(Failure failure)? accountCreationError,
    TResult Function(Tuple2<FarmhubUser, bool> result)?
        thirdPartyAccountCreationSuccess,
    TResult Function()? remoteConfigLoading,
    TResult Function(Failure failure)? remoteConfigError,
    TResult Function()? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (remoteConfigSuccess != null) {
      return remoteConfigSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PhoneVerificationLoading value)
        phoneVerificationLoading,
    required TResult Function(SMSCodeSentToClient value) SMSCodeSentToClient,
    required TResult Function(PhoneVerificationError value)
        phoneVerificationError,
    required TResult Function(SMSCodeInvalid value) smsCodeInvalid,
    required TResult Function(CredentialLoginLoading value)
        credentialLoginLoading,
    required TResult Function(CredentialLoginError value) credentialLoginError,
    required TResult Function(AccountCreationSuccess value)
        accountCreationSuccess,
    required TResult Function(AccountCreationError value) accountCreationError,
    required TResult Function(ThirdPartyAccountCreationSuccess value)
        thirdPartyAccountCreationSuccess,
    required TResult Function(RemoteConfigLoading value) remoteConfigLoading,
    required TResult Function(RemoteConfigError value) remoteConfigError,
    required TResult Function(RemoteConfigSuccess value) remoteConfigSuccess,
  }) {
    return remoteConfigSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
  }) {
    return remoteConfigSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhoneVerificationLoading value)? phoneVerificationLoading,
    TResult Function(SMSCodeSentToClient value)? SMSCodeSentToClient,
    TResult Function(PhoneVerificationError value)? phoneVerificationError,
    TResult Function(SMSCodeInvalid value)? smsCodeInvalid,
    TResult Function(CredentialLoginLoading value)? credentialLoginLoading,
    TResult Function(CredentialLoginError value)? credentialLoginError,
    TResult Function(AccountCreationSuccess value)? accountCreationSuccess,
    TResult Function(AccountCreationError value)? accountCreationError,
    TResult Function(ThirdPartyAccountCreationSuccess value)?
        thirdPartyAccountCreationSuccess,
    TResult Function(RemoteConfigLoading value)? remoteConfigLoading,
    TResult Function(RemoteConfigError value)? remoteConfigError,
    TResult Function(RemoteConfigSuccess value)? remoteConfigSuccess,
    required TResult orElse(),
  }) {
    if (remoteConfigSuccess != null) {
      return remoteConfigSuccess(this);
    }
    return orElse();
  }
}

abstract class RemoteConfigSuccess implements AuthState {
  const factory RemoteConfigSuccess() = _$RemoteConfigSuccess;
}
