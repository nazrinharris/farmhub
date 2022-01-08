// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'farmhub_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FarmhubUser _$FarmhubUserFromJson(Map<String, dynamic> json) {
  return _FarmhubUser.fromJson(json);
}

/// @nodoc
class _$FarmhubUserTearOff {
  const _$FarmhubUserTearOff();

  _FarmhubUser call(
      {required String uid, required String email, required String createdAt}) {
    return _FarmhubUser(
      uid: uid,
      email: email,
      createdAt: createdAt,
    );
  }

  FarmhubUser fromJson(Map<String, Object?> json) {
    return FarmhubUser.fromJson(json);
  }
}

/// @nodoc
const $FarmhubUser = _$FarmhubUserTearOff();

/// @nodoc
mixin _$FarmhubUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FarmhubUserCopyWith<FarmhubUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmhubUserCopyWith<$Res> {
  factory $FarmhubUserCopyWith(
          FarmhubUser value, $Res Function(FarmhubUser) then) =
      _$FarmhubUserCopyWithImpl<$Res>;
  $Res call({String uid, String email, String createdAt});
}

/// @nodoc
class _$FarmhubUserCopyWithImpl<$Res> implements $FarmhubUserCopyWith<$Res> {
  _$FarmhubUserCopyWithImpl(this._value, this._then);

  final FarmhubUser _value;
  // ignore: unused_field
  final $Res Function(FarmhubUser) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FarmhubUserCopyWith<$Res>
    implements $FarmhubUserCopyWith<$Res> {
  factory _$FarmhubUserCopyWith(
          _FarmhubUser value, $Res Function(_FarmhubUser) then) =
      __$FarmhubUserCopyWithImpl<$Res>;
  @override
  $Res call({String uid, String email, String createdAt});
}

/// @nodoc
class __$FarmhubUserCopyWithImpl<$Res> extends _$FarmhubUserCopyWithImpl<$Res>
    implements _$FarmhubUserCopyWith<$Res> {
  __$FarmhubUserCopyWithImpl(
      _FarmhubUser _value, $Res Function(_FarmhubUser) _then)
      : super(_value, (v) => _then(v as _FarmhubUser));

  @override
  _FarmhubUser get _value => super._value as _FarmhubUser;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_FarmhubUser(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FarmhubUser implements _FarmhubUser {
  _$_FarmhubUser(
      {required this.uid, required this.email, required this.createdAt});

  factory _$_FarmhubUser.fromJson(Map<String, dynamic> json) =>
      _$$_FarmhubUserFromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'FarmhubUser(uid: $uid, email: $email, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FarmhubUser &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, email, createdAt);

  @JsonKey(ignore: true)
  @override
  _$FarmhubUserCopyWith<_FarmhubUser> get copyWith =>
      __$FarmhubUserCopyWithImpl<_FarmhubUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FarmhubUserToJson(this);
  }
}

abstract class _FarmhubUser implements FarmhubUser {
  factory _FarmhubUser(
      {required String uid,
      required String email,
      required String createdAt}) = _$_FarmhubUser;

  factory _FarmhubUser.fromJson(Map<String, dynamic> json) =
      _$_FarmhubUser.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$FarmhubUserCopyWith<_FarmhubUser> get copyWith =>
      throw _privateConstructorUsedError;
}
