// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        execLoginWithEmailAndPassword,
    required TResult Function(
            String email, String password, String username, UserType userType)
        execRegisterWithEmailAndPassword,
    required TResult Function() execRetrieveUserData,
    required TResult Function() execSignOut,
    required TResult Function(String uid) execIsAdmin,
    required TResult Function(PhoneNumber phoneNumber) verifyPhoneNumber,
    required TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)
        sendCodeAndSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(
            String email, String password, String username, UserType userType)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
    TResult Function(PhoneNumber phoneNumber)? verifyPhoneNumber,
    TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)?
        sendCodeAndSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(
            String email, String password, String username, UserType userType)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
    TResult Function(PhoneNumber phoneNumber)? verifyPhoneNumber,
    TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)?
        sendCodeAndSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AEStarted value) started,
    required TResult Function(_AEExecLoginWithEmailAndPassword value)
        execLoginWithEmailAndPassword,
    required TResult Function(_AEExecRegisterWithEmailAndPassword value)
        execRegisterWithEmailAndPassword,
    required TResult Function(_AEExecRetrieveUserData value)
        execRetrieveUserData,
    required TResult Function(_AEExecSignOut value) execSignOut,
    required TResult Function(_AEExecIsAdmin value) execIsAdmin,
    required TResult Function(_AEVerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_AESendCodeAndSignIn value) sendCodeAndSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AEStarted value)? started,
    TResult Function(_AEExecLoginWithEmailAndPassword value)?
        execLoginWithEmailAndPassword,
    TResult Function(_AEExecRegisterWithEmailAndPassword value)?
        execRegisterWithEmailAndPassword,
    TResult Function(_AEExecRetrieveUserData value)? execRetrieveUserData,
    TResult Function(_AEExecSignOut value)? execSignOut,
    TResult Function(_AEExecIsAdmin value)? execIsAdmin,
    TResult Function(_AEVerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_AESendCodeAndSignIn value)? sendCodeAndSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AEStarted value)? started,
    TResult Function(_AEExecLoginWithEmailAndPassword value)?
        execLoginWithEmailAndPassword,
    TResult Function(_AEExecRegisterWithEmailAndPassword value)?
        execRegisterWithEmailAndPassword,
    TResult Function(_AEExecRetrieveUserData value)? execRetrieveUserData,
    TResult Function(_AEExecSignOut value)? execSignOut,
    TResult Function(_AEExecIsAdmin value)? execIsAdmin,
    TResult Function(_AEVerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_AESendCodeAndSignIn value)? sendCodeAndSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$$_AEStartedCopyWith<$Res> {
  factory _$$_AEStartedCopyWith(
          _$_AEStarted value, $Res Function(_$_AEStarted) then) =
      __$$_AEStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AEStartedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_AEStartedCopyWith<$Res> {
  __$$_AEStartedCopyWithImpl(
      _$_AEStarted _value, $Res Function(_$_AEStarted) _then)
      : super(_value, (v) => _then(v as _$_AEStarted));

  @override
  _$_AEStarted get _value => super._value as _$_AEStarted;
}

/// @nodoc

class _$_AEStarted implements _AEStarted {
  const _$_AEStarted();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AEStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        execLoginWithEmailAndPassword,
    required TResult Function(
            String email, String password, String username, UserType userType)
        execRegisterWithEmailAndPassword,
    required TResult Function() execRetrieveUserData,
    required TResult Function() execSignOut,
    required TResult Function(String uid) execIsAdmin,
    required TResult Function(PhoneNumber phoneNumber) verifyPhoneNumber,
    required TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)
        sendCodeAndSignIn,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(
            String email, String password, String username, UserType userType)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
    TResult Function(PhoneNumber phoneNumber)? verifyPhoneNumber,
    TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)?
        sendCodeAndSignIn,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(
            String email, String password, String username, UserType userType)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
    TResult Function(PhoneNumber phoneNumber)? verifyPhoneNumber,
    TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)?
        sendCodeAndSignIn,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AEStarted value) started,
    required TResult Function(_AEExecLoginWithEmailAndPassword value)
        execLoginWithEmailAndPassword,
    required TResult Function(_AEExecRegisterWithEmailAndPassword value)
        execRegisterWithEmailAndPassword,
    required TResult Function(_AEExecRetrieveUserData value)
        execRetrieveUserData,
    required TResult Function(_AEExecSignOut value) execSignOut,
    required TResult Function(_AEExecIsAdmin value) execIsAdmin,
    required TResult Function(_AEVerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_AESendCodeAndSignIn value) sendCodeAndSignIn,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AEStarted value)? started,
    TResult Function(_AEExecLoginWithEmailAndPassword value)?
        execLoginWithEmailAndPassword,
    TResult Function(_AEExecRegisterWithEmailAndPassword value)?
        execRegisterWithEmailAndPassword,
    TResult Function(_AEExecRetrieveUserData value)? execRetrieveUserData,
    TResult Function(_AEExecSignOut value)? execSignOut,
    TResult Function(_AEExecIsAdmin value)? execIsAdmin,
    TResult Function(_AEVerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_AESendCodeAndSignIn value)? sendCodeAndSignIn,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AEStarted value)? started,
    TResult Function(_AEExecLoginWithEmailAndPassword value)?
        execLoginWithEmailAndPassword,
    TResult Function(_AEExecRegisterWithEmailAndPassword value)?
        execRegisterWithEmailAndPassword,
    TResult Function(_AEExecRetrieveUserData value)? execRetrieveUserData,
    TResult Function(_AEExecSignOut value)? execSignOut,
    TResult Function(_AEExecIsAdmin value)? execIsAdmin,
    TResult Function(_AEVerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_AESendCodeAndSignIn value)? sendCodeAndSignIn,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _AEStarted implements AuthEvent {
  const factory _AEStarted() = _$_AEStarted;
}

