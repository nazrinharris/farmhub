// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Price {
  num get currentPrice => throw _privateConstructorUsedError;
  String get priceDate => throw _privateConstructorUsedError;
  DateTime get priceDateTimeStamp => throw _privateConstructorUsedError;
  bool get isAverage => throw _privateConstructorUsedError;
  String get priceId => throw _privateConstructorUsedError;
  List<PriceSnippet> get allPricesWithDateList =>
      throw _privateConstructorUsedError;

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
      DateTime priceDateTimeStamp,
      bool isAverage,
      String priceId,
      List<PriceSnippet> allPricesWithDateList});
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
    Object? priceDateTimeStamp = freezed,
    Object? isAverage = freezed,
    Object? priceId = freezed,
    Object? allPricesWithDateList = freezed,
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
      allPricesWithDateList: allPricesWithDateList == freezed
          ? _value.allPricesWithDateList
          : allPricesWithDateList // ignore: cast_nullable_to_non_nullable
              as List<PriceSnippet>,
    ));
  }
}

/// @nodoc
abstract class _$$_PriceCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$$_PriceCopyWith(_$_Price value, $Res Function(_$_Price) then) =
      __$$_PriceCopyWithImpl<$Res>;
  @override
  $Res call(
      {num currentPrice,
      String priceDate,
      DateTime priceDateTimeStamp,
      bool isAverage,
      String priceId,
      List<PriceSnippet> allPricesWithDateList});
}

/// @nodoc
class __$$_PriceCopyWithImpl<$Res> extends _$PriceCopyWithImpl<$Res>
    implements _$$_PriceCopyWith<$Res> {
  __$$_PriceCopyWithImpl(_$_Price _value, $Res Function(_$_Price) _then)
      : super(_value, (v) => _then(v as _$_Price));

  @override
  _$_Price get _value => super._value as _$_Price;

  @override
  $Res call({
    Object? currentPrice = freezed,
    Object? priceDate = freezed,
    Object? priceDateTimeStamp = freezed,
    Object? isAverage = freezed,
    Object? priceId = freezed,
    Object? allPricesWithDateList = freezed,
  }) {
    return _then(_$_Price(
      currentPrice: currentPrice == freezed
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as num,
      priceDate: priceDate == freezed
          ? _value.priceDate
          : priceDate // ignore: cast_nullable_to_non_nullable
              as String,
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
      allPricesWithDateList: allPricesWithDateList == freezed
          ? _value._allPricesWithDateList
          : allPricesWithDateList // ignore: cast_nullable_to_non_nullable
              as List<PriceSnippet>,
    ));
  }
}

/// @nodoc

class _$_Price implements _Price {
  _$_Price(
      {required this.currentPrice,
      required this.priceDate,
      required this.priceDateTimeStamp,
      required this.isAverage,
      required this.priceId,
      required final List<PriceSnippet> allPricesWithDateList})
      : _allPricesWithDateList = allPricesWithDateList;

  @override
  final num currentPrice;
  @override
  final String priceDate;
  @override
  final DateTime priceDateTimeStamp;
  @override
  final bool isAverage;
  @override
  final String priceId;
  final List<PriceSnippet> _allPricesWithDateList;
  @override
  List<PriceSnippet> get allPricesWithDateList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allPricesWithDateList);
  }

  @override
  String toString() {
    return 'Price(currentPrice: $currentPrice, priceDate: $priceDate, priceDateTimeStamp: $priceDateTimeStamp, isAverage: $isAverage, priceId: $priceId, allPricesWithDateList: $allPricesWithDateList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Price &&
            const DeepCollectionEquality()
                .equals(other.currentPrice, currentPrice) &&
            const DeepCollectionEquality().equals(other.priceDate, priceDate) &&
            const DeepCollectionEquality()
                .equals(other.priceDateTimeStamp, priceDateTimeStamp) &&
            const DeepCollectionEquality().equals(other.isAverage, isAverage) &&
            const DeepCollectionEquality().equals(other.priceId, priceId) &&
            const DeepCollectionEquality()
                .equals(other._allPricesWithDateList, _allPricesWithDateList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPrice),
      const DeepCollectionEquality().hash(priceDate),
      const DeepCollectionEquality().hash(priceDateTimeStamp),
      const DeepCollectionEquality().hash(isAverage),
      const DeepCollectionEquality().hash(priceId),
      const DeepCollectionEquality().hash(_allPricesWithDateList));

  @JsonKey(ignore: true)
  @override
  _$$_PriceCopyWith<_$_Price> get copyWith =>
      __$$_PriceCopyWithImpl<_$_Price>(this, _$identity);
}

abstract class _Price implements Price {
  factory _Price(
      {required final num currentPrice,
      required final String priceDate,
      required final DateTime priceDateTimeStamp,
      required final bool isAverage,
      required final String priceId,
      required final List<PriceSnippet> allPricesWithDateList}) = _$_Price;

  @override
  num get currentPrice => throw _privateConstructorUsedError;
  @override
  String get priceDate => throw _privateConstructorUsedError;
  @override
  DateTime get priceDateTimeStamp => throw _privateConstructorUsedError;
  @override
  bool get isAverage => throw _privateConstructorUsedError;
  @override
  String get priceId => throw _privateConstructorUsedError;
  @override
  List<PriceSnippet> get allPricesWithDateList =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PriceCopyWith<_$_Price> get copyWith =>
      throw _privateConstructorUsedError;
}

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
abstract class _$$_PriceSnippetCopyWith<$Res>
    implements $PriceSnippetCopyWith<$Res> {
  factory _$$_PriceSnippetCopyWith(
          _$_PriceSnippet value, $Res Function(_$_PriceSnippet) then) =
      __$$_PriceSnippetCopyWithImpl<$Res>;
  @override
  $Res call({num price, String priceDate});
}

/// @nodoc
class __$$_PriceSnippetCopyWithImpl<$Res>
    extends _$PriceSnippetCopyWithImpl<$Res>
    implements _$$_PriceSnippetCopyWith<$Res> {
  __$$_PriceSnippetCopyWithImpl(
      _$_PriceSnippet _value, $Res Function(_$_PriceSnippet) _then)
      : super(_value, (v) => _then(v as _$_PriceSnippet));

  @override
  _$_PriceSnippet get _value => super._value as _$_PriceSnippet;

  @override
  $Res call({
    Object? price = freezed,
    Object? priceDate = freezed,
  }) {
    return _then(_$_PriceSnippet(
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
            other is _$_PriceSnippet &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.priceDate, priceDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(priceDate));

  @JsonKey(ignore: true)
  @override
  _$$_PriceSnippetCopyWith<_$_PriceSnippet> get copyWith =>
      __$$_PriceSnippetCopyWithImpl<_$_PriceSnippet>(this, _$identity);
}

abstract class _PriceSnippet implements PriceSnippet {
  factory _PriceSnippet(
      {required final num price,
      required final String priceDate}) = _$_PriceSnippet;

  @override
  num get price => throw _privateConstructorUsedError;
  @override
  String get priceDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PriceSnippetCopyWith<_$_PriceSnippet> get copyWith =>
      throw _privateConstructorUsedError;
}
