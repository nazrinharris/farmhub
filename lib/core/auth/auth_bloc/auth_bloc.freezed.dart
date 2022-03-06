// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  _AEStarted started() {
    return const _AEStarted();
  }

  _AEExecLoginWithEmailAndPassword execLoginWithEmailAndPassword(
      {required String email, required String password}) {
    return _AEExecLoginWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  _AEExecRegisterWithEmailAndPassword execRegisterWithEmailAndPassword(
      {required String email,
      required String password,
      required String username}) {
    return _AEExecRegisterWithEmailAndPassword(
      email: email,
      password: password,
      username: username,
    );
  }

  _AEExecRetrieveUserData execRetrieveUserData() {
    return const _AEExecRetrieveUserData();
  }

  _AEExecSignOut execSignOut() {
    return const _AEExecSignOut();
  }

  _AEExecIsAdmin execIsAdmin(String uid) {
    return _AEExecIsAdmin(
      uid,
    );
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        execLoginWithEmailAndPassword,
    required TResult Function(String email, String password, String username)
        execRegisterWithEmailAndPassword,
    required TResult Function() execRetrieveUserData,
    required TResult Function() execSignOut,
    required TResult Function(String uid) execIsAdmin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(String email, String password, String username)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(String email, String password, String username)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
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
abstract class _$AEStartedCopyWith<$Res> {
  factory _$AEStartedCopyWith(
          _AEStarted value, $Res Function(_AEStarted) then) =
      __$AEStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AEStartedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$AEStartedCopyWith<$Res> {
  __$AEStartedCopyWithImpl(_AEStarted _value, $Res Function(_AEStarted) _then)
      : super(_value, (v) => _then(v as _AEStarted));

  @override
  _AEStarted get _value => super._value as _AEStarted;
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
        (other.runtimeType == runtimeType && other is _AEStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        execLoginWithEmailAndPassword,
    required TResult Function(String email, String password, String username)
        execRegisterWithEmailAndPassword,
    required TResult Function() execRetrieveUserData,
    required TResult Function() execSignOut,
    required TResult Function(String uid) execIsAdmin,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(String email, String password, String username)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(String email, String password, String username)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
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
abstract class _$AEExecLoginWithEmailAndPasswordCopyWith<$Res> {
  factory _$AEExecLoginWithEmailAndPasswordCopyWith(
          _AEExecLoginWithEmailAndPassword value,
          $Res Function(_AEExecLoginWithEmailAndPassword) then) =
      __$AEExecLoginWithEmailAndPasswordCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$AEExecLoginWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$AEExecLoginWithEmailAndPasswordCopyWith<$Res> {
  __$AEExecLoginWithEmailAndPasswordCopyWithImpl(
      _AEExecLoginWithEmailAndPassword _value,
      $Res Function(_AEExecLoginWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as _AEExecLoginWithEmailAndPassword));

  @override
  _AEExecLoginWithEmailAndPassword get _value =>
      super._value as _AEExecLoginWithEmailAndPassword;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_AEExecLoginWithEmailAndPassword(
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
            other is _AEExecLoginWithEmailAndPassword &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  _$AEExecLoginWithEmailAndPasswordCopyWith<_AEExecLoginWithEmailAndPassword>
      get copyWith => __$AEExecLoginWithEmailAndPasswordCopyWithImpl<
          _AEExecLoginWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        execLoginWithEmailAndPassword,
    required TResult Function(String email, String password, String username)
        execRegisterWithEmailAndPassword,
    required TResult Function() execRetrieveUserData,
    required TResult Function() execSignOut,
    required TResult Function(String uid) execIsAdmin,
  }) {
    return execLoginWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(String email, String password, String username)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
  }) {
    return execLoginWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(String email, String password, String username)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
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
      {required String email,
      required String password}) = _$_AEExecLoginWithEmailAndPassword;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$AEExecLoginWithEmailAndPasswordCopyWith<_AEExecLoginWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AEExecRegisterWithEmailAndPasswordCopyWith<$Res> {
  factory _$AEExecRegisterWithEmailAndPasswordCopyWith(
          _AEExecRegisterWithEmailAndPassword value,
          $Res Function(_AEExecRegisterWithEmailAndPassword) then) =
      __$AEExecRegisterWithEmailAndPasswordCopyWithImpl<$Res>;
  $Res call({String email, String password, String username});
}

/// @nodoc
class __$AEExecRegisterWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$AEExecRegisterWithEmailAndPasswordCopyWith<$Res> {
  __$AEExecRegisterWithEmailAndPasswordCopyWithImpl(
      _AEExecRegisterWithEmailAndPassword _value,
      $Res Function(_AEExecRegisterWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as _AEExecRegisterWithEmailAndPassword));

  @override
  _AEExecRegisterWithEmailAndPassword get _value =>
      super._value as _AEExecRegisterWithEmailAndPassword;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? username = freezed,
  }) {
    return _then(_AEExecRegisterWithEmailAndPassword(
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
    ));
  }
}

/// @nodoc

class _$_AEExecRegisterWithEmailAndPassword
    implements _AEExecRegisterWithEmailAndPassword {
  const _$_AEExecRegisterWithEmailAndPassword(
      {required this.email, required this.password, required this.username});

  @override
  final String email;
  @override
  final String password;
  @override
  final String username;

  @override
  String toString() {
    return 'AuthEvent.execRegisterWithEmailAndPassword(email: $email, password: $password, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AEExecRegisterWithEmailAndPassword &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, username);

  @JsonKey(ignore: true)
  @override
  _$AEExecRegisterWithEmailAndPasswordCopyWith<
          _AEExecRegisterWithEmailAndPassword>
      get copyWith => __$AEExecRegisterWithEmailAndPasswordCopyWithImpl<
          _AEExecRegisterWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        execLoginWithEmailAndPassword,
    required TResult Function(String email, String password, String username)
        execRegisterWithEmailAndPassword,
    required TResult Function() execRetrieveUserData,
    required TResult Function() execSignOut,
    required TResult Function(String uid) execIsAdmin,
  }) {
    return execRegisterWithEmailAndPassword(email, password, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(String email, String password, String username)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
  }) {
    return execRegisterWithEmailAndPassword?.call(email, password, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(String email, String password, String username)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
    required TResult orElse(),
  }) {
    if (execRegisterWithEmailAndPassword != null) {
      return execRegisterWithEmailAndPassword(email, password, username);
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
      {required String email,
      required String password,
      required String username}) = _$_AEExecRegisterWithEmailAndPassword;

  String get email;
  String get password;
  String get username;
  @JsonKey(ignore: true)
  _$AEExecRegisterWithEmailAndPasswordCopyWith<
          _AEExecRegisterWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AEExecRetrieveUserDataCopyWith<$Res> {
  factory _$AEExecRetrieveUserDataCopyWith(_AEExecRetrieveUserData value,
          $Res Function(_AEExecRetrieveUserData) then) =
      __$AEExecRetrieveUserDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$AEExecRetrieveUserDataCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$AEExecRetrieveUserDataCopyWith<$Res> {
  __$AEExecRetrieveUserDataCopyWithImpl(_AEExecRetrieveUserData _value,
      $Res Function(_AEExecRetrieveUserData) _then)
      : super(_value, (v) => _then(v as _AEExecRetrieveUserData));

  @override
  _AEExecRetrieveUserData get _value => super._value as _AEExecRetrieveUserData;
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
        (other.runtimeType == runtimeType && other is _AEExecRetrieveUserData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        execLoginWithEmailAndPassword,
    required TResult Function(String email, String password, String username)
        execRegisterWithEmailAndPassword,
    required TResult Function() execRetrieveUserData,
    required TResult Function() execSignOut,
    required TResult Function(String uid) execIsAdmin,
  }) {
    return execRetrieveUserData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(String email, String password, String username)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
  }) {
    return execRetrieveUserData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(String email, String password, String username)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
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
abstract class _$AEExecSignOutCopyWith<$Res> {
  factory _$AEExecSignOutCopyWith(
          _AEExecSignOut value, $Res Function(_AEExecSignOut) then) =
      __$AEExecSignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$AEExecSignOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$AEExecSignOutCopyWith<$Res> {
  __$AEExecSignOutCopyWithImpl(
      _AEExecSignOut _value, $Res Function(_AEExecSignOut) _then)
      : super(_value, (v) => _then(v as _AEExecSignOut));

  @override
  _AEExecSignOut get _value => super._value as _AEExecSignOut;
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
        (other.runtimeType == runtimeType && other is _AEExecSignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        execLoginWithEmailAndPassword,
    required TResult Function(String email, String password, String username)
        execRegisterWithEmailAndPassword,
    required TResult Function() execRetrieveUserData,
    required TResult Function() execSignOut,
    required TResult Function(String uid) execIsAdmin,
  }) {
    return execSignOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(String email, String password, String username)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
  }) {
    return execSignOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(String email, String password, String username)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
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
abstract class _$AEExecIsAdminCopyWith<$Res> {
  factory _$AEExecIsAdminCopyWith(
          _AEExecIsAdmin value, $Res Function(_AEExecIsAdmin) then) =
      __$AEExecIsAdminCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class __$AEExecIsAdminCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$AEExecIsAdminCopyWith<$Res> {
  __$AEExecIsAdminCopyWithImpl(
      _AEExecIsAdmin _value, $Res Function(_AEExecIsAdmin) _then)
      : super(_value, (v) => _then(v as _AEExecIsAdmin));

  @override
  _AEExecIsAdmin get _value => super._value as _AEExecIsAdmin;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_AEExecIsAdmin(
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
            other is _AEExecIsAdmin &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  _$AEExecIsAdminCopyWith<_AEExecIsAdmin> get copyWith =>
      __$AEExecIsAdminCopyWithImpl<_AEExecIsAdmin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        execLoginWithEmailAndPassword,
    required TResult Function(String email, String password, String username)
        execRegisterWithEmailAndPassword,
    required TResult Function() execRetrieveUserData,
    required TResult Function() execSignOut,
    required TResult Function(String uid) execIsAdmin,
  }) {
    return execIsAdmin(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(String email, String password, String username)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
  }) {
    return execIsAdmin?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        execLoginWithEmailAndPassword,
    TResult Function(String email, String password, String username)?
        execRegisterWithEmailAndPassword,
    TResult Function()? execRetrieveUserData,
    TResult Function()? execSignOut,
    TResult Function(String uid)? execIsAdmin,
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
    required TResult orElse(),
  }) {
    if (execIsAdmin != null) {
      return execIsAdmin(this);
    }
    return orElse();
  }
}

abstract class _AEExecIsAdmin implements AuthEvent {
  const factory _AEExecIsAdmin(String uid) = _$_AEExecIsAdmin;

  String get uid;
  @JsonKey(ignore: true)
  _$AEExecIsAdminCopyWith<_AEExecIsAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  ASInitial initial() {
    return const ASInitial();
  }

  ASIdle idle() {
    return const ASIdle();
  }

  ASLoading loading() {
    return const ASLoading();
  }

  ASLoginLoading loginLoading() {
    return const ASLoginLoading();
  }

  ASLoginSuccess loginSuccess({required FarmhubUser user}) {
    return ASLoginSuccess(
      user: user,
    );
  }

  ASLoginError loginError(
      {required String code,
      required String message,
      required StackTrace stackTrace}) {
    return ASLoginError(
      code: code,
      message: message,
      stackTrace: stackTrace,
    );
  }

  ASRegisterLoading registerLoading() {
    return const ASRegisterLoading();
  }

  ASRegisterSuccess registerSuccess({required FarmhubUser user}) {
    return ASRegisterSuccess(
      user: user,
    );
  }

  ASRegisterError registerError(
      {required String code,
      required String message,
      required StackTrace stackTrace}) {
    return ASRegisterError(
      code: code,
      message: message,
      stackTrace: stackTrace,
    );
  }

  ASSignOutLoading signOutLoading() {
    return const ASSignOutLoading();
  }

  ASSignOutSuccess signOutSuccess() {
    return const ASSignOutSuccess();
  }

  ASSignOutError signOutError(
      {required String code,
      required String message,
      required StackTrace stackTrace}) {
    return ASSignOutError(
      code: code,
      message: message,
      stackTrace: stackTrace,
    );
  }

  ASRetrieveUserDataLoading retrieveUserDataLoading() {
    return const ASRetrieveUserDataLoading();
  }

  ASRetrieveUserDataSuccess retrieveUserDataSuccess(
      {required FarmhubUser farmhubUser}) {
    return ASRetrieveUserDataSuccess(
      farmhubUser: farmhubUser,
    );
  }

  ASRetrieveUserDataError retrieveUserDataError(
      {required String code,
      required String message,
      required StackTrace stackTrace}) {
    return ASRetrieveUserDataError(
      code: code,
      message: message,
      stackTrace: stackTrace,
    );
  }

  ASIsAdminLoading isAdminLoading() {
    return const ASIsAdminLoading();
  }

  ASIsAdminSuccess isAdminSuccess({required bool isAdmin}) {
    return ASIsAdminSuccess(
      isAdmin: isAdmin,
    );
  }

  ASIsAdminError isAdminError(
      {required String code,
      required String message,
      required StackTrace stackTrace}) {
    return ASIsAdminError(
      code: code,
      message: message,
      stackTrace: stackTrace,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

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
abstract class $ASInitialCopyWith<$Res> {
  factory $ASInitialCopyWith(ASInitial value, $Res Function(ASInitial) then) =
      _$ASInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$ASInitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $ASInitialCopyWith<$Res> {
  _$ASInitialCopyWithImpl(ASInitial _value, $Res Function(ASInitial) _then)
      : super(_value, (v) => _then(v as ASInitial));

  @override
  ASInitial get _value => super._value as ASInitial;
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
        (other.runtimeType == runtimeType && other is ASInitial);
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
abstract class $ASIdleCopyWith<$Res> {
  factory $ASIdleCopyWith(ASIdle value, $Res Function(ASIdle) then) =
      _$ASIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$ASIdleCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $ASIdleCopyWith<$Res> {
  _$ASIdleCopyWithImpl(ASIdle _value, $Res Function(ASIdle) _then)
      : super(_value, (v) => _then(v as ASIdle));

  @override
  ASIdle get _value => super._value as ASIdle;
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
        (other.runtimeType == runtimeType && other is ASIdle);
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
abstract class $ASLoadingCopyWith<$Res> {
  factory $ASLoadingCopyWith(ASLoading value, $Res Function(ASLoading) then) =
      _$ASLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ASLoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $ASLoadingCopyWith<$Res> {
  _$ASLoadingCopyWithImpl(ASLoading _value, $Res Function(ASLoading) _then)
      : super(_value, (v) => _then(v as ASLoading));

  @override
  ASLoading get _value => super._value as ASLoading;
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
        (other.runtimeType == runtimeType && other is ASLoading);
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
abstract class $ASLoginLoadingCopyWith<$Res> {
  factory $ASLoginLoadingCopyWith(
          ASLoginLoading value, $Res Function(ASLoginLoading) then) =
      _$ASLoginLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ASLoginLoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $ASLoginLoadingCopyWith<$Res> {
  _$ASLoginLoadingCopyWithImpl(
      ASLoginLoading _value, $Res Function(ASLoginLoading) _then)
      : super(_value, (v) => _then(v as ASLoginLoading));

  @override
  ASLoginLoading get _value => super._value as ASLoginLoading;
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
        (other.runtimeType == runtimeType && other is ASLoginLoading);
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
abstract class $ASLoginSuccessCopyWith<$Res> {
  factory $ASLoginSuccessCopyWith(
          ASLoginSuccess value, $Res Function(ASLoginSuccess) then) =
      _$ASLoginSuccessCopyWithImpl<$Res>;
  $Res call({FarmhubUser user});

  $FarmhubUserCopyWith<$Res> get user;
}

/// @nodoc
class _$ASLoginSuccessCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $ASLoginSuccessCopyWith<$Res> {
  _$ASLoginSuccessCopyWithImpl(
      ASLoginSuccess _value, $Res Function(ASLoginSuccess) _then)
      : super(_value, (v) => _then(v as ASLoginSuccess));

  @override
  ASLoginSuccess get _value => super._value as ASLoginSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(ASLoginSuccess(
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
            other is ASLoginSuccess &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  $ASLoginSuccessCopyWith<ASLoginSuccess> get copyWith =>
      _$ASLoginSuccessCopyWithImpl<ASLoginSuccess>(this, _$identity);

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
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class ASLoginSuccess implements AuthState {
  const factory ASLoginSuccess({required FarmhubUser user}) = _$ASLoginSuccess;

  FarmhubUser get user;
  @JsonKey(ignore: true)
  $ASLoginSuccessCopyWith<ASLoginSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ASLoginErrorCopyWith<$Res> {
  factory $ASLoginErrorCopyWith(
          ASLoginError value, $Res Function(ASLoginError) then) =
      _$ASLoginErrorCopyWithImpl<$Res>;
  $Res call({String code, String message, StackTrace stackTrace});
}

/// @nodoc
class _$ASLoginErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $ASLoginErrorCopyWith<$Res> {
  _$ASLoginErrorCopyWithImpl(
      ASLoginError _value, $Res Function(ASLoginError) _then)
      : super(_value, (v) => _then(v as ASLoginError));

  @override
  ASLoginError get _value => super._value as ASLoginError;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(ASLoginError(
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
            other is ASLoginError &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message, stackTrace);

  @JsonKey(ignore: true)
  @override
  $ASLoginErrorCopyWith<ASLoginError> get copyWith =>
      _$ASLoginErrorCopyWithImpl<ASLoginError>(this, _$identity);

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
      {required String code,
      required String message,
      required StackTrace stackTrace}) = _$ASLoginError;

  String get code;
  String get message;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $ASLoginErrorCopyWith<ASLoginError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ASRegisterLoadingCopyWith<$Res> {
  factory $ASRegisterLoadingCopyWith(
          ASRegisterLoading value, $Res Function(ASRegisterLoading) then) =
      _$ASRegisterLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ASRegisterLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $ASRegisterLoadingCopyWith<$Res> {
  _$ASRegisterLoadingCopyWithImpl(
      ASRegisterLoading _value, $Res Function(ASRegisterLoading) _then)
      : super(_value, (v) => _then(v as ASRegisterLoading));

  @override
  ASRegisterLoading get _value => super._value as ASRegisterLoading;
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
        (other.runtimeType == runtimeType && other is ASRegisterLoading);
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
abstract class $ASRegisterSuccessCopyWith<$Res> {
  factory $ASRegisterSuccessCopyWith(
          ASRegisterSuccess value, $Res Function(ASRegisterSuccess) then) =
      _$ASRegisterSuccessCopyWithImpl<$Res>;
  $Res call({FarmhubUser user});

  $FarmhubUserCopyWith<$Res> get user;
}

/// @nodoc
class _$ASRegisterSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $ASRegisterSuccessCopyWith<$Res> {
  _$ASRegisterSuccessCopyWithImpl(
      ASRegisterSuccess _value, $Res Function(ASRegisterSuccess) _then)
      : super(_value, (v) => _then(v as ASRegisterSuccess));

  @override
  ASRegisterSuccess get _value => super._value as ASRegisterSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(ASRegisterSuccess(
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
            other is ASRegisterSuccess &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  $ASRegisterSuccessCopyWith<ASRegisterSuccess> get copyWith =>
      _$ASRegisterSuccessCopyWithImpl<ASRegisterSuccess>(this, _$identity);

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
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(this);
    }
    return orElse();
  }
}

abstract class ASRegisterSuccess implements AuthState {
  const factory ASRegisterSuccess({required FarmhubUser user}) =
      _$ASRegisterSuccess;

  FarmhubUser get user;
  @JsonKey(ignore: true)
  $ASRegisterSuccessCopyWith<ASRegisterSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ASRegisterErrorCopyWith<$Res> {
  factory $ASRegisterErrorCopyWith(
          ASRegisterError value, $Res Function(ASRegisterError) then) =
      _$ASRegisterErrorCopyWithImpl<$Res>;
  $Res call({String code, String message, StackTrace stackTrace});
}

/// @nodoc
class _$ASRegisterErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $ASRegisterErrorCopyWith<$Res> {
  _$ASRegisterErrorCopyWithImpl(
      ASRegisterError _value, $Res Function(ASRegisterError) _then)
      : super(_value, (v) => _then(v as ASRegisterError));

  @override
  ASRegisterError get _value => super._value as ASRegisterError;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(ASRegisterError(
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
            other is ASRegisterError &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message, stackTrace);

  @JsonKey(ignore: true)
  @override
  $ASRegisterErrorCopyWith<ASRegisterError> get copyWith =>
      _$ASRegisterErrorCopyWithImpl<ASRegisterError>(this, _$identity);

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
      {required String code,
      required String message,
      required StackTrace stackTrace}) = _$ASRegisterError;

  String get code;
  String get message;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $ASRegisterErrorCopyWith<ASRegisterError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ASSignOutLoadingCopyWith<$Res> {
  factory $ASSignOutLoadingCopyWith(
          ASSignOutLoading value, $Res Function(ASSignOutLoading) then) =
      _$ASSignOutLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ASSignOutLoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $ASSignOutLoadingCopyWith<$Res> {
  _$ASSignOutLoadingCopyWithImpl(
      ASSignOutLoading _value, $Res Function(ASSignOutLoading) _then)
      : super(_value, (v) => _then(v as ASSignOutLoading));

  @override
  ASSignOutLoading get _value => super._value as ASSignOutLoading;
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
        (other.runtimeType == runtimeType && other is ASSignOutLoading);
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
abstract class $ASSignOutSuccessCopyWith<$Res> {
  factory $ASSignOutSuccessCopyWith(
          ASSignOutSuccess value, $Res Function(ASSignOutSuccess) then) =
      _$ASSignOutSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$ASSignOutSuccessCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $ASSignOutSuccessCopyWith<$Res> {
  _$ASSignOutSuccessCopyWithImpl(
      ASSignOutSuccess _value, $Res Function(ASSignOutSuccess) _then)
      : super(_value, (v) => _then(v as ASSignOutSuccess));

  @override
  ASSignOutSuccess get _value => super._value as ASSignOutSuccess;
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
        (other.runtimeType == runtimeType && other is ASSignOutSuccess);
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
abstract class $ASSignOutErrorCopyWith<$Res> {
  factory $ASSignOutErrorCopyWith(
          ASSignOutError value, $Res Function(ASSignOutError) then) =
      _$ASSignOutErrorCopyWithImpl<$Res>;
  $Res call({String code, String message, StackTrace stackTrace});
}

/// @nodoc
class _$ASSignOutErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $ASSignOutErrorCopyWith<$Res> {
  _$ASSignOutErrorCopyWithImpl(
      ASSignOutError _value, $Res Function(ASSignOutError) _then)
      : super(_value, (v) => _then(v as ASSignOutError));

  @override
  ASSignOutError get _value => super._value as ASSignOutError;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(ASSignOutError(
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
            other is ASSignOutError &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message, stackTrace);

  @JsonKey(ignore: true)
  @override
  $ASSignOutErrorCopyWith<ASSignOutError> get copyWith =>
      _$ASSignOutErrorCopyWithImpl<ASSignOutError>(this, _$identity);

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
      {required String code,
      required String message,
      required StackTrace stackTrace}) = _$ASSignOutError;

  String get code;
  String get message;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $ASSignOutErrorCopyWith<ASSignOutError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ASRetrieveUserDataLoadingCopyWith<$Res> {
  factory $ASRetrieveUserDataLoadingCopyWith(ASRetrieveUserDataLoading value,
          $Res Function(ASRetrieveUserDataLoading) then) =
      _$ASRetrieveUserDataLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ASRetrieveUserDataLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $ASRetrieveUserDataLoadingCopyWith<$Res> {
  _$ASRetrieveUserDataLoadingCopyWithImpl(ASRetrieveUserDataLoading _value,
      $Res Function(ASRetrieveUserDataLoading) _then)
      : super(_value, (v) => _then(v as ASRetrieveUserDataLoading));

  @override
  ASRetrieveUserDataLoading get _value =>
      super._value as ASRetrieveUserDataLoading;
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
            other is ASRetrieveUserDataLoading);
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
abstract class $ASRetrieveUserDataSuccessCopyWith<$Res> {
  factory $ASRetrieveUserDataSuccessCopyWith(ASRetrieveUserDataSuccess value,
          $Res Function(ASRetrieveUserDataSuccess) then) =
      _$ASRetrieveUserDataSuccessCopyWithImpl<$Res>;
  $Res call({FarmhubUser farmhubUser});

  $FarmhubUserCopyWith<$Res> get farmhubUser;
}

/// @nodoc
class _$ASRetrieveUserDataSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $ASRetrieveUserDataSuccessCopyWith<$Res> {
  _$ASRetrieveUserDataSuccessCopyWithImpl(ASRetrieveUserDataSuccess _value,
      $Res Function(ASRetrieveUserDataSuccess) _then)
      : super(_value, (v) => _then(v as ASRetrieveUserDataSuccess));

  @override
  ASRetrieveUserDataSuccess get _value =>
      super._value as ASRetrieveUserDataSuccess;

  @override
  $Res call({
    Object? farmhubUser = freezed,
  }) {
    return _then(ASRetrieveUserDataSuccess(
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
            other is ASRetrieveUserDataSuccess &&
            (identical(other.farmhubUser, farmhubUser) ||
                other.farmhubUser == farmhubUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, farmhubUser);

  @JsonKey(ignore: true)
  @override
  $ASRetrieveUserDataSuccessCopyWith<ASRetrieveUserDataSuccess> get copyWith =>
      _$ASRetrieveUserDataSuccessCopyWithImpl<ASRetrieveUserDataSuccess>(
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
    required TResult orElse(),
  }) {
    if (retrieveUserDataSuccess != null) {
      return retrieveUserDataSuccess(this);
    }
    return orElse();
  }
}

abstract class ASRetrieveUserDataSuccess implements AuthState {
  const factory ASRetrieveUserDataSuccess({required FarmhubUser farmhubUser}) =
      _$ASRetrieveUserDataSuccess;

  FarmhubUser get farmhubUser;
  @JsonKey(ignore: true)
  $ASRetrieveUserDataSuccessCopyWith<ASRetrieveUserDataSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ASRetrieveUserDataErrorCopyWith<$Res> {
  factory $ASRetrieveUserDataErrorCopyWith(ASRetrieveUserDataError value,
          $Res Function(ASRetrieveUserDataError) then) =
      _$ASRetrieveUserDataErrorCopyWithImpl<$Res>;
  $Res call({String code, String message, StackTrace stackTrace});
}

/// @nodoc
class _$ASRetrieveUserDataErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $ASRetrieveUserDataErrorCopyWith<$Res> {
  _$ASRetrieveUserDataErrorCopyWithImpl(ASRetrieveUserDataError _value,
      $Res Function(ASRetrieveUserDataError) _then)
      : super(_value, (v) => _then(v as ASRetrieveUserDataError));

  @override
  ASRetrieveUserDataError get _value => super._value as ASRetrieveUserDataError;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(ASRetrieveUserDataError(
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
            other is ASRetrieveUserDataError &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message, stackTrace);

  @JsonKey(ignore: true)
  @override
  $ASRetrieveUserDataErrorCopyWith<ASRetrieveUserDataError> get copyWith =>
      _$ASRetrieveUserDataErrorCopyWithImpl<ASRetrieveUserDataError>(
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
      {required String code,
      required String message,
      required StackTrace stackTrace}) = _$ASRetrieveUserDataError;

  String get code;
  String get message;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $ASRetrieveUserDataErrorCopyWith<ASRetrieveUserDataError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ASIsAdminLoadingCopyWith<$Res> {
  factory $ASIsAdminLoadingCopyWith(
          ASIsAdminLoading value, $Res Function(ASIsAdminLoading) then) =
      _$ASIsAdminLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ASIsAdminLoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $ASIsAdminLoadingCopyWith<$Res> {
  _$ASIsAdminLoadingCopyWithImpl(
      ASIsAdminLoading _value, $Res Function(ASIsAdminLoading) _then)
      : super(_value, (v) => _then(v as ASIsAdminLoading));

  @override
  ASIsAdminLoading get _value => super._value as ASIsAdminLoading;
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
        (other.runtimeType == runtimeType && other is ASIsAdminLoading);
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
abstract class $ASIsAdminSuccessCopyWith<$Res> {
  factory $ASIsAdminSuccessCopyWith(
          ASIsAdminSuccess value, $Res Function(ASIsAdminSuccess) then) =
      _$ASIsAdminSuccessCopyWithImpl<$Res>;
  $Res call({bool isAdmin});
}

/// @nodoc
class _$ASIsAdminSuccessCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $ASIsAdminSuccessCopyWith<$Res> {
  _$ASIsAdminSuccessCopyWithImpl(
      ASIsAdminSuccess _value, $Res Function(ASIsAdminSuccess) _then)
      : super(_value, (v) => _then(v as ASIsAdminSuccess));

  @override
  ASIsAdminSuccess get _value => super._value as ASIsAdminSuccess;

  @override
  $Res call({
    Object? isAdmin = freezed,
  }) {
    return _then(ASIsAdminSuccess(
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
            other is ASIsAdminSuccess &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAdmin);

  @JsonKey(ignore: true)
  @override
  $ASIsAdminSuccessCopyWith<ASIsAdminSuccess> get copyWith =>
      _$ASIsAdminSuccessCopyWithImpl<ASIsAdminSuccess>(this, _$identity);

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
    required TResult orElse(),
  }) {
    if (isAdminSuccess != null) {
      return isAdminSuccess(this);
    }
    return orElse();
  }
}

abstract class ASIsAdminSuccess implements AuthState {
  const factory ASIsAdminSuccess({required bool isAdmin}) = _$ASIsAdminSuccess;

  bool get isAdmin;
  @JsonKey(ignore: true)
  $ASIsAdminSuccessCopyWith<ASIsAdminSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ASIsAdminErrorCopyWith<$Res> {
  factory $ASIsAdminErrorCopyWith(
          ASIsAdminError value, $Res Function(ASIsAdminError) then) =
      _$ASIsAdminErrorCopyWithImpl<$Res>;
  $Res call({String code, String message, StackTrace stackTrace});
}

/// @nodoc
class _$ASIsAdminErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $ASIsAdminErrorCopyWith<$Res> {
  _$ASIsAdminErrorCopyWithImpl(
      ASIsAdminError _value, $Res Function(ASIsAdminError) _then)
      : super(_value, (v) => _then(v as ASIsAdminError));

  @override
  ASIsAdminError get _value => super._value as ASIsAdminError;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(ASIsAdminError(
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
            other is ASIsAdminError &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message, stackTrace);

  @JsonKey(ignore: true)
  @override
  $ASIsAdminErrorCopyWith<ASIsAdminError> get copyWith =>
      _$ASIsAdminErrorCopyWithImpl<ASIsAdminError>(this, _$identity);

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
      {required String code,
      required String message,
      required StackTrace stackTrace}) = _$ASIsAdminError;

  String get code;
  String get message;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $ASIsAdminErrorCopyWith<ASIsAdminError> get copyWith =>
      throw _privateConstructorUsedError;
}
