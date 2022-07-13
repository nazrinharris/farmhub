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

FarmhubUser _$FarmhubUserFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _FarmhubUser.fromJson(json);
    case 'farmer':
      return FarmhubUserFarmer.fromJson(json);
    case 'business':
      return FarmhubUserBusiness.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'FarmhubUser',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$FarmhubUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  List<ProduceFavorite> get produceFavoritesList =>
      throw _privateConstructorUsedError;
  UserType get userType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType)
        $default, {
    required TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)
        farmer,
    required TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)
        business,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType)?
        $default, {
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)?
        farmer,
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)?
        business,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType)?
        $default, {
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)?
        farmer,
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)?
        business,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FarmhubUser value) $default, {
    required TResult Function(FarmhubUserFarmer value) farmer,
    required TResult Function(FarmhubUserBusiness value) business,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_FarmhubUser value)? $default, {
    TResult Function(FarmhubUserFarmer value)? farmer,
    TResult Function(FarmhubUserBusiness value)? business,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FarmhubUser value)? $default, {
    TResult Function(FarmhubUserFarmer value)? farmer,
    TResult Function(FarmhubUserBusiness value)? business,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  $Res call(
      {String uid,
      String email,
      String username,
      String createdAt,
      List<ProduceFavorite> produceFavoritesList,
      UserType userType});
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
    Object? userType = freezed,
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
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
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
      List<ProduceFavorite> produceFavoritesList,
      UserType userType});
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
    Object? userType = freezed,
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
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_FarmhubUser extends _FarmhubUser {
  _$_FarmhubUser(
      {required this.uid,
      required this.email,
      required this.username,
      required this.createdAt,
      required this.produceFavoritesList,
      required this.userType,
      final String? $type})
      : $type = $type ?? 'default',
        super._();

  factory _$_FarmhubUser.fromJson(Map<String, dynamic> json) =>
      _$$_FarmhubUserFromJson(json);

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
  final UserType userType;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FarmhubUser(uid: $uid, email: $email, username: $username, createdAt: $createdAt, produceFavoritesList: $produceFavoritesList, userType: $userType)';
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
                .equals(other.produceFavoritesList, produceFavoritesList) &&
            const DeepCollectionEquality().equals(other.userType, userType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(produceFavoritesList),
      const DeepCollectionEquality().hash(userType));

  @JsonKey(ignore: true)
  @override
  _$$_FarmhubUserCopyWith<_$_FarmhubUser> get copyWith =>
      __$$_FarmhubUserCopyWithImpl<_$_FarmhubUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType)
        $default, {
    required TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)
        farmer,
    required TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)
        business,
  }) {
    return $default(
        uid, email, username, createdAt, produceFavoritesList, userType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType)?
        $default, {
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)?
        farmer,
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)?
        business,
  }) {
    return $default?.call(
        uid, email, username, createdAt, produceFavoritesList, userType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType)?
        $default, {
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)?
        farmer,
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)?
        business,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          uid, email, username, createdAt, produceFavoritesList, userType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FarmhubUser value) $default, {
    required TResult Function(FarmhubUserFarmer value) farmer,
    required TResult Function(FarmhubUserBusiness value) business,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_FarmhubUser value)? $default, {
    TResult Function(FarmhubUserFarmer value)? farmer,
    TResult Function(FarmhubUserBusiness value)? business,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FarmhubUser value)? $default, {
    TResult Function(FarmhubUserFarmer value)? farmer,
    TResult Function(FarmhubUserBusiness value)? business,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_FarmhubUserToJson(this);
  }
}

abstract class _FarmhubUser extends FarmhubUser {
  factory _FarmhubUser(
      {required final String uid,
      required final String email,
      required final String username,
      required final String createdAt,
      required final List<ProduceFavorite> produceFavoritesList,
      required final UserType userType}) = _$_FarmhubUser;
  _FarmhubUser._() : super._();

  factory _FarmhubUser.fromJson(Map<String, dynamic> json) =
      _$_FarmhubUser.fromJson;

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
  UserType get userType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FarmhubUserCopyWith<_$_FarmhubUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FarmhubUserFarmerCopyWith<$Res>
    implements $FarmhubUserCopyWith<$Res> {
  factory _$$FarmhubUserFarmerCopyWith(
          _$FarmhubUserFarmer value, $Res Function(_$FarmhubUserFarmer) then) =
      __$$FarmhubUserFarmerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String email,
      String username,
      String createdAt,
      List<ProduceFavorite> produceFavoritesList,
      UserType userType,
      List<Farm> farmList,
      List<Shop> shopList});
}

