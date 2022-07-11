// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'farm_shop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Farm {
  String get fid => throw _privateConstructorUsedError;
  String get farmName => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FarmCopyWith<Farm> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmCopyWith<$Res> {
  factory $FarmCopyWith(Farm value, $Res Function(Farm) then) =
      _$FarmCopyWithImpl<$Res>;
  $Res call({String fid, String farmName, Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$FarmCopyWithImpl<$Res> implements $FarmCopyWith<$Res> {
  _$FarmCopyWithImpl(this._value, this._then);

  final Farm _value;
  // ignore: unused_field
  final $Res Function(Farm) _then;

  @override
  $Res call({
    Object? fid = freezed,
    Object? farmName = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      fid: fid == freezed
          ? _value.fid
          : fid // ignore: cast_nullable_to_non_nullable
              as String,
      farmName: farmName == freezed
          ? _value.farmName
          : farmName // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  @override
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc
abstract class _$$_FarmCopyWith<$Res> implements $FarmCopyWith<$Res> {
  factory _$$_FarmCopyWith(_$_Farm value, $Res Function(_$_Farm) then) =
      __$$_FarmCopyWithImpl<$Res>;
  @override
  $Res call({String fid, String farmName, Address address});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$_FarmCopyWithImpl<$Res> extends _$FarmCopyWithImpl<$Res>
    implements _$$_FarmCopyWith<$Res> {
  __$$_FarmCopyWithImpl(_$_Farm _value, $Res Function(_$_Farm) _then)
      : super(_value, (v) => _then(v as _$_Farm));

  @override
  _$_Farm get _value => super._value as _$_Farm;

  @override
  $Res call({
    Object? fid = freezed,
    Object? farmName = freezed,
    Object? address = freezed,
  }) {
    return _then(_$_Farm(
      fid: fid == freezed
          ? _value.fid
          : fid // ignore: cast_nullable_to_non_nullable
              as String,
      farmName: farmName == freezed
          ? _value.farmName
          : farmName // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc

class _$_Farm implements _Farm {
  const _$_Farm(
      {required this.fid, required this.farmName, required this.address});

  @override
  final String fid;
  @override
  final String farmName;
  @override
  final Address address;

  @override
  String toString() {
    return 'Farm(fid: $fid, farmName: $farmName, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Farm &&
            const DeepCollectionEquality().equals(other.fid, fid) &&
            const DeepCollectionEquality().equals(other.farmName, farmName) &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fid),
      const DeepCollectionEquality().hash(farmName),
      const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  _$$_FarmCopyWith<_$_Farm> get copyWith =>
      __$$_FarmCopyWithImpl<_$_Farm>(this, _$identity);
}

abstract class _Farm implements Farm {
  const factory _Farm(
      {required final String fid,
      required final String farmName,
      required final Address address}) = _$_Farm;

  @override
  String get fid => throw _privateConstructorUsedError;
  @override
  String get farmName => throw _privateConstructorUsedError;
  @override
  Address get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FarmCopyWith<_$_Farm> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Shop {
  String get sid => throw _privateConstructorUsedError;
  String get shopName => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopCopyWith<Shop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopCopyWith<$Res> {
  factory $ShopCopyWith(Shop value, $Res Function(Shop) then) =
      _$ShopCopyWithImpl<$Res>;
  $Res call({String sid, String shopName, Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$ShopCopyWithImpl<$Res> implements $ShopCopyWith<$Res> {
  _$ShopCopyWithImpl(this._value, this._then);

  final Shop _value;
  // ignore: unused_field
  final $Res Function(Shop) _then;

  @override
  $Res call({
    Object? sid = freezed,
    Object? shopName = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      sid: sid == freezed
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  @override
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc
abstract class _$$_ShopCopyWith<$Res> implements $ShopCopyWith<$Res> {
  factory _$$_ShopCopyWith(_$_Shop value, $Res Function(_$_Shop) then) =
      __$$_ShopCopyWithImpl<$Res>;
  @override
  $Res call({String sid, String shopName, Address address});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$_ShopCopyWithImpl<$Res> extends _$ShopCopyWithImpl<$Res>
    implements _$$_ShopCopyWith<$Res> {
  __$$_ShopCopyWithImpl(_$_Shop _value, $Res Function(_$_Shop) _then)
      : super(_value, (v) => _then(v as _$_Shop));

  @override
  _$_Shop get _value => super._value as _$_Shop;

  @override
  $Res call({
    Object? sid = freezed,
    Object? shopName = freezed,
    Object? address = freezed,
  }) {
    return _then(_$_Shop(
      sid: sid == freezed
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc

class _$_Shop implements _Shop {
  const _$_Shop(
      {required this.sid, required this.shopName, required this.address});

  @override
  final String sid;
  @override
  final String shopName;
  @override
  final Address address;

  @override
  String toString() {
    return 'Shop(sid: $sid, shopName: $shopName, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Shop &&
            const DeepCollectionEquality().equals(other.sid, sid) &&
            const DeepCollectionEquality().equals(other.shopName, shopName) &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sid),
      const DeepCollectionEquality().hash(shopName),
      const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  _$$_ShopCopyWith<_$_Shop> get copyWith =>
      __$$_ShopCopyWithImpl<_$_Shop>(this, _$identity);
}

abstract class _Shop implements Shop {
  const factory _Shop(
      {required final String sid,
      required final String shopName,
      required final Address address}) = _$_Shop;

  @override
  String get sid => throw _privateConstructorUsedError;
  @override
  String get shopName => throw _privateConstructorUsedError;
  @override
  Address get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ShopCopyWith<_$_Shop> get copyWith => throw _privateConstructorUsedError;
}
