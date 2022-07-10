// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'farmhub_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FarmhubUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  List<ProduceFavorite> get produceFavoritesList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FarmhubUserCopyWith<FarmhubUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmhubUserCopyWith<$Res> {
  factory $FarmhubUserCopyWith(
          FarmhubUser value, $Res Function(FarmhubUser) then) =
      _$FarmhubUserCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      String email,
      String username,
      String createdAt,
      List<ProduceFavorite> produceFavoritesList});
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
    Object? username = freezed,
    Object? createdAt = freezed,
    Object? produceFavoritesList = freezed,
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
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      produceFavoritesList: produceFavoritesList == freezed
          ? _value.produceFavoritesList
          : produceFavoritesList // ignore: cast_nullable_to_non_nullable
              as List<ProduceFavorite>,
    ));
  }
}

/// @nodoc
abstract class _$$_FarmhubUserCopyWith<$Res>
    implements $FarmhubUserCopyWith<$Res> {
  factory _$$_FarmhubUserCopyWith(
          _$_FarmhubUser value, $Res Function(_$_FarmhubUser) then) =
      __$$_FarmhubUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String email,
      String username,
      String createdAt,
      List<ProduceFavorite> produceFavoritesList});
}

/// @nodoc
class __$$_FarmhubUserCopyWithImpl<$Res> extends _$FarmhubUserCopyWithImpl<$Res>
    implements _$$_FarmhubUserCopyWith<$Res> {
  __$$_FarmhubUserCopyWithImpl(
      _$_FarmhubUser _value, $Res Function(_$_FarmhubUser) _then)
      : super(_value, (v) => _then(v as _$_FarmhubUser));

  @override
  _$_FarmhubUser get _value => super._value as _$_FarmhubUser;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? createdAt = freezed,
    Object? produceFavoritesList = freezed,
  }) {
    return _then(_$_FarmhubUser(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      produceFavoritesList: produceFavoritesList == freezed
          ? _value.produceFavoritesList
          : produceFavoritesList // ignore: cast_nullable_to_non_nullable
              as List<ProduceFavorite>,
    ));
  }
}

/// @nodoc

class _$_FarmhubUser implements _FarmhubUser {
  _$_FarmhubUser(
      {required this.uid,
      required this.email,
      required this.username,
      required this.createdAt,
      required this.produceFavoritesList});

  @override
  final String uid;
  @override
  final String email;
  @override
  final String username;
  @override
  final String createdAt;
  @override
  final List<ProduceFavorite> produceFavoritesList;

  @override
  String toString() {
    return 'FarmhubUser(uid: $uid, email: $email, username: $username, createdAt: $createdAt, produceFavoritesList: $produceFavoritesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FarmhubUser &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.produceFavoritesList, produceFavoritesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(produceFavoritesList));

  @JsonKey(ignore: true)
  @override
  _$$_FarmhubUserCopyWith<_$_FarmhubUser> get copyWith =>
      __$$_FarmhubUserCopyWithImpl<_$_FarmhubUser>(this, _$identity);
}

abstract class _FarmhubUser implements FarmhubUser {
  factory _FarmhubUser(
          {required final String uid,
          required final String email,
          required final String username,
          required final String createdAt,
          required final List<ProduceFavorite> produceFavoritesList}) =
      _$_FarmhubUser;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get createdAt => throw _privateConstructorUsedError;
  @override
  List<ProduceFavorite> get produceFavoritesList =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FarmhubUserCopyWith<_$_FarmhubUser> get copyWith =>
      throw _privateConstructorUsedError;
}