/// @nodoc
class __$$FarmhubUserFarmerCopyWithImpl<$Res>
    extends _$FarmhubUserCopyWithImpl<$Res>
    implements _$$FarmhubUserFarmerCopyWith<$Res> {
  __$$FarmhubUserFarmerCopyWithImpl(
      _$FarmhubUserFarmer _value, $Res Function(_$FarmhubUserFarmer) _then)
      : super(_value, (v) => _then(v as _$FarmhubUserFarmer));

  @override
  _$FarmhubUserFarmer get _value => super._value as _$FarmhubUserFarmer;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? createdAt = freezed,
    Object? produceFavoritesList = freezed,
    Object? userType = freezed,
    Object? farmList = freezed,
    Object? shopList = freezed,
  }) {
    return _then(_$FarmhubUserFarmer(
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
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
      farmList: farmList == freezed
          ? _value.farmList
          : farmList // ignore: cast_nullable_to_non_nullable
              as List<Farm>,
      shopList: shopList == freezed
          ? _value.shopList
          : shopList // ignore: cast_nullable_to_non_nullable
              as List<Shop>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FarmhubUserFarmer extends FarmhubUserFarmer {
  const _$FarmhubUserFarmer(
      {required this.uid,
      required this.email,
      required this.username,
      required this.createdAt,
      required this.produceFavoritesList,
      required this.userType,
      required this.farmList,
      required this.shopList,
      final String? $type})
      : $type = $type ?? 'farmer',
        super._();

  factory _$FarmhubUserFarmer.fromJson(Map<String, dynamic> json) =>
      _$$FarmhubUserFarmerFromJson(json);

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
  final UserType userType;
  @override
  final List<Farm> farmList;
  @override
  final List<Shop> shopList;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FarmhubUser.farmer(uid: $uid, email: $email, username: $username, createdAt: $createdAt, produceFavoritesList: $produceFavoritesList, userType: $userType, farmList: $farmList, shopList: $shopList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FarmhubUserFarmer &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.produceFavoritesList, produceFavoritesList) &&
            const DeepCollectionEquality().equals(other.userType, userType) &&
            const DeepCollectionEquality().equals(other.farmList, farmList) &&
            const DeepCollectionEquality().equals(other.shopList, shopList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(produceFavoritesList),
      const DeepCollectionEquality().hash(userType),
      const DeepCollectionEquality().hash(farmList),
      const DeepCollectionEquality().hash(shopList));

  @JsonKey(ignore: true)
  @override
  _$$FarmhubUserFarmerCopyWith<_$FarmhubUserFarmer> get copyWith =>
      __$$FarmhubUserFarmerCopyWithImpl<_$FarmhubUserFarmer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType)
        $default, {
    required TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)
        farmer,
    required TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)
        business,
  }) {
    return farmer(uid, email, username, createdAt, produceFavoritesList,
        userType, farmList, shopList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType)?
        $default, {
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)?
        farmer,
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)?
        business,
  }) {
    return farmer?.call(uid, email, username, createdAt, produceFavoritesList,
        userType, farmList, shopList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType)?
        $default, {
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)?
        farmer,
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)?
        business,
    required TResult orElse(),
  }) {
    if (farmer != null) {
      return farmer(uid, email, username, createdAt, produceFavoritesList,
          userType, farmList, shopList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FarmhubUser value) $default, {
    required TResult Function(FarmhubUserFarmer value) farmer,
    required TResult Function(FarmhubUserBusiness value) business,
  }) {
    return farmer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_FarmhubUser value)? $default, {
    TResult Function(FarmhubUserFarmer value)? farmer,
    TResult Function(FarmhubUserBusiness value)? business,
  }) {
    return farmer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FarmhubUser value)? $default, {
    TResult Function(FarmhubUserFarmer value)? farmer,
    TResult Function(FarmhubUserBusiness value)? business,
    required TResult orElse(),
  }) {
    if (farmer != null) {
      return farmer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FarmhubUserFarmerToJson(this);
  }
}

abstract class FarmhubUserFarmer extends FarmhubUser {
  const factory FarmhubUserFarmer(
      {required final String uid,
      required final String email,
      required final String username,
      required final String createdAt,
      required final List<ProduceFavorite> produceFavoritesList,
      required final UserType userType,
      required final List<Farm> farmList,
      required final List<Shop> shopList}) = _$FarmhubUserFarmer;
  const FarmhubUserFarmer._() : super._();

  factory FarmhubUserFarmer.fromJson(Map<String, dynamic> json) =
      _$FarmhubUserFarmer.fromJson;

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
  UserType get userType => throw _privateConstructorUsedError;
  List<Farm> get farmList => throw _privateConstructorUsedError;
  List<Shop> get shopList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$FarmhubUserFarmerCopyWith<_$FarmhubUserFarmer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FarmhubUserBusinessCopyWith<$Res>
    implements $FarmhubUserCopyWith<$Res> {
  factory _$$FarmhubUserBusinessCopyWith(_$FarmhubUserBusiness value,
          $Res Function(_$FarmhubUserBusiness) then) =
      __$$FarmhubUserBusinessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String email,
      String username,
      String createdAt,
      List<ProduceFavorite> produceFavoritesList,
      UserType userType,
      List<Farm> farmList,
      List<Shop> shopList});
}

