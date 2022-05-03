// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Price _$PriceFromJson(Map<String, dynamic> json) {
  return _Price.fromJson(json);
}

/// @nodoc
class _$PriceTearOff {
  const _$PriceTearOff();

  _Price call(
      {required String priceId,
      required double currentPrice,
      required List<Map<String, dynamic>> editHistory,
      required String updateDate}) {
    return _Price(
      priceId: priceId,
      currentPrice: currentPrice,
      editHistory: editHistory,
      updateDate: updateDate,
    );
  }

  Price fromJson(Map<String, Object?> json) {
    return Price.fromJson(json);
  }
}

/// @nodoc
const $Price = _$PriceTearOff();

/// @nodoc
mixin _$Price {
  String get priceId => throw _privateConstructorUsedError;
  double get currentPrice => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get editHistory =>
      throw _privateConstructorUsedError;
  String get updateDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceCopyWith<Price> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCopyWith<$Res> {
  factory $PriceCopyWith(Price value, $Res Function(Price) then) =
      _$PriceCopyWithImpl<$Res>;
  $Res call(
      {String priceId,
      double currentPrice,
      List<Map<String, dynamic>> editHistory,
      String updateDate});
}

/// @nodoc
class _$PriceCopyWithImpl<$Res> implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._value, this._then);

  final Price _value;
  // ignore: unused_field
  final $Res Function(Price) _then;

  @override
  $Res call({
    Object? priceId = freezed,
    Object? currentPrice = freezed,
    Object? editHistory = freezed,
    Object? updateDate = freezed,
  }) {
    return _then(_value.copyWith(
      priceId: priceId == freezed
          ? _value.priceId
          : priceId // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: currentPrice == freezed
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      editHistory: editHistory == freezed
          ? _value.editHistory
          : editHistory // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      updateDate: updateDate == freezed
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PriceCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$PriceCopyWith(_Price value, $Res Function(_Price) then) =
      __$PriceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String priceId,
      double currentPrice,
      List<Map<String, dynamic>> editHistory,
      String updateDate});
}