/// @nodoc
abstract class _$$_AEExecLoginWithEmailAndPasswordCopyWith<$Res> {
  factory _$$_AEExecLoginWithEmailAndPasswordCopyWith(
          _$_AEExecLoginWithEmailAndPassword value,
          $Res Function(_$_AEExecLoginWithEmailAndPassword) then) =
      __$$_AEExecLoginWithEmailAndPasswordCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$$_AEExecLoginWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_AEExecLoginWithEmailAndPasswordCopyWith<$Res> {
  __$$_AEExecLoginWithEmailAndPasswordCopyWithImpl(
      _$_AEExecLoginWithEmailAndPassword _value,
      $Res Function(_$_AEExecLoginWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as _$_AEExecLoginWithEmailAndPassword));

  @override
  _$_AEExecLoginWithEmailAndPassword get _value =>
      super._value as _$_AEExecLoginWithEmailAndPassword;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_AEExecLoginWithEmailAndPassword(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AEExecLoginWithEmailAndPassword
    implements _AEExecLoginWithEmailAndPassword {
  const _$_AEExecLoginWithEmailAndPassword(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.execLoginWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AEExecLoginWithEmailAndPassword &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_AEExecLoginWithEmailAndPasswordCopyWith<
          _$_AEExecLoginWithEmailAndPassword>
      get copyWith => __$$_AEExecLoginWithEmailAndPasswordCopyWithImpl<
          _$_AEExecLoginWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        execLoginWithEmailAndPassword,
    required TResult Function(
            String email, String password, String username, UserType userType)
        execRegisterWithEmailAndPassword,
    required TResult Function() execRetrieveUserData,
    required TResult Function() execSignOut,
    required TResult Function(String uid) execIsAdmin,
    required TResult Function(PhoneNumber phoneNumber) verifyPhoneNumber,
    required TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)
        sendCodeAndSignIn,
  }) {
    return execLoginWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(
            String email, String password, String username, UserType userType)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
    TResult Function(PhoneNumber phoneNumber)? verifyPhoneNumber,
    TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)?
        sendCodeAndSignIn,
  }) {
    return execLoginWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(
            String email, String password, String username, UserType userType)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
    TResult Function(PhoneNumber phoneNumber)? verifyPhoneNumber,
    TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)?
        sendCodeAndSignIn,
    required TResult orElse(),
  }) {
    if (execLoginWithEmailAndPassword != null) {
      return execLoginWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AEStarted value) started,
    required TResult Function(_AEExecLoginWithEmailAndPassword value)
        execLoginWithEmailAndPassword,
    required TResult Function(_AEExecRegisterWithEmailAndPassword value)
        execRegisterWithEmailAndPassword,
    required TResult Function(_AEExecRetrieveUserData value)
        execRetrieveUserData,
    required TResult Function(_AEExecSignOut value) execSignOut,
    required TResult Function(_AEExecIsAdmin value) execIsAdmin,
    required TResult Function(_AEVerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_AESendCodeAndSignIn value) sendCodeAndSignIn,
  }) {
    return execLoginWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AEStarted value)? started,
    TResult Function(_AEExecLoginWithEmailAndPassword value)?
        execLoginWithEmailAndPassword,
    TResult Function(_AEExecRegisterWithEmailAndPassword value)?
        execRegisterWithEmailAndPassword,
    TResult Function(_AEExecRetrieveUserData value)? execRetrieveUserData,
    TResult Function(_AEExecSignOut value)? execSignOut,
    TResult Function(_AEExecIsAdmin value)? execIsAdmin,
    TResult Function(_AEVerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_AESendCodeAndSignIn value)? sendCodeAndSignIn,
  }) {
    return execLoginWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AEStarted value)? started,
    TResult Function(_AEExecLoginWithEmailAndPassword value)?
        execLoginWithEmailAndPassword,
    TResult Function(_AEExecRegisterWithEmailAndPassword value)?
        execRegisterWithEmailAndPassword,
    TResult Function(_AEExecRetrieveUserData value)? execRetrieveUserData,
    TResult Function(_AEExecSignOut value)? execSignOut,
    TResult Function(_AEExecIsAdmin value)? execIsAdmin,
    TResult Function(_AEVerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_AESendCodeAndSignIn value)? sendCodeAndSignIn,
    required TResult orElse(),
  }) {
    if (execLoginWithEmailAndPassword != null) {
      return execLoginWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _AEExecLoginWithEmailAndPassword implements AuthEvent {
  const factory _AEExecLoginWithEmailAndPassword(
      {required final String email,
      required final String password}) = _$_AEExecLoginWithEmailAndPassword;

  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AEExecLoginWithEmailAndPasswordCopyWith<
          _$_AEExecLoginWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AEExecRegisterWithEmailAndPasswordCopyWith<$Res> {
  factory _$$_AEExecRegisterWithEmailAndPasswordCopyWith(
          _$_AEExecRegisterWithEmailAndPassword value,
          $Res Function(_$_AEExecRegisterWithEmailAndPassword) then) =
      __$$_AEExecRegisterWithEmailAndPasswordCopyWithImpl<$Res>;
  $Res call(
      {String email, String password, String username, UserType userType});
}

/// @nodoc
class __$$_AEExecRegisterWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_AEExecRegisterWithEmailAndPasswordCopyWith<$Res> {
  __$$_AEExecRegisterWithEmailAndPasswordCopyWithImpl(
      _$_AEExecRegisterWithEmailAndPassword _value,
      $Res Function(_$_AEExecRegisterWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as _$_AEExecRegisterWithEmailAndPassword));

  @override
  _$_AEExecRegisterWithEmailAndPassword get _value =>
      super._value as _$_AEExecRegisterWithEmailAndPassword;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? username = freezed,
    Object? userType = freezed,
  }) {
    return _then(_$_AEExecRegisterWithEmailAndPassword(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
    ));
  }
}

/// @nodoc

class _$_AEExecRegisterWithEmailAndPassword
    implements _AEExecRegisterWithEmailAndPassword {
  const _$_AEExecRegisterWithEmailAndPassword(
      {required this.email,
      required this.password,
      required this.username,
      required this.userType});

  @override
  final String email;
  @override
  final String password;
  @override
  final String username;
  @override
  final UserType userType;

  @override
  String toString() {
    return 'AuthEvent.execRegisterWithEmailAndPassword(email: $email, password: $password, username: $username, userType: $userType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AEExecRegisterWithEmailAndPassword &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.userType, userType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(userType));

  @JsonKey(ignore: true)
  @override
  _$$_AEExecRegisterWithEmailAndPasswordCopyWith<
          _$_AEExecRegisterWithEmailAndPassword>
      get copyWith => __$$_AEExecRegisterWithEmailAndPasswordCopyWithImpl<
          _$_AEExecRegisterWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        execLoginWithEmailAndPassword,
    required TResult Function(
            String email, String password, String username, UserType userType)
        execRegisterWithEmailAndPassword,
    required TResult Function() execRetrieveUserData,
    required TResult Function() execSignOut,
    required TResult Function(String uid) execIsAdmin,
    required TResult Function(PhoneNumber phoneNumber) verifyPhoneNumber,
    required TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)
        sendCodeAndSignIn,
  }) {
    return execRegisterWithEmailAndPassword(
        email, password, username, userType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(
            String email, String password, String username, UserType userType)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
    TResult Function(PhoneNumber phoneNumber)? verifyPhoneNumber,
    TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)?
        sendCodeAndSignIn,
  }) {
    return execRegisterWithEmailAndPassword?.call(
        email, password, username, userType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(
            String email, String password, String username, UserType userType)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
    TResult Function(PhoneNumber phoneNumber)? verifyPhoneNumber,
    TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)?
        sendCodeAndSignIn,
    required TResult orElse(),
  }) {
    if (execRegisterWithEmailAndPassword != null) {
      return execRegisterWithEmailAndPassword(
          email, password, username, userType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AEStarted value) started,
    required TResult Function(_AEExecLoginWithEmailAndPassword value)
        execLoginWithEmailAndPassword,
    required TResult Function(_AEExecRegisterWithEmailAndPassword value)
        execRegisterWithEmailAndPassword,
    required TResult Function(_AEExecRetrieveUserData value)
        execRetrieveUserData,
    required TResult Function(_AEExecSignOut value) execSignOut,
    required TResult Function(_AEExecIsAdmin value) execIsAdmin,
    required TResult Function(_AEVerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_AESendCodeAndSignIn value) sendCodeAndSignIn,
  }) {
    return execRegisterWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AEStarted value)? started,
    TResult Function(_AEExecLoginWithEmailAndPassword value)?
        execLoginWithEmailAndPassword,
    TResult Function(_AEExecRegisterWithEmailAndPassword value)?
        execRegisterWithEmailAndPassword,
    TResult Function(_AEExecRetrieveUserData value)? execRetrieveUserData,
    TResult Function(_AEExecSignOut value)? execSignOut,
    TResult Function(_AEExecIsAdmin value)? execIsAdmin,
    TResult Function(_AEVerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_AESendCodeAndSignIn value)? sendCodeAndSignIn,
  }) {
    return execRegisterWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AEStarted value)? started,
    TResult Function(_AEExecLoginWithEmailAndPassword value)?
        execLoginWithEmailAndPassword,
    TResult Function(_AEExecRegisterWithEmailAndPassword value)?
        execRegisterWithEmailAndPassword,
    TResult Function(_AEExecRetrieveUserData value)? execRetrieveUserData,
    TResult Function(_AEExecSignOut value)? execSignOut,
    TResult Function(_AEExecIsAdmin value)? execIsAdmin,
    TResult Function(_AEVerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_AESendCodeAndSignIn value)? sendCodeAndSignIn,
    required TResult orElse(),
  }) {
    if (execRegisterWithEmailAndPassword != null) {
      return execRegisterWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _AEExecRegisterWithEmailAndPassword implements AuthEvent {
  const factory _AEExecRegisterWithEmailAndPassword(
          {required final String email,
          required final String password,
          required final String username,
          required final UserType userType}) =
      _$_AEExecRegisterWithEmailAndPassword;

  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  UserType get userType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AEExecRegisterWithEmailAndPasswordCopyWith<
          _$_AEExecRegisterWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AEExecRetrieveUserDataCopyWith<$Res> {
  factory _$$_AEExecRetrieveUserDataCopyWith(_$_AEExecRetrieveUserData value,
          $Res Function(_$_AEExecRetrieveUserData) then) =
      __$$_AEExecRetrieveUserDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AEExecRetrieveUserDataCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_AEExecRetrieveUserDataCopyWith<$Res> {
  __$$_AEExecRetrieveUserDataCopyWithImpl(_$_AEExecRetrieveUserData _value,
      $Res Function(_$_AEExecRetrieveUserData) _then)
      : super(_value, (v) => _then(v as _$_AEExecRetrieveUserData));

  @override
  _$_AEExecRetrieveUserData get _value =>
      super._value as _$_AEExecRetrieveUserData;
}

/// @nodoc

class _$_AEExecRetrieveUserData implements _AEExecRetrieveUserData {
  const _$_AEExecRetrieveUserData();

  @override
  String toString() {
    return 'AuthEvent.execRetrieveUserData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AEExecRetrieveUserData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        execLoginWithEmailAndPassword,
    required TResult Function(
            String email, String password, String username, UserType userType)
        execRegisterWithEmailAndPassword,
    required TResult Function() execRetrieveUserData,
    required TResult Function() execSignOut,
    required TResult Function(String uid) execIsAdmin,
    required TResult Function(PhoneNumber phoneNumber) verifyPhoneNumber,
    required TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)
        sendCodeAndSignIn,
  }) {
    return execRetrieveUserData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(
            String email, String password, String username, UserType userType)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
    TResult Function(PhoneNumber phoneNumber)? verifyPhoneNumber,
    TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)?
        sendCodeAndSignIn,
  }) {
    return execRetrieveUserData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(
            String email, String password, String username, UserType userType)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
    TResult Function(PhoneNumber phoneNumber)? verifyPhoneNumber,
    TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)?
        sendCodeAndSignIn,
    required TResult orElse(),
  }) {
    if (execRetrieveUserData != null) {
      return execRetrieveUserData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AEStarted value) started,
    required TResult Function(_AEExecLoginWithEmailAndPassword value)
        execLoginWithEmailAndPassword,
    required TResult Function(_AEExecRegisterWithEmailAndPassword value)
        execRegisterWithEmailAndPassword,
    required TResult Function(_AEExecRetrieveUserData value)
        execRetrieveUserData,
    required TResult Function(_AEExecSignOut value) execSignOut,
    required TResult Function(_AEExecIsAdmin value) execIsAdmin,
    required TResult Function(_AEVerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_AESendCodeAndSignIn value) sendCodeAndSignIn,
  }) {
    return execRetrieveUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AEStarted value)? started,
    TResult Function(_AEExecLoginWithEmailAndPassword value)?
        execLoginWithEmailAndPassword,
    TResult Function(_AEExecRegisterWithEmailAndPassword value)?
        execRegisterWithEmailAndPassword,
    TResult Function(_AEExecRetrieveUserData value)? execRetrieveUserData,
    TResult Function(_AEExecSignOut value)? execSignOut,
    TResult Function(_AEExecIsAdmin value)? execIsAdmin,
    TResult Function(_AEVerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_AESendCodeAndSignIn value)? sendCodeAndSignIn,
  }) {
    return execRetrieveUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AEStarted value)? started,
    TResult Function(_AEExecLoginWithEmailAndPassword value)?
        execLoginWithEmailAndPassword,
    TResult Function(_AEExecRegisterWithEmailAndPassword value)?
        execRegisterWithEmailAndPassword,
    TResult Function(_AEExecRetrieveUserData value)? execRetrieveUserData,
    TResult Function(_AEExecSignOut value)? execSignOut,
    TResult Function(_AEExecIsAdmin value)? execIsAdmin,
    TResult Function(_AEVerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_AESendCodeAndSignIn value)? sendCodeAndSignIn,
    required TResult orElse(),
  }) {
    if (execRetrieveUserData != null) {
      return execRetrieveUserData(this);
    }
    return orElse();
  }
}

abstract class _AEExecRetrieveUserData implements AuthEvent {
  const factory _AEExecRetrieveUserData() = _$_AEExecRetrieveUserData;
}

/// @nodoc
abstract class _$$_AEExecSignOutCopyWith<$Res> {
  factory _$$_AEExecSignOutCopyWith(
          _$_AEExecSignOut value, $Res Function(_$_AEExecSignOut) then) =
      __$$_AEExecSignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AEExecSignOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_AEExecSignOutCopyWith<$Res> {
  __$$_AEExecSignOutCopyWithImpl(
      _$_AEExecSignOut _value, $Res Function(_$_AEExecSignOut) _then)
      : super(_value, (v) => _then(v as _$_AEExecSignOut));

  @override
  _$_AEExecSignOut get _value => super._value as _$_AEExecSignOut;
}

/// @nodoc

class _$_AEExecSignOut implements _AEExecSignOut {
  const _$_AEExecSignOut();