/// @nodoc
class __$$FarmhubUserBusinessCopyWithImpl<$Res>
    extends _$FarmhubUserCopyWithImpl<$Res>
    implements _$$FarmhubUserBusinessCopyWith<$Res> {
  __$$FarmhubUserBusinessCopyWithImpl(
      _$FarmhubUserBusiness _value, $Res Function(_$FarmhubUserBusiness) _then)
      : super(_value, (v) => _then(v as _$FarmhubUserBusiness));

  @override
  _$FarmhubUserBusiness get _value => super._value as _$FarmhubUserBusiness;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? createdAt = freezed,
    Object? produceFavoritesList = freezed,
    Object? userType = freezed,
    Object? farmList = freezed,
    Object? shopList = freezed,
  }) {
    return _then(_$FarmhubUserBusiness(
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
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
      farmList: farmList == freezed
          ? _value.farmList
          : farmList // ignore: cast_nullable_to_non_nullable
              as List<Farm>,
      shopList: shopList == freezed
          ? _value.shopList
          : shopList // ignore: cast_nullable_to_non_nullable
              as List<Shop>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FarmhubUserBusiness extends FarmhubUserBusiness {
  const _$FarmhubUserBusiness(
      {required this.uid,
      required this.email,
      required this.username,
      required this.createdAt,
      required this.produceFavoritesList,
      required this.userType,
      required this.farmList,
      required this.shopList,
      final String? $type})
      : $type = $type ?? 'business',
        super._();

  factory _$FarmhubUserBusiness.fromJson(Map<String, dynamic> json) =>
      _$$FarmhubUserBusinessFromJson(json);

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
  final UserType userType;
  @override
  final List<Farm> farmList;
  @override
  final List<Shop> shopList;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FarmhubUser.business(uid: $uid, email: $email, username: $username, createdAt: $createdAt, produceFavoritesList: $produceFavoritesList, userType: $userType, farmList: $farmList, shopList: $shopList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FarmhubUserBusiness &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.produceFavoritesList, produceFavoritesList) &&
            const DeepCollectionEquality().equals(other.userType, userType) &&
            const DeepCollectionEquality().equals(other.farmList, farmList) &&
            const DeepCollectionEquality().equals(other.shopList, shopList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(produceFavoritesList),
      const DeepCollectionEquality().hash(userType),
      const DeepCollectionEquality().hash(farmList),
      const DeepCollectionEquality().hash(shopList));

  @JsonKey(ignore: true)
  @override
  _$$FarmhubUserBusinessCopyWith<_$FarmhubUserBusiness> get copyWith =>
      __$$FarmhubUserBusinessCopyWithImpl<_$FarmhubUserBusiness>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType)
        $default, {
    required TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)
        farmer,
    required TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)
        business,
  }) {
    return business(uid, email, username, createdAt, produceFavoritesList,
        userType, farmList, shopList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType)?
        $default, {
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)?
        farmer,
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)?
        business,
  }) {
    return business?.call(uid, email, username, createdAt, produceFavoritesList,
        userType, farmList, shopList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType)?
        $default, {
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)?
        farmer,
    TResult Function(
            String uid,
            String email,
            String username,
            String createdAt,
            List<ProduceFavorite> produceFavoritesList,
            UserType userType,
            List<Farm> farmList,
            List<Shop> shopList)?
        business,
    required TResult orElse(),
  }) {
    if (business != null) {
      return business(uid, email, username, createdAt, produceFavoritesList,
          userType, farmList, shopList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FarmhubUser value) $default, {
    required TResult Function(FarmhubUserFarmer value) farmer,
    required TResult Function(FarmhubUserBusiness value) business,
  }) {
    return business(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_FarmhubUser value)? $default, {
    TResult Function(FarmhubUserFarmer value)? farmer,
    TResult Function(FarmhubUserBusiness value)? business,
  }) {
    return business?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FarmhubUser value)? $default, {
    TResult Function(FarmhubUserFarmer value)? farmer,
    TResult Function(FarmhubUserBusiness value)? business,
    required TResult orElse(),
  }) {
    if (business != null) {
      return business(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FarmhubUserBusinessToJson(this);
  }
}

abstract class FarmhubUserBusiness extends FarmhubUser {
  const factory FarmhubUserBusiness(
      {required final String uid,
      required final String email,
      required final String username,
      required final String createdAt,
      required final List<ProduceFavorite> produceFavoritesList,
      required final UserType userType,
      required final List<Farm> farmList,
      required final List<Shop> shopList}) = _$FarmhubUserBusiness;
  const FarmhubUserBusiness._() : super._();

  factory FarmhubUserBusiness.fromJson(Map<String, dynamic> json) =
      _$FarmhubUserBusiness.fromJson;

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
  UserType get userType => throw _privateConstructorUsedError;
  List<Farm> get farmList => throw _privateConstructorUsedError;
  List<Shop> get shopList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$FarmhubUserBusinessCopyWith<_$FarmhubUserBusiness> get copyWith =>
      throw _privateConstructorUsedError;
}