/// @nodoc
class __$PriceCopyWithImpl<$Res> extends _$PriceCopyWithImpl<$Res>
    implements _$PriceCopyWith<$Res> {
  __$PriceCopyWithImpl(_Price _value, $Res Function(_Price) _then)
      : super(_value, (v) => _then(v as _Price));

  @override
  _Price get _value => super._value as _Price;

  @override
  $Res call({
    Object? priceId = freezed,
    Object? currentPrice = freezed,
    Object? editHistory = freezed,
    Object? updateDate = freezed,
  }) {
    return _then(_Price(
      priceId: priceId == freezed
          ? _value.priceId
          : priceId // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: currentPrice == freezed
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      editHistory: editHistory == freezed
          ? _value.editHistory
          : editHistory // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      updateDate: updateDate == freezed
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Price implements _Price {
  _$_Price(
      {required this.priceId,
      required this.currentPrice,
      required this.editHistory,
      required this.updateDate});

  factory _$_Price.fromJson(Map<String, dynamic> json) =>
      _$$_PriceFromJson(json);

  @override
  final String priceId;
  @override
  final double currentPrice;
  @override
  final List<Map<String, dynamic>> editHistory;
  @override
  final String updateDate;

  @override
  String toString() {
    return 'Price(priceId: $priceId, currentPrice: $currentPrice, editHistory: $editHistory, updateDate: $updateDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Price &&
            (identical(other.priceId, priceId) || other.priceId == priceId) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            const DeepCollectionEquality()
                .equals(other.editHistory, editHistory) &&
            (identical(other.updateDate, updateDate) ||
                other.updateDate == updateDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, priceId, currentPrice,
      const DeepCollectionEquality().hash(editHistory), updateDate);

  @JsonKey(ignore: true)
  @override
  _$PriceCopyWith<_Price> get copyWith =>
      __$PriceCopyWithImpl<_Price>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceToJson(this);
  }
}

abstract class _Price implements Price {
  factory _Price(
      {required String priceId,
      required double currentPrice,
      required List<Map<String, dynamic>> editHistory,
      required String updateDate}) = _$_Price;

  factory _Price.fromJson(Map<String, dynamic> json) = _$_Price.fromJson;

  @override
  String get priceId;
  @override
  double get currentPrice;
  @override
  List<Map<String, dynamic>> get editHistory;
  @override
  String get updateDate;
  @override
  @JsonKey(ignore: true)
  _$PriceCopyWith<_Price> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$PriceSnippetTearOff {
  const _$PriceSnippetTearOff();

  _PriceSnippet call({required num price, required String priceDate}) {
    return _PriceSnippet(
      price: price,
      priceDate: priceDate,
    );
  }
}

/// @nodoc
const $PriceSnippet = _$PriceSnippetTearOff();

/// @nodoc
mixin _$PriceSnippet {
  num get price => throw _privateConstructorUsedError;
  String get priceDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PriceSnippetCopyWith<PriceSnippet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceSnippetCopyWith<$Res> {
  factory $PriceSnippetCopyWith(
          PriceSnippet value, $Res Function(PriceSnippet) then) =
      _$PriceSnippetCopyWithImpl<$Res>;
  $Res call({num price, String priceDate});
}

/// @nodoc
class _$PriceSnippetCopyWithImpl<$Res> implements $PriceSnippetCopyWith<$Res> {
  _$PriceSnippetCopyWithImpl(this._value, this._then);

  final PriceSnippet _value;
  // ignore: unused_field
  final $Res Function(PriceSnippet) _then;

  @override
  $Res call({
    Object? price = freezed,
    Object? priceDate = freezed,
  }) {
    return _then(_value.copyWith(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      priceDate: priceDate == freezed
          ? _value.priceDate
          : priceDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PriceSnippetCopyWith<$Res>
    implements $PriceSnippetCopyWith<$Res> {
  factory _$PriceSnippetCopyWith(
          _PriceSnippet value, $Res Function(_PriceSnippet) then) =
      __$PriceSnippetCopyWithImpl<$Res>;
  @override
  $Res call({num price, String priceDate});
}

/// @nodoc
class __$PriceSnippetCopyWithImpl<$Res> extends _$PriceSnippetCopyWithImpl<$Res>
    implements _$PriceSnippetCopyWith<$Res> {
  __$PriceSnippetCopyWithImpl(
      _PriceSnippet _value, $Res Function(_PriceSnippet) _then)
      : super(_value, (v) => _then(v as _PriceSnippet));

  @override
  _PriceSnippet get _value => super._value as _PriceSnippet;

  @override
  $Res call({
    Object? price = freezed,
    Object? priceDate = freezed,
  }) {
    return _then(_PriceSnippet(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      priceDate: priceDate == freezed
          ? _value.priceDate
          : priceDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PriceSnippet implements _PriceSnippet {
  _$_PriceSnippet({required this.price, required this.priceDate});

  @override
  final num price;
  @override
  final String priceDate;

  @override
  String toString() {
    return 'PriceSnippet(price: $price, priceDate: $priceDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PriceSnippet &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceDate, priceDate) ||
                other.priceDate == priceDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price, priceDate);

  @JsonKey(ignore: true)
  @override
  _$PriceSnippetCopyWith<_PriceSnippet> get copyWith =>
      __$PriceSnippetCopyWithImpl<_PriceSnippet>(this, _$identity);
}

abstract class _PriceSnippet implements PriceSnippet {
  factory _PriceSnippet({required num price, required String priceDate}) =
      _$_PriceSnippet;

  @override
  num get price;
  @override
  String get priceDate;
  @override
  @JsonKey(ignore: true)
  _$PriceSnippetCopyWith<_PriceSnippet> get copyWith =>
      throw _privateConstructorUsedError;
}