  @override
  String toString() {
    return 'AuthEvent.execSignOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AEExecSignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        execLoginWithEmailAndPassword,
    required TResult Function(
            String email, String password, String username, UserType userType)
        execRegisterWithEmailAndPassword,
    required TResult Function() execRetrieveUserData,
    required TResult Function() execSignOut,
    required TResult Function(String uid) execIsAdmin,
    required TResult Function(PhoneNumber phoneNumber) verifyPhoneNumber,
    required TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)
        sendCodeAndSignIn,
  }) {
    return execSignOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(
            String email, String password, String username, UserType userType)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
    TResult Function(PhoneNumber phoneNumber)? verifyPhoneNumber,
    TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)?
        sendCodeAndSignIn,
  }) {
    return execSignOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(
            String email, String password, String username, UserType userType)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
    TResult Function(PhoneNumber phoneNumber)? verifyPhoneNumber,
    TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)?
        sendCodeAndSignIn,
    required TResult orElse(),
  }) {
    if (execSignOut != null) {
      return execSignOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AEStarted value) started,
    required TResult Function(_AEExecLoginWithEmailAndPassword value)
        execLoginWithEmailAndPassword,
    required TResult Function(_AEExecRegisterWithEmailAndPassword value)
        execRegisterWithEmailAndPassword,
    required TResult Function(_AEExecRetrieveUserData value)
        execRetrieveUserData,
    required TResult Function(_AEExecSignOut value) execSignOut,
    required TResult Function(_AEExecIsAdmin value) execIsAdmin,
    required TResult Function(_AEVerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_AESendCodeAndSignIn value) sendCodeAndSignIn,
  }) {
    return execSignOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AEStarted value)? started,
    TResult Function(_AEExecLoginWithEmailAndPassword value)?
        execLoginWithEmailAndPassword,
    TResult Function(_AEExecRegisterWithEmailAndPassword value)?
        execRegisterWithEmailAndPassword,
    TResult Function(_AEExecRetrieveUserData value)? execRetrieveUserData,
    TResult Function(_AEExecSignOut value)? execSignOut,
    TResult Function(_AEExecIsAdmin value)? execIsAdmin,
    TResult Function(_AEVerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_AESendCodeAndSignIn value)? sendCodeAndSignIn,
  }) {
    return execSignOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AEStarted value)? started,
    TResult Function(_AEExecLoginWithEmailAndPassword value)?
        execLoginWithEmailAndPassword,
    TResult Function(_AEExecRegisterWithEmailAndPassword value)?
        execRegisterWithEmailAndPassword,
    TResult Function(_AEExecRetrieveUserData value)? execRetrieveUserData,
    TResult Function(_AEExecSignOut value)? execSignOut,
    TResult Function(_AEExecIsAdmin value)? execIsAdmin,
    TResult Function(_AEVerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_AESendCodeAndSignIn value)? sendCodeAndSignIn,
    required TResult orElse(),
  }) {
    if (execSignOut != null) {
      return execSignOut(this);
    }
    return orElse();
  }
}

abstract class _AEExecSignOut implements AuthEvent {
  const factory _AEExecSignOut() = _$_AEExecSignOut;
}

/// @nodoc
abstract class _$$_AEExecIsAdminCopyWith<$Res> {
  factory _$$_AEExecIsAdminCopyWith(
          _$_AEExecIsAdmin value, $Res Function(_$_AEExecIsAdmin) then) =
      __$$_AEExecIsAdminCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class __$$_AEExecIsAdminCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_AEExecIsAdminCopyWith<$Res> {
  __$$_AEExecIsAdminCopyWithImpl(
      _$_AEExecIsAdmin _value, $Res Function(_$_AEExecIsAdmin) _then)
      : super(_value, (v) => _then(v as _$_AEExecIsAdmin));

  @override
  _$_AEExecIsAdmin get _value => super._value as _$_AEExecIsAdmin;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_$_AEExecIsAdmin(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AEExecIsAdmin implements _AEExecIsAdmin {
  const _$_AEExecIsAdmin(this.uid);

  @override
  final String uid;

  @override
  String toString() {
    return 'AuthEvent.execIsAdmin(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AEExecIsAdmin &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$$_AEExecIsAdminCopyWith<_$_AEExecIsAdmin> get copyWith =>
      __$$_AEExecIsAdminCopyWithImpl<_$_AEExecIsAdmin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        execLoginWithEmailAndPassword,
    required TResult Function(
            String email, String password, String username, UserType userType)
        execRegisterWithEmailAndPassword,
    required TResult Function() execRetrieveUserData,
    required TResult Function() execSignOut,
    required TResult Function(String uid) execIsAdmin,
    required TResult Function(PhoneNumber phoneNumber) verifyPhoneNumber,
    required TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)
        sendCodeAndSignIn,
  }) {
    return execIsAdmin(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(
            String email, String password, String username, UserType userType)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
    TResult Function(PhoneNumber phoneNumber)? verifyPhoneNumber,
    TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)?
        sendCodeAndSignIn,
  }) {
    return execIsAdmin?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(
            String email, String password, String username, UserType userType)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
    TResult Function(PhoneNumber phoneNumber)? verifyPhoneNumber,
    TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)?
        sendCodeAndSignIn,
    required TResult orElse(),
  }) {
    if (execIsAdmin != null) {
      return execIsAdmin(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AEStarted value) started,
    required TResult Function(_AEExecLoginWithEmailAndPassword value)
        execLoginWithEmailAndPassword,
    required TResult Function(_AEExecRegisterWithEmailAndPassword value)
        execRegisterWithEmailAndPassword,
    required TResult Function(_AEExecRetrieveUserData value)
        execRetrieveUserData,
    required TResult Function(_AEExecSignOut value) execSignOut,
    required TResult Function(_AEExecIsAdmin value) execIsAdmin,
    required TResult Function(_AEVerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_AESendCodeAndSignIn value) sendCodeAndSignIn,
  }) {
    return execIsAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AEStarted value)? started,
    TResult Function(_AEExecLoginWithEmailAndPassword value)?
        execLoginWithEmailAndPassword,
    TResult Function(_AEExecRegisterWithEmailAndPassword value)?
        execRegisterWithEmailAndPassword,
    TResult Function(_AEExecRetrieveUserData value)? execRetrieveUserData,
    TResult Function(_AEExecSignOut value)? execSignOut,
    TResult Function(_AEExecIsAdmin value)? execIsAdmin,
    TResult Function(_AEVerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_AESendCodeAndSignIn value)? sendCodeAndSignIn,
  }) {
    return execIsAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AEStarted value)? started,
    TResult Function(_AEExecLoginWithEmailAndPassword value)?
        execLoginWithEmailAndPassword,
    TResult Function(_AEExecRegisterWithEmailAndPassword value)?
        execRegisterWithEmailAndPassword,
    TResult Function(_AEExecRetrieveUserData value)? execRetrieveUserData,
    TResult Function(_AEExecSignOut value)? execSignOut,
    TResult Function(_AEExecIsAdmin value)? execIsAdmin,
    TResult Function(_AEVerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_AESendCodeAndSignIn value)? sendCodeAndSignIn,
    required TResult orElse(),
  }) {
    if (execIsAdmin != null) {
      return execIsAdmin(this);
    }
    return orElse();
  }
}

abstract class _AEExecIsAdmin implements AuthEvent {
  const factory _AEExecIsAdmin(final String uid) = _$_AEExecIsAdmin;

  String get uid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AEExecIsAdminCopyWith<_$_AEExecIsAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AEVerifyPhoneNumberCopyWith<$Res> {
  factory _$$_AEVerifyPhoneNumberCopyWith(_$_AEVerifyPhoneNumber value,
          $Res Function(_$_AEVerifyPhoneNumber) then) =
      __$$_AEVerifyPhoneNumberCopyWithImpl<$Res>;
  $Res call({PhoneNumber phoneNumber});
}

/// @nodoc
class __$$_AEVerifyPhoneNumberCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_AEVerifyPhoneNumberCopyWith<$Res> {
  __$$_AEVerifyPhoneNumberCopyWithImpl(_$_AEVerifyPhoneNumber _value,
      $Res Function(_$_AEVerifyPhoneNumber) _then)
      : super(_value, (v) => _then(v as _$_AEVerifyPhoneNumber));

  @override
  _$_AEVerifyPhoneNumber get _value => super._value as _$_AEVerifyPhoneNumber;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_AEVerifyPhoneNumber(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
    ));
  }
}

/// @nodoc

class _$_AEVerifyPhoneNumber implements _AEVerifyPhoneNumber {
  const _$_AEVerifyPhoneNumber(this.phoneNumber);

  @override
  final PhoneNumber phoneNumber;

