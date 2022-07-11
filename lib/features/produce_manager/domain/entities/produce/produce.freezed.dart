// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'produce.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Produce _$ProduceFromJson(Map<String, dynamic> json) {
  return _Produce.fromJson(json);
}

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
  DateTime get lastUpdateTimeStamp => throw _privateConstructorUsedError;

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
      Map<String, dynamic> weeklyPrices,
      DateTime lastUpdateTimeStamp});
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
    Object? lastUpdateTimeStamp = freezed,
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
      lastUpdateTimeStamp: lastUpdateTimeStamp == freezed
          ? _value.lastUpdateTimeStamp
          : lastUpdateTimeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_ProduceCopyWith<$Res> implements $ProduceCopyWith<$Res> {
  factory _$$_ProduceCopyWith(
          _$_Produce value, $Res Function(_$_Produce) then) =
      __$$_ProduceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String produceId,
      String produceName,
      String authorId,
      Map<String, dynamic> currentProducePrice,
      Map<String, dynamic> previousProducePrice,
      Map<String, dynamic> weeklyPrices,
      DateTime lastUpdateTimeStamp});
}

/// @nodoc
class __$$_ProduceCopyWithImpl<$Res> extends _$ProduceCopyWithImpl<$Res>
    implements _$$_ProduceCopyWith<$Res> {
  __$$_ProduceCopyWithImpl(_$_Produce _value, $Res Function(_$_Produce) _then)
      : super(_value, (v) => _then(v as _$_Produce));

  @override
  _$_Produce get _value => super._value as _$_Produce;

  @override
  $Res call({
    Object? produceId = freezed,
    Object? produceName = freezed,
    Object? authorId = freezed,
    Object? currentProducePrice = freezed,
    Object? previousProducePrice = freezed,
    Object? weeklyPrices = freezed,
    Object? lastUpdateTimeStamp = freezed,
  }) {
    return _then(_$_Produce(
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
          ? _value._currentProducePrice
          : currentProducePrice // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      previousProducePrice: previousProducePrice == freezed
          ? _value._previousProducePrice
          : previousProducePrice // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      weeklyPrices: weeklyPrices == freezed
          ? _value._weeklyPrices
          : weeklyPrices // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      lastUpdateTimeStamp: lastUpdateTimeStamp == freezed
          ? _value.lastUpdateTimeStamp
          : lastUpdateTimeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Produce extends _Produce {
  _$_Produce(
      {required this.produceId,
      required this.produceName,
      required this.authorId,
      required final Map<String, dynamic> currentProducePrice,
      required final Map<String, dynamic> previousProducePrice,
      required final Map<String, dynamic> weeklyPrices,
      required this.lastUpdateTimeStamp})
      : _currentProducePrice = currentProducePrice,
        _previousProducePrice = previousProducePrice,
        _weeklyPrices = weeklyPrices,
        super._();

  factory _$_Produce.fromJson(Map<String, dynamic> json) =>
      _$$_ProduceFromJson(json);

  @override
  final String produceId;
  @override
  final String produceName;
  @override
  final String authorId;
  final Map<String, dynamic> _currentProducePrice;
  @override
  Map<String, dynamic> get currentProducePrice {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_currentProducePrice);
  }

  final Map<String, dynamic> _previousProducePrice;
  @override
  Map<String, dynamic> get previousProducePrice {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_previousProducePrice);
  }

  final Map<String, dynamic> _weeklyPrices;
  @override
  Map<String, dynamic> get weeklyPrices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_weeklyPrices);
  }

  @override
  final DateTime lastUpdateTimeStamp;

  @override
  String toString() {
    return 'Produce(produceId: $produceId, produceName: $produceName, authorId: $authorId, currentProducePrice: $currentProducePrice, previousProducePrice: $previousProducePrice, weeklyPrices: $weeklyPrices, lastUpdateTimeStamp: $lastUpdateTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Produce &&
            const DeepCollectionEquality().equals(other.produceId, produceId) &&
            const DeepCollectionEquality()
                .equals(other.produceName, produceName) &&
            const DeepCollectionEquality().equals(other.authorId, authorId) &&
            const DeepCollectionEquality()
                .equals(other._currentProducePrice, _currentProducePrice) &&
            const DeepCollectionEquality()
                .equals(other._previousProducePrice, _previousProducePrice) &&
            const DeepCollectionEquality()
                .equals(other._weeklyPrices, _weeklyPrices) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdateTimeStamp, lastUpdateTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(produceId),
      const DeepCollectionEquality().hash(produceName),
      const DeepCollectionEquality().hash(authorId),
      const DeepCollectionEquality().hash(_currentProducePrice),
      const DeepCollectionEquality().hash(_previousProducePrice),
      const DeepCollectionEquality().hash(_weeklyPrices),
      const DeepCollectionEquality().hash(lastUpdateTimeStamp));

  @JsonKey(ignore: true)
  @override
  _$$_ProduceCopyWith<_$_Produce> get copyWith =>
      __$$_ProduceCopyWithImpl<_$_Produce>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProduceToJson(this);
  }
}

