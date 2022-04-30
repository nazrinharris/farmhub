// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'produce.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Produce _$ProduceFromJson(Map<String, dynamic> json) {
  return _Produce.fromJson(json);
}

/// @nodoc
class _$ProduceTearOff {
  const _$ProduceTearOff();

  _Produce call(
      {required String produceId,
      required String produceName,
      required String authorId,
      required Map<String, dynamic> currentProducePrice,
      required Map<String, dynamic> previousProducePrice,
      required Map<String, dynamic> weeklyPrices}) {
    return _Produce(
      produceId: produceId,
      produceName: produceName,
      authorId: authorId,
      currentProducePrice: currentProducePrice,
      previousProducePrice: previousProducePrice,
      weeklyPrices: weeklyPrices,
    );
  }

  Produce fromJson(Map<String, Object?> json) {
    return Produce.fromJson(json);
  }
}

/// @nodoc
const $Produce = _$ProduceTearOff();

/// @nodoc
mixin _$Produce {
  String get produceId => throw _privateConstructorUsedError;
  String get produceName => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  Map<String, dynamic> get currentProducePrice =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> get previousProducePrice =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> get weeklyPrices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProduceCopyWith<Produce> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProduceCopyWith<$Res> {
  factory $ProduceCopyWith(Produce value, $Res Function(Produce) then) =
      _$ProduceCopyWithImpl<$Res>;
  $Res call(
      {String produceId,
      String produceName,
      String authorId,
      Map<String, dynamic> currentProducePrice,
      Map<String, dynamic> previousProducePrice,
      Map<String, dynamic> weeklyPrices});
}

/// @nodoc
class _$ProduceCopyWithImpl<$Res> implements $ProduceCopyWith<$Res> {
  _$ProduceCopyWithImpl(this._value, this._then);

  final Produce _value;
  // ignore: unused_field
  final $Res Function(Produce) _then;

  @override
  $Res call({
    Object? produceId = freezed,
    Object? produceName = freezed,
    Object? authorId = freezed,
    Object? currentProducePrice = freezed,
    Object? previousProducePrice = freezed,
    Object? weeklyPrices = freezed,
  }) {
    return _then(_value.copyWith(
      produceId: produceId == freezed
          ? _value.produceId
          : produceId // ignore: cast_nullable_to_non_nullable
              as String,
      produceName: produceName == freezed
          ? _value.produceName
          : produceName // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      currentProducePrice: currentProducePrice == freezed
          ? _value.currentProducePrice
          : currentProducePrice // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      previousProducePrice: previousProducePrice == freezed
          ? _value.previousProducePrice
          : previousProducePrice // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      weeklyPrices: weeklyPrices == freezed
          ? _value.weeklyPrices
          : weeklyPrices // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$ProduceCopyWith<$Res> implements $ProduceCopyWith<$Res> {
  factory _$ProduceCopyWith(_Produce value, $Res Function(_Produce) then) =
      __$ProduceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String produceId,
      String produceName,
      String authorId,
      Map<String, dynamic> currentProducePrice,
      Map<String, dynamic> previousProducePrice,
      Map<String, dynamic> weeklyPrices});
}

/// @nodoc
class __$ProduceCopyWithImpl<$Res> extends _$ProduceCopyWithImpl<$Res>
    implements _$ProduceCopyWith<$Res> {
  __$ProduceCopyWithImpl(_Produce _value, $Res Function(_Produce) _then)
      : super(_value, (v) => _then(v as _Produce));

  @override
  _Produce get _value => super._value as _Produce;

  @override
  $Res call({
    Object? produceId = freezed,
    Object? produceName = freezed,
    Object? authorId = freezed,
    Object? currentProducePrice = freezed,
    Object? previousProducePrice = freezed,
    Object? weeklyPrices = freezed,
  }) {
    return _then(_Produce(
      produceId: produceId == freezed
          ? _value.produceId
          : produceId // ignore: cast_nullable_to_non_nullable
              as String,
      produceName: produceName == freezed
          ? _value.produceName
          : produceName // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      currentProducePrice: currentProducePrice == freezed
          ? _value.currentProducePrice
          : currentProducePrice // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      previousProducePrice: previousProducePrice == freezed
          ? _value.previousProducePrice
          : previousProducePrice // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      weeklyPrices: weeklyPrices == freezed
          ? _value.weeklyPrices
          : weeklyPrices // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Produce implements _Produce {
  _$_Produce(
      {required this.produceId,
      required this.produceName,
      required this.authorId,
      required this.currentProducePrice,
      required this.previousProducePrice,
      required this.weeklyPrices});

  factory _$_Produce.fromJson(Map<String, dynamic> json) =>
      _$$_ProduceFromJson(json);

  @override
  final String produceId;
  @override
  final String produceName;
  @override
  final String authorId;
  @override
  final Map<String, dynamic> currentProducePrice;
  @override
  final Map<String, dynamic> previousProducePrice;
  @override
  final Map<String, dynamic> weeklyPrices;

  @override
  String toString() {
    return 'Produce(produceId: $produceId, produceName: $produceName, authorId: $authorId, currentProducePrice: $currentProducePrice, previousProducePrice: $previousProducePrice, weeklyPrices: $weeklyPrices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Produce &&
            (identical(other.produceId, produceId) ||
                other.produceId == produceId) &&
            (identical(other.produceName, produceName) ||
                other.produceName == produceName) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            const DeepCollectionEquality()
                .equals(other.currentProducePrice, currentProducePrice) &&
            const DeepCollectionEquality()
                .equals(other.previousProducePrice, previousProducePrice) &&
            const DeepCollectionEquality()
                .equals(other.weeklyPrices, weeklyPrices));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      produceId,
      produceName,
      authorId,
      const DeepCollectionEquality().hash(currentProducePrice),
      const DeepCollectionEquality().hash(previousProducePrice),
      const DeepCollectionEquality().hash(weeklyPrices));

  @JsonKey(ignore: true)
  @override
  _$ProduceCopyWith<_Produce> get copyWith =>
      __$ProduceCopyWithImpl<_Produce>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProduceToJson(this);
  }
}

abstract class _Produce implements Produce {
  factory _Produce(
      {required String produceId,
      required String produceName,
      required String authorId,
      required Map<String, dynamic> currentProducePrice,
      required Map<String, dynamic> previousProducePrice,
      required Map<String, dynamic> weeklyPrices}) = _$_Produce;

  factory _Produce.fromJson(Map<String, dynamic> json) = _$_Produce.fromJson;

  @override
  String get produceId;
  @override
  String get produceName;
  @override
  String get authorId;
  @override
  Map<String, dynamic> get currentProducePrice;
  @override
  Map<String, dynamic> get previousProducePrice;
  @override
  Map<String, dynamic> get weeklyPrices;
  @override
  @JsonKey(ignore: true)
  _$ProduceCopyWith<_Produce> get copyWith =>
      throw _privateConstructorUsedError;
}