  @override
  String toString() {
    return 'AuthEvent.verifyPhoneNumber(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AEVerifyPhoneNumber &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$$_AEVerifyPhoneNumberCopyWith<_$_AEVerifyPhoneNumber> get copyWith =>
      __$$_AEVerifyPhoneNumberCopyWithImpl<_$_AEVerifyPhoneNumber>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        execLoginWithEmailAndPassword,
    required TResult Function(
            String email, String password, String username, UserType userType)
        execRegisterWithEmailAndPassword,
    required TResult Function() execRetrieveUserData,
    required TResult Function() execSignOut,
    required TResult Function(String uid) execIsAdmin,
    required TResult Function(PhoneNumber phoneNumber) verifyPhoneNumber,
    required TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)
        sendCodeAndSignIn,
  }) {
    return verifyPhoneNumber(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(
            String email, String password, String username, UserType userType)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
    TResult Function(PhoneNumber phoneNumber)? verifyPhoneNumber,
    TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)?
        sendCodeAndSignIn,
  }) {
    return verifyPhoneNumber?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(
            String email, String password, String username, UserType userType)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
    TResult Function(PhoneNumber phoneNumber)? verifyPhoneNumber,
    TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)?
        sendCodeAndSignIn,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AEStarted value) started,
    required TResult Function(_AEExecLoginWithEmailAndPassword value)
        execLoginWithEmailAndPassword,
    required TResult Function(_AEExecRegisterWithEmailAndPassword value)
        execRegisterWithEmailAndPassword,
    required TResult Function(_AEExecRetrieveUserData value)
        execRetrieveUserData,
    required TResult Function(_AEExecSignOut value) execSignOut,
    required TResult Function(_AEExecIsAdmin value) execIsAdmin,
    required TResult Function(_AEVerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_AESendCodeAndSignIn value) sendCodeAndSignIn,
  }) {
    return verifyPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AEStarted value)? started,
    TResult Function(_AEExecLoginWithEmailAndPassword value)?
        execLoginWithEmailAndPassword,
    TResult Function(_AEExecRegisterWithEmailAndPassword value)?
        execRegisterWithEmailAndPassword,
    TResult Function(_AEExecRetrieveUserData value)? execRetrieveUserData,
    TResult Function(_AEExecSignOut value)? execSignOut,
    TResult Function(_AEExecIsAdmin value)? execIsAdmin,
    TResult Function(_AEVerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_AESendCodeAndSignIn value)? sendCodeAndSignIn,
  }) {
    return verifyPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AEStarted value)? started,
    TResult Function(_AEExecLoginWithEmailAndPassword value)?
        execLoginWithEmailAndPassword,
    TResult Function(_AEExecRegisterWithEmailAndPassword value)?
        execRegisterWithEmailAndPassword,
    TResult Function(_AEExecRetrieveUserData value)? execRetrieveUserData,
    TResult Function(_AEExecSignOut value)? execSignOut,
    TResult Function(_AEExecIsAdmin value)? execIsAdmin,
    TResult Function(_AEVerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_AESendCodeAndSignIn value)? sendCodeAndSignIn,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _AEVerifyPhoneNumber implements AuthEvent {
  const factory _AEVerifyPhoneNumber(final PhoneNumber phoneNumber) =
      _$_AEVerifyPhoneNumber;

  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AEVerifyPhoneNumberCopyWith<_$_AEVerifyPhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AESendCodeAndSignInCopyWith<$Res> {
  factory _$$_AESendCodeAndSignInCopyWith(_$_AESendCodeAndSignIn value,
          $Res Function(_$_AESendCodeAndSignIn) then) =
      __$$_AESendCodeAndSignInCopyWithImpl<$Res>;
  $Res call({String verificationId, String code, PhoneNumber phoneNumber});
}

/// @nodoc
class __$$_AESendCodeAndSignInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_AESendCodeAndSignInCopyWith<$Res> {
  __$$_AESendCodeAndSignInCopyWithImpl(_$_AESendCodeAndSignIn _value,
      $Res Function(_$_AESendCodeAndSignIn) _then)
      : super(_value, (v) => _then(v as _$_AESendCodeAndSignIn));

  @override
  _$_AESendCodeAndSignIn get _value => super._value as _$_AESendCodeAndSignIn;

  @override
  $Res call({
    Object? verificationId = freezed,
    Object? code = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_AESendCodeAndSignIn(
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
    ));
  }
}

/// @nodoc

class _$_AESendCodeAndSignIn implements _AESendCodeAndSignIn {
  const _$_AESendCodeAndSignIn(
      {required this.verificationId,
      required this.code,
      required this.phoneNumber});

  @override
  final String verificationId;
  @override
  final String code;
  @override
  final PhoneNumber phoneNumber;

  @override
  String toString() {
    return 'AuthEvent.sendCodeAndSignIn(verificationId: $verificationId, code: $code, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AESendCodeAndSignIn &&
            const DeepCollectionEquality()
                .equals(other.verificationId, verificationId) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(verificationId),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$$_AESendCodeAndSignInCopyWith<_$_AESendCodeAndSignIn> get copyWith =>
      __$$_AESendCodeAndSignInCopyWithImpl<_$_AESendCodeAndSignIn>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        execLoginWithEmailAndPassword,
    required TResult Function(
            String email, String password, String username, UserType userType)
        execRegisterWithEmailAndPassword,
    required TResult Function() execRetrieveUserData,
    required TResult Function() execSignOut,
    required TResult Function(String uid) execIsAdmin,
    required TResult Function(PhoneNumber phoneNumber) verifyPhoneNumber,
    required TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)
        sendCodeAndSignIn,
  }) {
    return sendCodeAndSignIn(verificationId, code, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(
            String email, String password, String username, UserType userType)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
    TResult Function(PhoneNumber phoneNumber)? verifyPhoneNumber,
    TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)?
        sendCodeAndSignIn,
  }) {
    return sendCodeAndSignIn?.call(verificationId, code, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(
            String email, String password, String username, UserType userType)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
    TResult Function(PhoneNumber phoneNumber)? verifyPhoneNumber,
    TResult Function(
            String verificationId, String code, PhoneNumber phoneNumber)?
        sendCodeAndSignIn,
    required TResult orElse(),
  }) {
    if (sendCodeAndSignIn != null) {
      return sendCodeAndSignIn(verificationId, code, phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AEStarted value) started,
    required TResult Function(_AEExecLoginWithEmailAndPassword value)
        execLoginWithEmailAndPassword,
    required TResult Function(_AEExecRegisterWithEmailAndPassword value)
        execRegisterWithEmailAndPassword,
    required TResult Function(_AEExecRetrieveUserData value)
        execRetrieveUserData,
    required TResult Function(_AEExecSignOut value) execSignOut,
    required TResult Function(_AEExecIsAdmin value) execIsAdmin,
    required TResult Function(_AEVerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_AESendCodeAndSignIn value) sendCodeAndSignIn,
  }) {
    return sendCodeAndSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AEStarted value)? started,
    TResult Function(_AEExecLoginWithEmailAndPassword value)?
        execLoginWithEmailAndPassword,
    TResult Function(_AEExecRegisterWithEmailAndPassword value)?
        execRegisterWithEmailAndPassword,
    TResult Function(_AEExecRetrieveUserData value)? execRetrieveUserData,
    TResult Function(_AEExecSignOut value)? execSignOut,
    TResult Function(_AEExecIsAdmin value)? execIsAdmin,
    TResult Function(_AEVerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_AESendCodeAndSignIn value)? sendCodeAndSignIn,
  }) {
    return sendCodeAndSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AEStarted value)? started,
    TResult Function(_AEExecLoginWithEmailAndPassword value)?
        execLoginWithEmailAndPassword,
    TResult Function(_AEExecRegisterWithEmailAndPassword value)?
        execRegisterWithEmailAndPassword,
    TResult Function(_AEExecRetrieveUserData value)? execRetrieveUserData,
    TResult Function(_AEExecSignOut value)? execSignOut,
    TResult Function(_AEExecIsAdmin value)? execIsAdmin,
    TResult Function(_AEVerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_AESendCodeAndSignIn value)? sendCodeAndSignIn,
    required TResult orElse(),
  }) {
    if (sendCodeAndSignIn != null) {
      return sendCodeAndSignIn(this);
    }
    return orElse();
  }
}

abstract class _AESendCodeAndSignIn implements AuthEvent {
  const factory _AESendCodeAndSignIn(
      {required final String verificationId,
      required final String code,
      required final PhoneNumber phoneNumber}) = _$_AESendCodeAndSignIn;

  String get verificationId => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AESendCodeAndSignInCopyWith<_$_AESendCodeAndSignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
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
abstract class _$$ASInitialCopyWith<$Res> {
  factory _$$ASInitialCopyWith(
          _$ASInitial value, $Res Function(_$ASInitial) then) =
      __$$ASInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ASInitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASInitialCopyWith<$Res> {
  __$$ASInitialCopyWithImpl(
      _$ASInitial _value, $Res Function(_$ASInitial) _then)
      : super(_value, (v) => _then(v as _$ASInitial));

  @override
  _$ASInitial get _value => super._value as _$ASInitial;
}

/// @nodoc

class _$ASInitial implements ASInitial {
  const _$ASInitial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ASInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
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
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ASInitial implements AuthState {
  const factory ASInitial() = _$ASInitial;
}

/// @nodoc
abstract class _$$ASIdleCopyWith<$Res> {
  factory _$$ASIdleCopyWith(_$ASIdle value, $Res Function(_$ASIdle) then) =
      __$$ASIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ASIdleCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASIdleCopyWith<$Res> {
  __$$ASIdleCopyWithImpl(_$ASIdle _value, $Res Function(_$ASIdle) _then)
      : super(_value, (v) => _then(v as _$ASIdle));

  @override
  _$ASIdle get _value => super._value as _$ASIdle;
}

/// @nodoc

class _$ASIdle implements ASIdle {
  const _$ASIdle();

  @override
  String toString() {
    return 'AuthState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ASIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class ASIdle implements AuthState {
  const factory ASIdle() = _$ASIdle;
}

/// @nodoc
abstract class _$$ASLoadingCopyWith<$Res> {
  factory _$$ASLoadingCopyWith(
          _$ASLoading value, $Res Function(_$ASLoading) then) =
      __$$ASLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ASLoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASLoadingCopyWith<$Res> {
  __$$ASLoadingCopyWithImpl(
      _$ASLoading _value, $Res Function(_$ASLoading) _then)
      : super(_value, (v) => _then(v as _$ASLoading));

  @override
  _$ASLoading get _value => super._value as _$ASLoading;
}

/// @nodoc

class _$ASLoading implements ASLoading {
  const _$ASLoading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ASLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ASLoading implements AuthState {
  const factory ASLoading() = _$ASLoading;
}

/// @nodoc
abstract class _$$ASLoginLoadingCopyWith<$Res> {
  factory _$$ASLoginLoadingCopyWith(
          _$ASLoginLoading value, $Res Function(_$ASLoginLoading) then) =
      __$$ASLoginLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ASLoginLoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASLoginLoadingCopyWith<$Res> {
  __$$ASLoginLoadingCopyWithImpl(
      _$ASLoginLoading _value, $Res Function(_$ASLoginLoading) _then)
      : super(_value, (v) => _then(v as _$ASLoginLoading));

  @override
  _$ASLoginLoading get _value => super._value as _$ASLoginLoading;
}

/// @nodoc

class _$ASLoginLoading implements ASLoginLoading {
  const _$ASLoginLoading();