abstract class _Produce extends Produce {
  factory _Produce(
      {required final String produceId,
      required final String produceName,
      required final String authorId,
      required final Map<String, dynamic> currentProducePrice,
      required final Map<String, dynamic> previousProducePrice,
      required final Map<String, dynamic> weeklyPrices,
      required final DateTime lastUpdateTimeStamp}) = _$_Produce;
  _Produce._() : super._();

  factory _Produce.fromJson(Map<String, dynamic> json) = _$_Produce.fromJson;

  @override
  String get produceId => throw _privateConstructorUsedError;
  @override
  String get produceName => throw _privateConstructorUsedError;
  @override
  String get authorId => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get currentProducePrice =>
      throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get previousProducePrice =>
      throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get weeklyPrices => throw _privateConstructorUsedError;
  @override
  DateTime get lastUpdateTimeStamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProduceCopyWith<_$_Produce> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProduceFavorite {
  String get produceId => throw _privateConstructorUsedError;
  DateTime get dateAdded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProduceFavoriteCopyWith<ProduceFavorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProduceFavoriteCopyWith<$Res> {
  factory $ProduceFavoriteCopyWith(
          ProduceFavorite value, $Res Function(ProduceFavorite) then) =
      _$ProduceFavoriteCopyWithImpl<$Res>;
  $Res call({String produceId, DateTime dateAdded});
}

/// @nodoc
class _$ProduceFavoriteCopyWithImpl<$Res>
    implements $ProduceFavoriteCopyWith<$Res> {
  _$ProduceFavoriteCopyWithImpl(this._value, this._then);

  final ProduceFavorite _value;
  // ignore: unused_field
  final $Res Function(ProduceFavorite) _then;

  @override
  $Res call({
    Object? produceId = freezed,
    Object? dateAdded = freezed,
  }) {
    return _then(_value.copyWith(
      produceId: produceId == freezed
          ? _value.produceId
          : produceId // ignore: cast_nullable_to_non_nullable
              as String,
      dateAdded: dateAdded == freezed
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_ProduceFavoriteCopyWith<$Res>
    implements $ProduceFavoriteCopyWith<$Res> {
  factory _$$_ProduceFavoriteCopyWith(
          _$_ProduceFavorite value, $Res Function(_$_ProduceFavorite) then) =
      __$$_ProduceFavoriteCopyWithImpl<$Res>;
  @override
  $Res call({String produceId, DateTime dateAdded});
}

/// @nodoc
class __$$_ProduceFavoriteCopyWithImpl<$Res>
    extends _$ProduceFavoriteCopyWithImpl<$Res>
    implements _$$_ProduceFavoriteCopyWith<$Res> {
  __$$_ProduceFavoriteCopyWithImpl(
      _$_ProduceFavorite _value, $Res Function(_$_ProduceFavorite) _then)
      : super(_value, (v) => _then(v as _$_ProduceFavorite));

  @override
  _$_ProduceFavorite get _value => super._value as _$_ProduceFavorite;

  @override
  $Res call({
    Object? produceId = freezed,
    Object? dateAdded = freezed,
  }) {
    return _then(_$_ProduceFavorite(
      produceId: produceId == freezed
          ? _value.produceId
          : produceId // ignore: cast_nullable_to_non_nullable
              as String,
      dateAdded: dateAdded == freezed
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_ProduceFavorite implements _ProduceFavorite {
  _$_ProduceFavorite({required this.produceId, required this.dateAdded});

  @override
  final String produceId;
  @override
  final DateTime dateAdded;

  @override
  String toString() {
    return 'ProduceFavorite(produceId: $produceId, dateAdded: $dateAdded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProduceFavorite &&
            const DeepCollectionEquality().equals(other.produceId, produceId) &&
            const DeepCollectionEquality().equals(other.dateAdded, dateAdded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(produceId),
      const DeepCollectionEquality().hash(dateAdded));

  @JsonKey(ignore: true)
  @override
  _$$_ProduceFavoriteCopyWith<_$_ProduceFavorite> get copyWith =>
      __$$_ProduceFavoriteCopyWithImpl<_$_ProduceFavorite>(this, _$identity);
}

abstract class _ProduceFavorite implements ProduceFavorite {
  factory _ProduceFavorite(
      {required final String produceId,
      required final DateTime dateAdded}) = _$_ProduceFavorite;

  @override
  String get produceId => throw _privateConstructorUsedError;
  @override
  DateTime get dateAdded => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProduceFavoriteCopyWith<_$_ProduceFavorite> get copyWith =>
      throw _privateConstructorUsedError;
}
