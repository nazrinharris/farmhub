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
      {required num currentPrice,
      required String priceDate,
      required List<num> allPrices,
      required DateTime priceDateTimeStamp,
      required bool isAverage,
      required String priceId}) {
    return _Price(
      currentPrice: currentPrice,
      priceDate: priceDate,
      allPrices: allPrices,
      priceDateTimeStamp: priceDateTimeStamp,
      isAverage: isAverage,
      priceId: priceId,
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
  num get currentPrice => throw _privateConstructorUsedError;
  String get priceDate => throw _privateConstructorUsedError;
  List<num> get allPrices => throw _privateConstructorUsedError;
  DateTime get priceDateTimeStamp => throw _privateConstructorUsedError;
  bool get isAverage => throw _privateConstructorUsedError;
  String get priceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceCopyWith<Price> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCopyWith<$Res> {
  factory $PriceCopyWith(Price value, $Res Function(Price) then) =
      _$PriceCopyWithImpl<$Res>;
  $Res call(
      {num currentPrice,
      String priceDate,
      List<num> allPrices,
      DateTime priceDateTimeStamp,
      bool isAverage,
      String priceId});
}

/// @nodoc
class _$PriceCopyWithImpl<$Res> implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._value, this._then);

  final Price _value;
  // ignore: unused_field
  final $Res Function(Price) _then;

  @override
  $Res call({
    Object? currentPrice = freezed,
    Object? priceDate = freezed,
    Object? allPrices = freezed,
    Object? priceDateTimeStamp = freezed,
    Object? isAverage = freezed,
    Object? priceId = freezed,
  }) {
    return _then(_value.copyWith(
      currentPrice: currentPrice == freezed
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as num,
      priceDate: priceDate == freezed
          ? _value.priceDate
          : priceDate // ignore: cast_nullable_to_non_nullable
              as String,
      allPrices: allPrices == freezed
          ? _value.allPrices
          : allPrices // ignore: cast_nullable_to_non_nullable
              as List<num>,
      priceDateTimeStamp: priceDateTimeStamp == freezed
          ? _value.priceDateTimeStamp
          : priceDateTimeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAverage: isAverage == freezed
          ? _value.isAverage
          : isAverage // ignore: cast_nullable_to_non_nullable
              as bool,
      priceId: priceId == freezed
          ? _value.priceId
          : priceId // ignore: cast_nullable_to_non_nullable
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
      {num currentPrice,
      String priceDate,
      List<num> allPrices,
      DateTime priceDateTimeStamp,
      bool isAverage,
      String priceId});
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
    Object? currentPrice = freezed,
    Object? priceDate = freezed,
    Object? allPrices = freezed,
    Object? priceDateTimeStamp = freezed,
    Object? isAverage = freezed,
    Object? priceId = freezed,
  }) {
    return _then(_Price(
      currentPrice: currentPrice == freezed
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as num,
      priceDate: priceDate == freezed
          ? _value.priceDate
          : priceDate // ignore: cast_nullable_to_non_nullable
              as String,
      allPrices: allPrices == freezed
          ? _value.allPrices
          : allPrices // ignore: cast_nullable_to_non_nullable
              as List<num>,
      priceDateTimeStamp: priceDateTimeStamp == freezed
          ? _value.priceDateTimeStamp
          : priceDateTimeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAverage: isAverage == freezed
          ? _value.isAverage
          : isAverage // ignore: cast_nullable_to_non_nullable
              as bool,
      priceId: priceId == freezed
          ? _value.priceId
          : priceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Price implements _Price {
  _$_Price(
      {required this.currentPrice,
      required this.priceDate,
      required this.allPrices,
      required this.priceDateTimeStamp,
      required this.isAverage,
      required this.priceId});

  factory _$_Price.fromJson(Map<String, dynamic> json) =>
      _$$_PriceFromJson(json);

  @override
  final num currentPrice;
  @override
  final String priceDate;
  @override
  final List<num> allPrices;
  @override
  final DateTime priceDateTimeStamp;
  @override
  final bool isAverage;
  @override
  final String priceId;

  @override
  String toString() {
    return 'Price(currentPrice: $currentPrice, priceDate: $priceDate, allPrices: $allPrices, priceDateTimeStamp: $priceDateTimeStamp, isAverage: $isAverage, priceId: $priceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Price &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.priceDate, priceDate) ||
                other.priceDate == priceDate) &&
            const DeepCollectionEquality().equals(other.allPrices, allPrices) &&
            (identical(other.priceDateTimeStamp, priceDateTimeStamp) ||
                other.priceDateTimeStamp == priceDateTimeStamp) &&
            (identical(other.isAverage, isAverage) ||
                other.isAverage == isAverage) &&
            (identical(other.priceId, priceId) || other.priceId == priceId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPrice,
      priceDate,
      const DeepCollectionEquality().hash(allPrices),
      priceDateTimeStamp,
      isAverage,
      priceId);

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
      {required num currentPrice,
      required String priceDate,
      required List<num> allPrices,
      required DateTime priceDateTimeStamp,
      required bool isAverage,
      required String priceId}) = _$_Price;

  factory _Price.fromJson(Map<String, dynamic> json) = _$_Price.fromJson;

  @override
  num get currentPrice;
  @override
  String get priceDate;
  @override
  List<num> get allPrices;
  @override
  DateTime get priceDateTimeStamp;
  @override
  bool get isAverage;
  @override
  String get priceId;
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