  @override
  String toString() {
    return 'AuthState.loginLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ASLoginLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return loginLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return loginLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return loginLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return loginLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading(this);
    }
    return orElse();
  }
}

abstract class ASLoginLoading implements AuthState {
  const factory ASLoginLoading() = _$ASLoginLoading;
}

/// @nodoc
abstract class _$$ASLoginSuccessCopyWith<$Res> {
  factory _$$ASLoginSuccessCopyWith(
          _$ASLoginSuccess value, $Res Function(_$ASLoginSuccess) then) =
      __$$ASLoginSuccessCopyWithImpl<$Res>;
  $Res call({FarmhubUser user});

  $FarmhubUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ASLoginSuccessCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASLoginSuccessCopyWith<$Res> {
  __$$ASLoginSuccessCopyWithImpl(
      _$ASLoginSuccess _value, $Res Function(_$ASLoginSuccess) _then)
      : super(_value, (v) => _then(v as _$ASLoginSuccess));

  @override
  _$ASLoginSuccess get _value => super._value as _$ASLoginSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$ASLoginSuccess(
      user: user == freezed
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

class _$ASLoginSuccess implements ASLoginSuccess {
  const _$ASLoginSuccess({required this.user});

  @override
  final FarmhubUser user;

  @override
  String toString() {
    return 'AuthState.loginSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ASLoginSuccess &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$ASLoginSuccessCopyWith<_$ASLoginSuccess> get copyWith =>
      __$$ASLoginSuccessCopyWithImpl<_$ASLoginSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return loginSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return loginSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class ASLoginSuccess implements AuthState {
  const factory ASLoginSuccess({required final FarmhubUser user}) =
      _$ASLoginSuccess;

  FarmhubUser get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ASLoginSuccessCopyWith<_$ASLoginSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ASLoginErrorCopyWith<$Res> {
  factory _$$ASLoginErrorCopyWith(
          _$ASLoginError value, $Res Function(_$ASLoginError) then) =
      __$$ASLoginErrorCopyWithImpl<$Res>;
  $Res call({String code, String message, StackTrace stackTrace});
}

/// @nodoc
class __$$ASLoginErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASLoginErrorCopyWith<$Res> {
  __$$ASLoginErrorCopyWithImpl(
      _$ASLoginError _value, $Res Function(_$ASLoginError) _then)
      : super(_value, (v) => _then(v as _$ASLoginError));

  @override
  _$ASLoginError get _value => super._value as _$ASLoginError;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ASLoginError(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$ASLoginError implements ASLoginError {
  const _$ASLoginError(
      {required this.code, required this.message, required this.stackTrace});

  @override
  final String code;
  @override
  final String message;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'AuthState.loginError(code: $code, message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ASLoginError &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$ASLoginErrorCopyWith<_$ASLoginError> get copyWith =>
      __$$ASLoginErrorCopyWithImpl<_$ASLoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return loginError(code, message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return loginError?.call(code, message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(code, message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return loginError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return loginError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(this);
    }
    return orElse();
  }
}

abstract class ASLoginError implements AuthState {
  const factory ASLoginError(
      {required final String code,
      required final String message,
      required final StackTrace stackTrace}) = _$ASLoginError;

  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ASLoginErrorCopyWith<_$ASLoginError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ASRegisterLoadingCopyWith<$Res> {
  factory _$$ASRegisterLoadingCopyWith(
          _$ASRegisterLoading value, $Res Function(_$ASRegisterLoading) then) =
      __$$ASRegisterLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ASRegisterLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASRegisterLoadingCopyWith<$Res> {
  __$$ASRegisterLoadingCopyWithImpl(
      _$ASRegisterLoading _value, $Res Function(_$ASRegisterLoading) _then)
      : super(_value, (v) => _then(v as _$ASRegisterLoading));

  @override
  _$ASRegisterLoading get _value => super._value as _$ASRegisterLoading;
}

/// @nodoc

class _$ASRegisterLoading implements ASRegisterLoading {
  const _$ASRegisterLoading();

  @override
  String toString() {
    return 'AuthState.registerLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ASRegisterLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return registerLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return registerLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (registerLoading != null) {
      return registerLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return registerLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return registerLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (registerLoading != null) {
      return registerLoading(this);
    }
    return orElse();
  }
}

abstract class ASRegisterLoading implements AuthState {
  const factory ASRegisterLoading() = _$ASRegisterLoading;
}

/// @nodoc
abstract class _$$ASRegisterSuccessCopyWith<$Res> {
  factory _$$ASRegisterSuccessCopyWith(
          _$ASRegisterSuccess value, $Res Function(_$ASRegisterSuccess) then) =
      __$$ASRegisterSuccessCopyWithImpl<$Res>;
  $Res call({FarmhubUser user});

  $FarmhubUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ASRegisterSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASRegisterSuccessCopyWith<$Res> {
  __$$ASRegisterSuccessCopyWithImpl(
      _$ASRegisterSuccess _value, $Res Function(_$ASRegisterSuccess) _then)
      : super(_value, (v) => _then(v as _$ASRegisterSuccess));

  @override
  _$ASRegisterSuccess get _value => super._value as _$ASRegisterSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$ASRegisterSuccess(
      user: user == freezed
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

class _$ASRegisterSuccess implements ASRegisterSuccess {
  const _$ASRegisterSuccess({required this.user});

  @override
  final FarmhubUser user;

  @override
  String toString() {
    return 'AuthState.registerSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ASRegisterSuccess &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$ASRegisterSuccessCopyWith<_$ASRegisterSuccess> get copyWith =>
      __$$ASRegisterSuccessCopyWithImpl<_$ASRegisterSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return registerSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return registerSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return registerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return registerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(this);
    }
    return orElse();
  }
}

abstract class ASRegisterSuccess implements AuthState {
  const factory ASRegisterSuccess({required final FarmhubUser user}) =
      _$ASRegisterSuccess;

  FarmhubUser get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ASRegisterSuccessCopyWith<_$ASRegisterSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ASRegisterErrorCopyWith<$Res> {
  factory _$$ASRegisterErrorCopyWith(
          _$ASRegisterError value, $Res Function(_$ASRegisterError) then) =
      __$$ASRegisterErrorCopyWithImpl<$Res>;
  $Res call({String code, String message, StackTrace stackTrace});
}

/// @nodoc
class __$$ASRegisterErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASRegisterErrorCopyWith<$Res> {
  __$$ASRegisterErrorCopyWithImpl(
      _$ASRegisterError _value, $Res Function(_$ASRegisterError) _then)
      : super(_value, (v) => _then(v as _$ASRegisterError));

  @override
  _$ASRegisterError get _value => super._value as _$ASRegisterError;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ASRegisterError(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$ASRegisterError implements ASRegisterError {
  const _$ASRegisterError(
      {required this.code, required this.message, required this.stackTrace});

  @override
  final String code;
  @override
  final String message;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'AuthState.registerError(code: $code, message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ASRegisterError &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$ASRegisterErrorCopyWith<_$ASRegisterError> get copyWith =>
      __$$ASRegisterErrorCopyWithImpl<_$ASRegisterError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return registerError(code, message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return registerError?.call(code, message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (registerError != null) {
      return registerError(code, message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return registerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return registerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (registerError != null) {
      return registerError(this);
    }
    return orElse();
  }
}

abstract class ASRegisterError implements AuthState {
  const factory ASRegisterError(
      {required final String code,
      required final String message,
      required final StackTrace stackTrace}) = _$ASRegisterError;

  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ASRegisterErrorCopyWith<_$ASRegisterError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ASSignOutLoadingCopyWith<$Res> {
  factory _$$ASSignOutLoadingCopyWith(
          _$ASSignOutLoading value, $Res Function(_$ASSignOutLoading) then) =
      __$$ASSignOutLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ASSignOutLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASSignOutLoadingCopyWith<$Res> {
  __$$ASSignOutLoadingCopyWithImpl(
      _$ASSignOutLoading _value, $Res Function(_$ASSignOutLoading) _then)
      : super(_value, (v) => _then(v as _$ASSignOutLoading));

  @override
  _$ASSignOutLoading get _value => super._value as _$ASSignOutLoading;
}

/// @nodoc

class _$ASSignOutLoading implements ASSignOutLoading {
  const _$ASSignOutLoading();

  @override
  String toString() {
    return 'AuthState.signOutLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ASSignOutLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return signOutLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return signOutLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (signOutLoading != null) {
      return signOutLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return signOutLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return signOutLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (signOutLoading != null) {
      return signOutLoading(this);
    }
    return orElse();
  }
}

abstract class ASSignOutLoading implements AuthState {
  const factory ASSignOutLoading() = _$ASSignOutLoading;
}

/// @nodoc
abstract class _$$ASSignOutSuccessCopyWith<$Res> {
  factory _$$ASSignOutSuccessCopyWith(
          _$ASSignOutSuccess value, $Res Function(_$ASSignOutSuccess) then) =
      __$$ASSignOutSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ASSignOutSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASSignOutSuccessCopyWith<$Res> {
  __$$ASSignOutSuccessCopyWithImpl(
      _$ASSignOutSuccess _value, $Res Function(_$ASSignOutSuccess) _then)
      : super(_value, (v) => _then(v as _$ASSignOutSuccess));

  @override
  _$ASSignOutSuccess get _value => super._value as _$ASSignOutSuccess;
}

/// @nodoc

class _$ASSignOutSuccess implements ASSignOutSuccess {
  const _$ASSignOutSuccess();

  @override
  String toString() {
    return 'AuthState.signOutSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ASSignOutSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return signOutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return signOutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (signOutSuccess != null) {
      return signOutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return signOutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return signOutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (signOutSuccess != null) {
      return signOutSuccess(this);
    }
    return orElse();
  }
}

abstract class ASSignOutSuccess implements AuthState {
  const factory ASSignOutSuccess() = _$ASSignOutSuccess;
}

/// @nodoc
abstract class _$$ASSignOutErrorCopyWith<$Res> {
  factory _$$ASSignOutErrorCopyWith(
          _$ASSignOutError value, $Res Function(_$ASSignOutError) then) =
      __$$ASSignOutErrorCopyWithImpl<$Res>;
  $Res call({String code, String message, StackTrace stackTrace});
}

/// @nodoc
class __$$ASSignOutErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASSignOutErrorCopyWith<$Res> {
  __$$ASSignOutErrorCopyWithImpl(
      _$ASSignOutError _value, $Res Function(_$ASSignOutError) _then)
      : super(_value, (v) => _then(v as _$ASSignOutError));

  @override
  _$ASSignOutError get _value => super._value as _$ASSignOutError;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ASSignOutError(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$ASSignOutError implements ASSignOutError {
  const _$ASSignOutError(
      {required this.code, required this.message, required this.stackTrace});

  @override
  final String code;
  @override
  final String message;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'AuthState.signOutError(code: $code, message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ASSignOutError &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$ASSignOutErrorCopyWith<_$ASSignOutError> get copyWith =>
      __$$ASSignOutErrorCopyWithImpl<_$ASSignOutError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return signOutError(code, message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return signOutError?.call(code, message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (signOutError != null) {
      return signOutError(code, message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return signOutError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return signOutError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (signOutError != null) {
      return signOutError(this);
    }
    return orElse();
  }
}

abstract class ASSignOutError implements AuthState {
  const factory ASSignOutError(
      {required final String code,
      required final String message,
      required final StackTrace stackTrace}) = _$ASSignOutError;

  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ASSignOutErrorCopyWith<_$ASSignOutError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ASRetrieveUserDataLoadingCopyWith<$Res> {
  factory _$$ASRetrieveUserDataLoadingCopyWith(
          _$ASRetrieveUserDataLoading value,
          $Res Function(_$ASRetrieveUserDataLoading) then) =
      __$$ASRetrieveUserDataLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ASRetrieveUserDataLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASRetrieveUserDataLoadingCopyWith<$Res> {
  __$$ASRetrieveUserDataLoadingCopyWithImpl(_$ASRetrieveUserDataLoading _value,
      $Res Function(_$ASRetrieveUserDataLoading) _then)
      : super(_value, (v) => _then(v as _$ASRetrieveUserDataLoading));

  @override
  _$ASRetrieveUserDataLoading get _value =>
      super._value as _$ASRetrieveUserDataLoading;
}

/// @nodoc

class _$ASRetrieveUserDataLoading implements ASRetrieveUserDataLoading {
  const _$ASRetrieveUserDataLoading();

  @override
  String toString() {
    return 'AuthState.retrieveUserDataLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ASRetrieveUserDataLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return retrieveUserDataLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return retrieveUserDataLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (retrieveUserDataLoading != null) {
      return retrieveUserDataLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return retrieveUserDataLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return retrieveUserDataLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (retrieveUserDataLoading != null) {
      return retrieveUserDataLoading(this);
    }
    return orElse();
  }
}

abstract class ASRetrieveUserDataLoading implements AuthState {
  const factory ASRetrieveUserDataLoading() = _$ASRetrieveUserDataLoading;
}

/// @nodoc
abstract class _$$ASRetrieveUserDataSuccessCopyWith<$Res> {
  factory _$$ASRetrieveUserDataSuccessCopyWith(
          _$ASRetrieveUserDataSuccess value,
          $Res Function(_$ASRetrieveUserDataSuccess) then) =
      __$$ASRetrieveUserDataSuccessCopyWithImpl<$Res>;
  $Res call({FarmhubUser farmhubUser});

  $FarmhubUserCopyWith<$Res> get farmhubUser;
}

/// @nodoc
class __$$ASRetrieveUserDataSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASRetrieveUserDataSuccessCopyWith<$Res> {
  __$$ASRetrieveUserDataSuccessCopyWithImpl(_$ASRetrieveUserDataSuccess _value,
      $Res Function(_$ASRetrieveUserDataSuccess) _then)
      : super(_value, (v) => _then(v as _$ASRetrieveUserDataSuccess));

  @override
  _$ASRetrieveUserDataSuccess get _value =>
      super._value as _$ASRetrieveUserDataSuccess;

  @override
  $Res call({
    Object? farmhubUser = freezed,
  }) {
    return _then(_$ASRetrieveUserDataSuccess(
      farmhubUser: farmhubUser == freezed
          ? _value.farmhubUser
          : farmhubUser // ignore: cast_nullable_to_non_nullable
              as FarmhubUser,
    ));
  }

  @override
  $FarmhubUserCopyWith<$Res> get farmhubUser {
    return $FarmhubUserCopyWith<$Res>(_value.farmhubUser, (value) {
      return _then(_value.copyWith(farmhubUser: value));
    });
  }
}

/// @nodoc

class _$ASRetrieveUserDataSuccess implements ASRetrieveUserDataSuccess {
  const _$ASRetrieveUserDataSuccess({required this.farmhubUser});

  @override
  final FarmhubUser farmhubUser;

  @override
  String toString() {
    return 'AuthState.retrieveUserDataSuccess(farmhubUser: $farmhubUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ASRetrieveUserDataSuccess &&
            const DeepCollectionEquality()
                .equals(other.farmhubUser, farmhubUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(farmhubUser));

  @JsonKey(ignore: true)
  @override
  _$$ASRetrieveUserDataSuccessCopyWith<_$ASRetrieveUserDataSuccess>
      get copyWith => __$$ASRetrieveUserDataSuccessCopyWithImpl<
          _$ASRetrieveUserDataSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return retrieveUserDataSuccess(farmhubUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return retrieveUserDataSuccess?.call(farmhubUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (retrieveUserDataSuccess != null) {
      return retrieveUserDataSuccess(farmhubUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return retrieveUserDataSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return retrieveUserDataSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (retrieveUserDataSuccess != null) {
      return retrieveUserDataSuccess(this);
    }
    return orElse();
  }
}

abstract class ASRetrieveUserDataSuccess implements AuthState {
  const factory ASRetrieveUserDataSuccess(
      {required final FarmhubUser farmhubUser}) = _$ASRetrieveUserDataSuccess;

  FarmhubUser get farmhubUser => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ASRetrieveUserDataSuccessCopyWith<_$ASRetrieveUserDataSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ASRetrieveUserDataErrorCopyWith<$Res> {
  factory _$$ASRetrieveUserDataErrorCopyWith(_$ASRetrieveUserDataError value,
          $Res Function(_$ASRetrieveUserDataError) then) =
      __$$ASRetrieveUserDataErrorCopyWithImpl<$Res>;
  $Res call({String code, String message, StackTrace stackTrace});
}

/// @nodoc
class __$$ASRetrieveUserDataErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASRetrieveUserDataErrorCopyWith<$Res> {
  __$$ASRetrieveUserDataErrorCopyWithImpl(_$ASRetrieveUserDataError _value,
      $Res Function(_$ASRetrieveUserDataError) _then)
      : super(_value, (v) => _then(v as _$ASRetrieveUserDataError));

  @override
  _$ASRetrieveUserDataError get _value =>
      super._value as _$ASRetrieveUserDataError;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ASRetrieveUserDataError(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$ASRetrieveUserDataError implements ASRetrieveUserDataError {
  const _$ASRetrieveUserDataError(
      {required this.code, required this.message, required this.stackTrace});

  @override
  final String code;
  @override
  final String message;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'AuthState.retrieveUserDataError(code: $code, message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ASRetrieveUserDataError &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$ASRetrieveUserDataErrorCopyWith<_$ASRetrieveUserDataError> get copyWith =>
      __$$ASRetrieveUserDataErrorCopyWithImpl<_$ASRetrieveUserDataError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return retrieveUserDataError(code, message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return retrieveUserDataError?.call(code, message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (retrieveUserDataError != null) {
      return retrieveUserDataError(code, message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return retrieveUserDataError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return retrieveUserDataError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (retrieveUserDataError != null) {
      return retrieveUserDataError(this);
    }
    return orElse();
  }
}

abstract class ASRetrieveUserDataError implements AuthState {
  const factory ASRetrieveUserDataError(
      {required final String code,
      required final String message,
      required final StackTrace stackTrace}) = _$ASRetrieveUserDataError;

  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ASRetrieveUserDataErrorCopyWith<_$ASRetrieveUserDataError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ASIsAdminLoadingCopyWith<$Res> {
  factory _$$ASIsAdminLoadingCopyWith(
          _$ASIsAdminLoading value, $Res Function(_$ASIsAdminLoading) then) =
      __$$ASIsAdminLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ASIsAdminLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASIsAdminLoadingCopyWith<$Res> {
  __$$ASIsAdminLoadingCopyWithImpl(
      _$ASIsAdminLoading _value, $Res Function(_$ASIsAdminLoading) _then)
      : super(_value, (v) => _then(v as _$ASIsAdminLoading));

  @override
  _$ASIsAdminLoading get _value => super._value as _$ASIsAdminLoading;
}

/// @nodoc

class _$ASIsAdminLoading implements ASIsAdminLoading {
  const _$ASIsAdminLoading();

  @override
  String toString() {
    return 'AuthState.isAdminLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ASIsAdminLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return isAdminLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return isAdminLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (isAdminLoading != null) {
      return isAdminLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return isAdminLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return isAdminLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (isAdminLoading != null) {
      return isAdminLoading(this);
    }
    return orElse();
  }
}

abstract class ASIsAdminLoading implements AuthState {
  const factory ASIsAdminLoading() = _$ASIsAdminLoading;
}

/// @nodoc
abstract class _$$ASIsAdminSuccessCopyWith<$Res> {
  factory _$$ASIsAdminSuccessCopyWith(
          _$ASIsAdminSuccess value, $Res Function(_$ASIsAdminSuccess) then) =
      __$$ASIsAdminSuccessCopyWithImpl<$Res>;
  $Res call({bool isAdmin});
}

/// @nodoc
class __$$ASIsAdminSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASIsAdminSuccessCopyWith<$Res> {
  __$$ASIsAdminSuccessCopyWithImpl(
      _$ASIsAdminSuccess _value, $Res Function(_$ASIsAdminSuccess) _then)
      : super(_value, (v) => _then(v as _$ASIsAdminSuccess));

  @override
  _$ASIsAdminSuccess get _value => super._value as _$ASIsAdminSuccess;

  @override
  $Res call({
    Object? isAdmin = freezed,
  }) {
    return _then(_$ASIsAdminSuccess(
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ASIsAdminSuccess implements ASIsAdminSuccess {
  const _$ASIsAdminSuccess({required this.isAdmin});

  @override
  final bool isAdmin;

  @override
  String toString() {
    return 'AuthState.isAdminSuccess(isAdmin: $isAdmin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ASIsAdminSuccess &&
            const DeepCollectionEquality().equals(other.isAdmin, isAdmin));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isAdmin));

  @JsonKey(ignore: true)
  @override
  _$$ASIsAdminSuccessCopyWith<_$ASIsAdminSuccess> get copyWith =>
      __$$ASIsAdminSuccessCopyWithImpl<_$ASIsAdminSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return isAdminSuccess(isAdmin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return isAdminSuccess?.call(isAdmin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (isAdminSuccess != null) {
      return isAdminSuccess(isAdmin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return isAdminSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return isAdminSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (isAdminSuccess != null) {
      return isAdminSuccess(this);
    }
    return orElse();
  }
}

abstract class ASIsAdminSuccess implements AuthState {
  const factory ASIsAdminSuccess({required final bool isAdmin}) =
      _$ASIsAdminSuccess;

  bool get isAdmin => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ASIsAdminSuccessCopyWith<_$ASIsAdminSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ASIsAdminErrorCopyWith<$Res> {
  factory _$$ASIsAdminErrorCopyWith(
          _$ASIsAdminError value, $Res Function(_$ASIsAdminError) then) =
      __$$ASIsAdminErrorCopyWithImpl<$Res>;
  $Res call({String code, String message, StackTrace stackTrace});
}

/// @nodoc
class __$$ASIsAdminErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASIsAdminErrorCopyWith<$Res> {
  __$$ASIsAdminErrorCopyWithImpl(
      _$ASIsAdminError _value, $Res Function(_$ASIsAdminError) _then)
      : super(_value, (v) => _then(v as _$ASIsAdminError));

  @override
  _$ASIsAdminError get _value => super._value as _$ASIsAdminError;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ASIsAdminError(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$ASIsAdminError implements ASIsAdminError {
  const _$ASIsAdminError(
      {required this.code, required this.message, required this.stackTrace});

  @override
  final String code;
  @override
  final String message;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'AuthState.isAdminError(code: $code, message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ASIsAdminError &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$ASIsAdminErrorCopyWith<_$ASIsAdminError> get copyWith =>
      __$$ASIsAdminErrorCopyWithImpl<_$ASIsAdminError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return isAdminError(code, message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return isAdminError?.call(code, message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (isAdminError != null) {
      return isAdminError(code, message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return isAdminError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return isAdminError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (isAdminError != null) {
      return isAdminError(this);
    }
    return orElse();
  }
}

abstract class ASIsAdminError implements AuthState {
  const factory ASIsAdminError(
      {required final String code,
      required final String message,
      required final StackTrace stackTrace}) = _$ASIsAdminError;

  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ASIsAdminErrorCopyWith<_$ASIsAdminError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ASVerifyPhoneLoadingCopyWith<$Res> {
  factory _$$ASVerifyPhoneLoadingCopyWith(_$ASVerifyPhoneLoading value,
          $Res Function(_$ASVerifyPhoneLoading) then) =
      __$$ASVerifyPhoneLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ASVerifyPhoneLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASVerifyPhoneLoadingCopyWith<$Res> {
  __$$ASVerifyPhoneLoadingCopyWithImpl(_$ASVerifyPhoneLoading _value,
      $Res Function(_$ASVerifyPhoneLoading) _then)
      : super(_value, (v) => _then(v as _$ASVerifyPhoneLoading));

  @override
  _$ASVerifyPhoneLoading get _value => super._value as _$ASVerifyPhoneLoading;
}

/// @nodoc

class _$ASVerifyPhoneLoading implements ASVerifyPhoneLoading {
  const _$ASVerifyPhoneLoading();

  @override
  String toString() {
    return 'AuthState.verifyPhoneLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ASVerifyPhoneLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return verifyPhoneLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return verifyPhoneLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (verifyPhoneLoading != null) {
      return verifyPhoneLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return verifyPhoneLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return verifyPhoneLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (verifyPhoneLoading != null) {
      return verifyPhoneLoading(this);
    }
    return orElse();
  }
}

abstract class ASVerifyPhoneLoading implements AuthState {
  const factory ASVerifyPhoneLoading() = _$ASVerifyPhoneLoading;
}

/// @nodoc
abstract class _$$ASVerifyPhoneCompletedCopyWith<$Res> {
  factory _$$ASVerifyPhoneCompletedCopyWith(_$ASVerifyPhoneCompleted value,
          $Res Function(_$ASVerifyPhoneCompleted) then) =
      __$$ASVerifyPhoneCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ASVerifyPhoneCompletedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASVerifyPhoneCompletedCopyWith<$Res> {
  __$$ASVerifyPhoneCompletedCopyWithImpl(_$ASVerifyPhoneCompleted _value,
      $Res Function(_$ASVerifyPhoneCompleted) _then)
      : super(_value, (v) => _then(v as _$ASVerifyPhoneCompleted));

  @override
  _$ASVerifyPhoneCompleted get _value =>
      super._value as _$ASVerifyPhoneCompleted;
}

/// @nodoc

class _$ASVerifyPhoneCompleted implements ASVerifyPhoneCompleted {
  const _$ASVerifyPhoneCompleted();

  @override
  String toString() {
    return 'AuthState.verifyPhoneCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ASVerifyPhoneCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return verifyPhoneCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return verifyPhoneCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (verifyPhoneCompleted != null) {
      return verifyPhoneCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return verifyPhoneCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return verifyPhoneCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (verifyPhoneCompleted != null) {
      return verifyPhoneCompleted(this);
    }
    return orElse();
  }
}

abstract class ASVerifyPhoneCompleted implements AuthState {
  const factory ASVerifyPhoneCompleted() = _$ASVerifyPhoneCompleted;
}

/// @nodoc
abstract class _$$ASVerifyPhoneErrorCopyWith<$Res> {
  factory _$$ASVerifyPhoneErrorCopyWith(_$ASVerifyPhoneError value,
          $Res Function(_$ASVerifyPhoneError) then) =
      __$$ASVerifyPhoneErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$$ASVerifyPhoneErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASVerifyPhoneErrorCopyWith<$Res> {
  __$$ASVerifyPhoneErrorCopyWithImpl(
      _$ASVerifyPhoneError _value, $Res Function(_$ASVerifyPhoneError) _then)
      : super(_value, (v) => _then(v as _$ASVerifyPhoneError));

  @override
  _$ASVerifyPhoneError get _value => super._value as _$ASVerifyPhoneError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$ASVerifyPhoneError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ASVerifyPhoneError implements ASVerifyPhoneError {
  const _$ASVerifyPhoneError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AuthState.verifyPhoneError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ASVerifyPhoneError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$ASVerifyPhoneErrorCopyWith<_$ASVerifyPhoneError> get copyWith =>
      __$$ASVerifyPhoneErrorCopyWithImpl<_$ASVerifyPhoneError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return verifyPhoneError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return verifyPhoneError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (verifyPhoneError != null) {
      return verifyPhoneError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return verifyPhoneError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return verifyPhoneError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (verifyPhoneError != null) {
      return verifyPhoneError(this);
    }
    return orElse();
  }
}

abstract class ASVerifyPhoneError implements AuthState {
  const factory ASVerifyPhoneError(final Failure failure) =
      _$ASVerifyPhoneError;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ASVerifyPhoneErrorCopyWith<_$ASVerifyPhoneError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ASPhoneCodeSentCopyWith<$Res> {
  factory _$$ASPhoneCodeSentCopyWith(
          _$ASPhoneCodeSent value, $Res Function(_$ASPhoneCodeSent) then) =
      __$$ASPhoneCodeSentCopyWithImpl<$Res>;
  $Res call({String verificationId, PhoneNumber phoneNumber, int? resendToken});
}

/// @nodoc
class __$$ASPhoneCodeSentCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASPhoneCodeSentCopyWith<$Res> {
  __$$ASPhoneCodeSentCopyWithImpl(
      _$ASPhoneCodeSent _value, $Res Function(_$ASPhoneCodeSent) _then)
      : super(_value, (v) => _then(v as _$ASPhoneCodeSent));

  @override
  _$ASPhoneCodeSent get _value => super._value as _$ASPhoneCodeSent;

  @override
  $Res call({
    Object? verificationId = freezed,
    Object? phoneNumber = freezed,
    Object? resendToken = freezed,
  }) {
    return _then(_$ASPhoneCodeSent(
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

class _$ASPhoneCodeSent implements ASPhoneCodeSent {
  const _$ASPhoneCodeSent(
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
    return 'AuthState.phoneCodeSent(verificationId: $verificationId, phoneNumber: $phoneNumber, resendToken: $resendToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ASPhoneCodeSent &&
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
  _$$ASPhoneCodeSentCopyWith<_$ASPhoneCodeSent> get copyWith =>
      __$$ASPhoneCodeSentCopyWithImpl<_$ASPhoneCodeSent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return phoneCodeSent(verificationId, phoneNumber, resendToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return phoneCodeSent?.call(verificationId, phoneNumber, resendToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (phoneCodeSent != null) {
      return phoneCodeSent(verificationId, phoneNumber, resendToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return phoneCodeSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return phoneCodeSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (phoneCodeSent != null) {
      return phoneCodeSent(this);
    }
    return orElse();
  }
}

abstract class ASPhoneCodeSent implements AuthState {
  const factory ASPhoneCodeSent(
      {required final String verificationId,
      required final PhoneNumber phoneNumber,
      final int? resendToken}) = _$ASPhoneCodeSent;

  String get verificationId => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  int? get resendToken => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ASPhoneCodeSentCopyWith<_$ASPhoneCodeSent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ASPhoneCodeLoginCompleteCopyWith<$Res> {
  factory _$$ASPhoneCodeLoginCompleteCopyWith(_$ASPhoneCodeLoginComplete value,
          $Res Function(_$ASPhoneCodeLoginComplete) then) =
      __$$ASPhoneCodeLoginCompleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ASPhoneCodeLoginCompleteCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASPhoneCodeLoginCompleteCopyWith<$Res> {
  __$$ASPhoneCodeLoginCompleteCopyWithImpl(_$ASPhoneCodeLoginComplete _value,
      $Res Function(_$ASPhoneCodeLoginComplete) _then)
      : super(_value, (v) => _then(v as _$ASPhoneCodeLoginComplete));

  @override
  _$ASPhoneCodeLoginComplete get _value =>
      super._value as _$ASPhoneCodeLoginComplete;
}

/// @nodoc

class _$ASPhoneCodeLoginComplete implements ASPhoneCodeLoginComplete {
  const _$ASPhoneCodeLoginComplete();

  @override
  String toString() {
    return 'AuthState.phoneCodeLoginComplete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ASPhoneCodeLoginComplete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return phoneCodeLoginComplete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return phoneCodeLoginComplete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (phoneCodeLoginComplete != null) {
      return phoneCodeLoginComplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return phoneCodeLoginComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return phoneCodeLoginComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (phoneCodeLoginComplete != null) {
      return phoneCodeLoginComplete(this);
    }
    return orElse();
  }
}

abstract class ASPhoneCodeLoginComplete implements AuthState {
  const factory ASPhoneCodeLoginComplete() = _$ASPhoneCodeLoginComplete;
}

/// @nodoc
abstract class _$$ASPhoneCodeLoginErrorCopyWith<$Res> {
  factory _$$ASPhoneCodeLoginErrorCopyWith(_$ASPhoneCodeLoginError value,
          $Res Function(_$ASPhoneCodeLoginError) then) =
      __$$ASPhoneCodeLoginErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$$ASPhoneCodeLoginErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASPhoneCodeLoginErrorCopyWith<$Res> {
  __$$ASPhoneCodeLoginErrorCopyWithImpl(_$ASPhoneCodeLoginError _value,
      $Res Function(_$ASPhoneCodeLoginError) _then)
      : super(_value, (v) => _then(v as _$ASPhoneCodeLoginError));

  @override
  _$ASPhoneCodeLoginError get _value => super._value as _$ASPhoneCodeLoginError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$ASPhoneCodeLoginError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ASPhoneCodeLoginError implements ASPhoneCodeLoginError {
  const _$ASPhoneCodeLoginError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AuthState.phoneCodeLoginError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ASPhoneCodeLoginError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$ASPhoneCodeLoginErrorCopyWith<_$ASPhoneCodeLoginError> get copyWith =>
      __$$ASPhoneCodeLoginErrorCopyWithImpl<_$ASPhoneCodeLoginError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return phoneCodeLoginError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return phoneCodeLoginError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (phoneCodeLoginError != null) {
      return phoneCodeLoginError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return phoneCodeLoginError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return phoneCodeLoginError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (phoneCodeLoginError != null) {
      return phoneCodeLoginError(this);
    }
    return orElse();
  }
}

abstract class ASPhoneCodeLoginError implements AuthState {
  const factory ASPhoneCodeLoginError(final Failure failure) =
      _$ASPhoneCodeLoginError;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ASPhoneCodeLoginErrorCopyWith<_$ASPhoneCodeLoginError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ASCodeAutoRetrievalTimeoutCopyWith<$Res> {
  factory _$$ASCodeAutoRetrievalTimeoutCopyWith(
          _$ASCodeAutoRetrievalTimeout value,
          $Res Function(_$ASCodeAutoRetrievalTimeout) then) =
      __$$ASCodeAutoRetrievalTimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ASCodeAutoRetrievalTimeoutCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ASCodeAutoRetrievalTimeoutCopyWith<$Res> {
  __$$ASCodeAutoRetrievalTimeoutCopyWithImpl(
      _$ASCodeAutoRetrievalTimeout _value,
      $Res Function(_$ASCodeAutoRetrievalTimeout) _then)
      : super(_value, (v) => _then(v as _$ASCodeAutoRetrievalTimeout));

  @override
  _$ASCodeAutoRetrievalTimeout get _value =>
      super._value as _$ASCodeAutoRetrievalTimeout;
}

/// @nodoc

class _$ASCodeAutoRetrievalTimeout implements ASCodeAutoRetrievalTimeout {
  const _$ASCodeAutoRetrievalTimeout();

  @override
  String toString() {
    return 'AuthState.codeAutoRetrievalTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ASCodeAutoRetrievalTimeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loginLoading,
    required TResult Function(FarmhubUser user) loginSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        loginError,
    required TResult Function() registerLoading,
    required TResult Function(FarmhubUser user) registerSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        registerError,
    required TResult Function() signOutLoading,
    required TResult Function() signOutSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        signOutError,
    required TResult Function() retrieveUserDataLoading,
    required TResult Function(FarmhubUser farmhubUser) retrieveUserDataSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        retrieveUserDataError,
    required TResult Function() isAdminLoading,
    required TResult Function(bool isAdmin) isAdminSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        isAdminError,
    required TResult Function() verifyPhoneLoading,
    required TResult Function() verifyPhoneCompleted,
    required TResult Function(Failure failure) verifyPhoneError,
    required TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)
        phoneCodeSent,
    required TResult Function() phoneCodeLoginComplete,
    required TResult Function(Failure failure) phoneCodeLoginError,
    required TResult Function() codeAutoRetrievalTimeout,
  }) {
    return codeAutoRetrievalTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
  }) {
    return codeAutoRetrievalTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loginLoading,
    TResult Function(FarmhubUser user)? loginSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        loginError,
    TResult Function()? registerLoading,
    TResult Function(FarmhubUser user)? registerSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        registerError,
    TResult Function()? signOutLoading,
    TResult Function()? signOutSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        signOutError,
    TResult Function()? retrieveUserDataLoading,
    TResult Function(FarmhubUser farmhubUser)? retrieveUserDataSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        retrieveUserDataError,
    TResult Function()? isAdminLoading,
    TResult Function(bool isAdmin)? isAdminSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        isAdminError,
    TResult Function()? verifyPhoneLoading,
    TResult Function()? verifyPhoneCompleted,
    TResult Function(Failure failure)? verifyPhoneError,
    TResult Function(
            String verificationId, PhoneNumber phoneNumber, int? resendToken)?
        phoneCodeSent,
    TResult Function()? phoneCodeLoginComplete,
    TResult Function(Failure failure)? phoneCodeLoginError,
    TResult Function()? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (codeAutoRetrievalTimeout != null) {
      return codeAutoRetrievalTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ASInitial value) initial,
    required TResult Function(ASIdle value) idle,
    required TResult Function(ASLoading value) loading,
    required TResult Function(ASLoginLoading value) loginLoading,
    required TResult Function(ASLoginSuccess value) loginSuccess,
    required TResult Function(ASLoginError value) loginError,
    required TResult Function(ASRegisterLoading value) registerLoading,
    required TResult Function(ASRegisterSuccess value) registerSuccess,
    required TResult Function(ASRegisterError value) registerError,
    required TResult Function(ASSignOutLoading value) signOutLoading,
    required TResult Function(ASSignOutSuccess value) signOutSuccess,
    required TResult Function(ASSignOutError value) signOutError,
    required TResult Function(ASRetrieveUserDataLoading value)
        retrieveUserDataLoading,
    required TResult Function(ASRetrieveUserDataSuccess value)
        retrieveUserDataSuccess,
    required TResult Function(ASRetrieveUserDataError value)
        retrieveUserDataError,
    required TResult Function(ASIsAdminLoading value) isAdminLoading,
    required TResult Function(ASIsAdminSuccess value) isAdminSuccess,
    required TResult Function(ASIsAdminError value) isAdminError,
    required TResult Function(ASVerifyPhoneLoading value) verifyPhoneLoading,
    required TResult Function(ASVerifyPhoneCompleted value)
        verifyPhoneCompleted,
    required TResult Function(ASVerifyPhoneError value) verifyPhoneError,
    required TResult Function(ASPhoneCodeSent value) phoneCodeSent,
    required TResult Function(ASPhoneCodeLoginComplete value)
        phoneCodeLoginComplete,
    required TResult Function(ASPhoneCodeLoginError value) phoneCodeLoginError,
    required TResult Function(ASCodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return codeAutoRetrievalTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
  }) {
    return codeAutoRetrievalTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ASInitial value)? initial,
    TResult Function(ASIdle value)? idle,
    TResult Function(ASLoading value)? loading,
    TResult Function(ASLoginLoading value)? loginLoading,
    TResult Function(ASLoginSuccess value)? loginSuccess,
    TResult Function(ASLoginError value)? loginError,
    TResult Function(ASRegisterLoading value)? registerLoading,
    TResult Function(ASRegisterSuccess value)? registerSuccess,
    TResult Function(ASRegisterError value)? registerError,
    TResult Function(ASSignOutLoading value)? signOutLoading,
    TResult Function(ASSignOutSuccess value)? signOutSuccess,
    TResult Function(ASSignOutError value)? signOutError,
    TResult Function(ASRetrieveUserDataLoading value)? retrieveUserDataLoading,
    TResult Function(ASRetrieveUserDataSuccess value)? retrieveUserDataSuccess,
    TResult Function(ASRetrieveUserDataError value)? retrieveUserDataError,
    TResult Function(ASIsAdminLoading value)? isAdminLoading,
    TResult Function(ASIsAdminSuccess value)? isAdminSuccess,
    TResult Function(ASIsAdminError value)? isAdminError,
    TResult Function(ASVerifyPhoneLoading value)? verifyPhoneLoading,
    TResult Function(ASVerifyPhoneCompleted value)? verifyPhoneCompleted,
    TResult Function(ASVerifyPhoneError value)? verifyPhoneError,
    TResult Function(ASPhoneCodeSent value)? phoneCodeSent,
    TResult Function(ASPhoneCodeLoginComplete value)? phoneCodeLoginComplete,
    TResult Function(ASPhoneCodeLoginError value)? phoneCodeLoginError,
    TResult Function(ASCodeAutoRetrievalTimeout value)?
        codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (codeAutoRetrievalTimeout != null) {
      return codeAutoRetrievalTimeout(this);
    }
    return orElse();
  }
}

abstract class ASCodeAutoRetrievalTimeout implements AuthState {
  const factory ASCodeAutoRetrievalTimeout() = _$ASCodeAutoRetrievalTimeout;
}
