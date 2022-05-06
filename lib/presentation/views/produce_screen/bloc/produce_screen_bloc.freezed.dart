// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'produce_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProduceScreenEventTearOff {
  const _$ProduceScreenEventTearOff();

  _PSEStarted started() {
    return const _PSEStarted();
  }

  _PSETabChanged tabChanged() {
    return const _PSETabChanged();
  }

  _PSEGetAggregatePrices getAggregatePrices(String produceId) {
    return _PSEGetAggregatePrices(
      produceId,
    );
  }

  _PSEGetFirstTenPrices getFirstTenPrices(String produceId) {
    return _PSEGetFirstTenPrices(
      produceId,
    );
  }

  _PSEGetNextTenPrices getNextTenPrices() {
    return const _PSEGetNextTenPrices();
  }
}

/// @nodoc
const $ProduceScreenEvent = _$ProduceScreenEventTearOff();

/// @nodoc
mixin _$ProduceScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() tabChanged,
    required TResult Function(String produceId) getAggregatePrices,
    required TResult Function(String produceId) getFirstTenPrices,
    required TResult Function() getNextTenPrices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    TResult Function(String produceId)? getAggregatePrices,
    TResult Function(String produceId)? getFirstTenPrices,
    TResult Function()? getNextTenPrices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    TResult Function(String produceId)? getAggregatePrices,
    TResult Function(String produceId)? getFirstTenPrices,
    TResult Function()? getNextTenPrices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PSEStarted value) started,
    required TResult Function(_PSETabChanged value) tabChanged,
    required TResult Function(_PSEGetAggregatePrices value) getAggregatePrices,
    required TResult Function(_PSEGetFirstTenPrices value) getFirstTenPrices,
    required TResult Function(_PSEGetNextTenPrices value) getNextTenPrices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    TResult Function(_PSEGetAggregatePrices value)? getAggregatePrices,
    TResult Function(_PSEGetFirstTenPrices value)? getFirstTenPrices,
    TResult Function(_PSEGetNextTenPrices value)? getNextTenPrices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    TResult Function(_PSEGetAggregatePrices value)? getAggregatePrices,
    TResult Function(_PSEGetFirstTenPrices value)? getFirstTenPrices,
    TResult Function(_PSEGetNextTenPrices value)? getNextTenPrices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProduceScreenEventCopyWith<$Res> {
  factory $ProduceScreenEventCopyWith(
          ProduceScreenEvent value, $Res Function(ProduceScreenEvent) then) =
      _$ProduceScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProduceScreenEventCopyWithImpl<$Res>
    implements $ProduceScreenEventCopyWith<$Res> {
  _$ProduceScreenEventCopyWithImpl(this._value, this._then);

  final ProduceScreenEvent _value;
  // ignore: unused_field
  final $Res Function(ProduceScreenEvent) _then;
}

/// @nodoc
abstract class _$PSEStartedCopyWith<$Res> {
  factory _$PSEStartedCopyWith(
          _PSEStarted value, $Res Function(_PSEStarted) then) =
      __$PSEStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PSEStartedCopyWithImpl<$Res>
    extends _$ProduceScreenEventCopyWithImpl<$Res>
    implements _$PSEStartedCopyWith<$Res> {
  __$PSEStartedCopyWithImpl(
      _PSEStarted _value, $Res Function(_PSEStarted) _then)
      : super(_value, (v) => _then(v as _PSEStarted));

  @override
  _PSEStarted get _value => super._value as _PSEStarted;
}

/// @nodoc

class _$_PSEStarted implements _PSEStarted {
  const _$_PSEStarted();

  @override
  String toString() {
    return 'ProduceScreenEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PSEStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() tabChanged,
    required TResult Function(String produceId) getAggregatePrices,
    required TResult Function(String produceId) getFirstTenPrices,
    required TResult Function() getNextTenPrices,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    TResult Function(String produceId)? getAggregatePrices,
    TResult Function(String produceId)? getFirstTenPrices,
    TResult Function()? getNextTenPrices,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    TResult Function(String produceId)? getAggregatePrices,
    TResult Function(String produceId)? getFirstTenPrices,
    TResult Function()? getNextTenPrices,
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
    required TResult Function(_PSEStarted value) started,
    required TResult Function(_PSETabChanged value) tabChanged,
    required TResult Function(_PSEGetAggregatePrices value) getAggregatePrices,
    required TResult Function(_PSEGetFirstTenPrices value) getFirstTenPrices,
    required TResult Function(_PSEGetNextTenPrices value) getNextTenPrices,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    TResult Function(_PSEGetAggregatePrices value)? getAggregatePrices,
    TResult Function(_PSEGetFirstTenPrices value)? getFirstTenPrices,
    TResult Function(_PSEGetNextTenPrices value)? getNextTenPrices,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    TResult Function(_PSEGetAggregatePrices value)? getAggregatePrices,
    TResult Function(_PSEGetFirstTenPrices value)? getFirstTenPrices,
    TResult Function(_PSEGetNextTenPrices value)? getNextTenPrices,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _PSEStarted implements ProduceScreenEvent {
  const factory _PSEStarted() = _$_PSEStarted;
}

/// @nodoc
abstract class _$PSETabChangedCopyWith<$Res> {
  factory _$PSETabChangedCopyWith(
          _PSETabChanged value, $Res Function(_PSETabChanged) then) =
      __$PSETabChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PSETabChangedCopyWithImpl<$Res>
    extends _$ProduceScreenEventCopyWithImpl<$Res>
    implements _$PSETabChangedCopyWith<$Res> {
  __$PSETabChangedCopyWithImpl(
      _PSETabChanged _value, $Res Function(_PSETabChanged) _then)
      : super(_value, (v) => _then(v as _PSETabChanged));

  @override
  _PSETabChanged get _value => super._value as _PSETabChanged;
}

/// @nodoc

class _$_PSETabChanged implements _PSETabChanged {
  const _$_PSETabChanged();

  @override
  String toString() {
    return 'ProduceScreenEvent.tabChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PSETabChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() tabChanged,
    required TResult Function(String produceId) getAggregatePrices,
    required TResult Function(String produceId) getFirstTenPrices,
    required TResult Function() getNextTenPrices,
  }) {
    return tabChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    TResult Function(String produceId)? getAggregatePrices,
    TResult Function(String produceId)? getFirstTenPrices,
    TResult Function()? getNextTenPrices,
  }) {
    return tabChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    TResult Function(String produceId)? getAggregatePrices,
    TResult Function(String produceId)? getFirstTenPrices,
    TResult Function()? getNextTenPrices,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PSEStarted value) started,
    required TResult Function(_PSETabChanged value) tabChanged,
    required TResult Function(_PSEGetAggregatePrices value) getAggregatePrices,
    required TResult Function(_PSEGetFirstTenPrices value) getFirstTenPrices,
    required TResult Function(_PSEGetNextTenPrices value) getNextTenPrices,
  }) {
    return tabChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    TResult Function(_PSEGetAggregatePrices value)? getAggregatePrices,
    TResult Function(_PSEGetFirstTenPrices value)? getFirstTenPrices,
    TResult Function(_PSEGetNextTenPrices value)? getNextTenPrices,
  }) {
    return tabChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    TResult Function(_PSEGetAggregatePrices value)? getAggregatePrices,
    TResult Function(_PSEGetFirstTenPrices value)? getFirstTenPrices,
    TResult Function(_PSEGetNextTenPrices value)? getNextTenPrices,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(this);
    }
    return orElse();
  }
}

abstract class _PSETabChanged implements ProduceScreenEvent {
  const factory _PSETabChanged() = _$_PSETabChanged;
}

/// @nodoc
abstract class _$PSEGetAggregatePricesCopyWith<$Res> {
  factory _$PSEGetAggregatePricesCopyWith(_PSEGetAggregatePrices value,
          $Res Function(_PSEGetAggregatePrices) then) =
      __$PSEGetAggregatePricesCopyWithImpl<$Res>;
  $Res call({String produceId});
}

/// @nodoc
class __$PSEGetAggregatePricesCopyWithImpl<$Res>
    extends _$ProduceScreenEventCopyWithImpl<$Res>
    implements _$PSEGetAggregatePricesCopyWith<$Res> {
  __$PSEGetAggregatePricesCopyWithImpl(_PSEGetAggregatePrices _value,
      $Res Function(_PSEGetAggregatePrices) _then)
      : super(_value, (v) => _then(v as _PSEGetAggregatePrices));

  @override
  _PSEGetAggregatePrices get _value => super._value as _PSEGetAggregatePrices;

  @override
  $Res call({
    Object? produceId = freezed,
  }) {
    return _then(_PSEGetAggregatePrices(
      produceId == freezed
          ? _value.produceId
          : produceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PSEGetAggregatePrices implements _PSEGetAggregatePrices {
  const _$_PSEGetAggregatePrices(this.produceId);

  @override
  final String produceId;

  @override
  String toString() {
    return 'ProduceScreenEvent.getAggregatePrices(produceId: $produceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PSEGetAggregatePrices &&
            (identical(other.produceId, produceId) ||
                other.produceId == produceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, produceId);

  @JsonKey(ignore: true)
  @override
  _$PSEGetAggregatePricesCopyWith<_PSEGetAggregatePrices> get copyWith =>
      __$PSEGetAggregatePricesCopyWithImpl<_PSEGetAggregatePrices>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() tabChanged,
    required TResult Function(String produceId) getAggregatePrices,
    required TResult Function(String produceId) getFirstTenPrices,
    required TResult Function() getNextTenPrices,
  }) {
    return getAggregatePrices(produceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    TResult Function(String produceId)? getAggregatePrices,
    TResult Function(String produceId)? getFirstTenPrices,
    TResult Function()? getNextTenPrices,
  }) {
    return getAggregatePrices?.call(produceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    TResult Function(String produceId)? getAggregatePrices,
    TResult Function(String produceId)? getFirstTenPrices,
    TResult Function()? getNextTenPrices,
    required TResult orElse(),
  }) {
    if (getAggregatePrices != null) {
      return getAggregatePrices(produceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PSEStarted value) started,
    required TResult Function(_PSETabChanged value) tabChanged,
    required TResult Function(_PSEGetAggregatePrices value) getAggregatePrices,
    required TResult Function(_PSEGetFirstTenPrices value) getFirstTenPrices,
    required TResult Function(_PSEGetNextTenPrices value) getNextTenPrices,
  }) {
    return getAggregatePrices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    TResult Function(_PSEGetAggregatePrices value)? getAggregatePrices,
    TResult Function(_PSEGetFirstTenPrices value)? getFirstTenPrices,
    TResult Function(_PSEGetNextTenPrices value)? getNextTenPrices,
  }) {
    return getAggregatePrices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    TResult Function(_PSEGetAggregatePrices value)? getAggregatePrices,
    TResult Function(_PSEGetFirstTenPrices value)? getFirstTenPrices,
    TResult Function(_PSEGetNextTenPrices value)? getNextTenPrices,
    required TResult orElse(),
  }) {
    if (getAggregatePrices != null) {
      return getAggregatePrices(this);
    }
    return orElse();
  }
}

abstract class _PSEGetAggregatePrices implements ProduceScreenEvent {
  const factory _PSEGetAggregatePrices(String produceId) =
      _$_PSEGetAggregatePrices;

  String get produceId;
  @JsonKey(ignore: true)
  _$PSEGetAggregatePricesCopyWith<_PSEGetAggregatePrices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PSEGetFirstTenPricesCopyWith<$Res> {
  factory _$PSEGetFirstTenPricesCopyWith(_PSEGetFirstTenPrices value,
          $Res Function(_PSEGetFirstTenPrices) then) =
      __$PSEGetFirstTenPricesCopyWithImpl<$Res>;
  $Res call({String produceId});
}

/// @nodoc
class __$PSEGetFirstTenPricesCopyWithImpl<$Res>
    extends _$ProduceScreenEventCopyWithImpl<$Res>
    implements _$PSEGetFirstTenPricesCopyWith<$Res> {
  __$PSEGetFirstTenPricesCopyWithImpl(
      _PSEGetFirstTenPrices _value, $Res Function(_PSEGetFirstTenPrices) _then)
      : super(_value, (v) => _then(v as _PSEGetFirstTenPrices));

  @override
  _PSEGetFirstTenPrices get _value => super._value as _PSEGetFirstTenPrices;

  @override
  $Res call({
    Object? produceId = freezed,
  }) {
    return _then(_PSEGetFirstTenPrices(
      produceId == freezed
          ? _value.produceId
          : produceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PSEGetFirstTenPrices implements _PSEGetFirstTenPrices {
  const _$_PSEGetFirstTenPrices(this.produceId);

  @override
  final String produceId;

  @override
  String toString() {
    return 'ProduceScreenEvent.getFirstTenPrices(produceId: $produceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PSEGetFirstTenPrices &&
            (identical(other.produceId, produceId) ||
                other.produceId == produceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, produceId);

  @JsonKey(ignore: true)
  @override
  _$PSEGetFirstTenPricesCopyWith<_PSEGetFirstTenPrices> get copyWith =>
      __$PSEGetFirstTenPricesCopyWithImpl<_PSEGetFirstTenPrices>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() tabChanged,
    required TResult Function(String produceId) getAggregatePrices,
    required TResult Function(String produceId) getFirstTenPrices,
    required TResult Function() getNextTenPrices,
  }) {
    return getFirstTenPrices(produceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    TResult Function(String produceId)? getAggregatePrices,
    TResult Function(String produceId)? getFirstTenPrices,
    TResult Function()? getNextTenPrices,
  }) {
    return getFirstTenPrices?.call(produceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    TResult Function(String produceId)? getAggregatePrices,
    TResult Function(String produceId)? getFirstTenPrices,
    TResult Function()? getNextTenPrices,
    required TResult orElse(),
  }) {
    if (getFirstTenPrices != null) {
      return getFirstTenPrices(produceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PSEStarted value) started,
    required TResult Function(_PSETabChanged value) tabChanged,
    required TResult Function(_PSEGetAggregatePrices value) getAggregatePrices,
    required TResult Function(_PSEGetFirstTenPrices value) getFirstTenPrices,
    required TResult Function(_PSEGetNextTenPrices value) getNextTenPrices,
  }) {
    return getFirstTenPrices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    TResult Function(_PSEGetAggregatePrices value)? getAggregatePrices,
    TResult Function(_PSEGetFirstTenPrices value)? getFirstTenPrices,
    TResult Function(_PSEGetNextTenPrices value)? getNextTenPrices,
  }) {
    return getFirstTenPrices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    TResult Function(_PSEGetAggregatePrices value)? getAggregatePrices,
    TResult Function(_PSEGetFirstTenPrices value)? getFirstTenPrices,
    TResult Function(_PSEGetNextTenPrices value)? getNextTenPrices,
    required TResult orElse(),
  }) {
    if (getFirstTenPrices != null) {
      return getFirstTenPrices(this);
    }
    return orElse();
  }
}

abstract class _PSEGetFirstTenPrices implements ProduceScreenEvent {
  const factory _PSEGetFirstTenPrices(String produceId) =
      _$_PSEGetFirstTenPrices;

  String get produceId;
  @JsonKey(ignore: true)
  _$PSEGetFirstTenPricesCopyWith<_PSEGetFirstTenPrices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PSEGetNextTenPricesCopyWith<$Res> {
  factory _$PSEGetNextTenPricesCopyWith(_PSEGetNextTenPrices value,
          $Res Function(_PSEGetNextTenPrices) then) =
      __$PSEGetNextTenPricesCopyWithImpl<$Res>;
}

/// @nodoc
class __$PSEGetNextTenPricesCopyWithImpl<$Res>
    extends _$ProduceScreenEventCopyWithImpl<$Res>
    implements _$PSEGetNextTenPricesCopyWith<$Res> {
  __$PSEGetNextTenPricesCopyWithImpl(
      _PSEGetNextTenPrices _value, $Res Function(_PSEGetNextTenPrices) _then)
      : super(_value, (v) => _then(v as _PSEGetNextTenPrices));

  @override
  _PSEGetNextTenPrices get _value => super._value as _PSEGetNextTenPrices;
}

/// @nodoc

class _$_PSEGetNextTenPrices implements _PSEGetNextTenPrices {
  const _$_PSEGetNextTenPrices();

  @override
  String toString() {
    return 'ProduceScreenEvent.getNextTenPrices()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PSEGetNextTenPrices);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() tabChanged,
    required TResult Function(String produceId) getAggregatePrices,
    required TResult Function(String produceId) getFirstTenPrices,
    required TResult Function() getNextTenPrices,
  }) {
    return getNextTenPrices();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    TResult Function(String produceId)? getAggregatePrices,
    TResult Function(String produceId)? getFirstTenPrices,
    TResult Function()? getNextTenPrices,
  }) {
    return getNextTenPrices?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    TResult Function(String produceId)? getAggregatePrices,
    TResult Function(String produceId)? getFirstTenPrices,
    TResult Function()? getNextTenPrices,
    required TResult orElse(),
  }) {
    if (getNextTenPrices != null) {
      return getNextTenPrices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PSEStarted value) started,
    required TResult Function(_PSETabChanged value) tabChanged,
    required TResult Function(_PSEGetAggregatePrices value) getAggregatePrices,
    required TResult Function(_PSEGetFirstTenPrices value) getFirstTenPrices,
    required TResult Function(_PSEGetNextTenPrices value) getNextTenPrices,
  }) {
    return getNextTenPrices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    TResult Function(_PSEGetAggregatePrices value)? getAggregatePrices,
    TResult Function(_PSEGetFirstTenPrices value)? getFirstTenPrices,
    TResult Function(_PSEGetNextTenPrices value)? getNextTenPrices,
  }) {
    return getNextTenPrices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    TResult Function(_PSEGetAggregatePrices value)? getAggregatePrices,
    TResult Function(_PSEGetFirstTenPrices value)? getFirstTenPrices,
    TResult Function(_PSEGetNextTenPrices value)? getNextTenPrices,
    required TResult orElse(),
  }) {
    if (getNextTenPrices != null) {
      return getNextTenPrices(this);
    }
    return orElse();
  }
}

abstract class _PSEGetNextTenPrices implements ProduceScreenEvent {
  const factory _PSEGetNextTenPrices() = _$_PSEGetNextTenPrices;
}

/// @nodoc
class _$ProduceScreenStateTearOff {
  const _$ProduceScreenStateTearOff();

  PSSInitial initial({required ProduceScreenProps props}) {
    return PSSInitial(
      props: props,
    );
  }

  PSSGetAggregateLoading getAggregateLoading(
      {required ProduceScreenProps props}) {
    return PSSGetAggregateLoading(
      props: props,
    );
  }

  PSSGetAggregateCompleted getAggregateCompleted(
      {required ProduceScreenProps props}) {
    return PSSGetAggregateCompleted(
      props: props,
    );
  }

  PSSGetAggregateError getAggregateError(
      {required ProduceScreenProps props, required Failure failure}) {
    return PSSGetAggregateError(
      props: props,
      failure: failure,
    );
  }

  PSSGetFirstTenPricesLoading getFirstTenPricesLoading(
      {required ProduceScreenProps props}) {
    return PSSGetFirstTenPricesLoading(
      props: props,
    );
  }

  PSSGetFirstTenPricesCompleted getFirstTenPricesCompleted(
      {required ProduceScreenProps props}) {
    return PSSGetFirstTenPricesCompleted(
      props: props,
    );
  }

  PSSGetNextTenPricesLoading getNextTenPricesLoading(
      {required ProduceScreenProps props}) {
    return PSSGetNextTenPricesLoading(
      props: props,
    );
  }

  PSSGetNextTenPricesCompleted getNextTenPricesCompleted(
      {required ProduceScreenProps props}) {
    return PSSGetNextTenPricesCompleted(
      props: props,
    );
  }

  PSSGetPricesError getPricesError({required ProduceScreenProps props}) {
    return PSSGetPricesError(
      props: props,
    );
  }
}

/// @nodoc
const $ProduceScreenState = _$ProduceScreenStateTearOff();

/// @nodoc
mixin _$ProduceScreenState {
  ProduceScreenProps get props => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProduceScreenProps props) initial,
    required TResult Function(ProduceScreenProps props) getAggregateLoading,
    required TResult Function(ProduceScreenProps props) getAggregateCompleted,
    required TResult Function(ProduceScreenProps props, Failure failure)
        getAggregateError,
    required TResult Function(ProduceScreenProps props)
        getFirstTenPricesLoading,
    required TResult Function(ProduceScreenProps props)
        getFirstTenPricesCompleted,
    required TResult Function(ProduceScreenProps props) getNextTenPricesLoading,
    required TResult Function(ProduceScreenProps props)
        getNextTenPricesCompleted,
    required TResult Function(ProduceScreenProps props) getPricesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? getAggregateLoading,
    TResult Function(ProduceScreenProps props)? getAggregateCompleted,
    TResult Function(ProduceScreenProps props, Failure failure)?
        getAggregateError,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getNextTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getNextTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getPricesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? getAggregateLoading,
    TResult Function(ProduceScreenProps props)? getAggregateCompleted,
    TResult Function(ProduceScreenProps props, Failure failure)?
        getAggregateError,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getNextTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getNextTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getPricesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PSSInitial value) initial,
    required TResult Function(PSSGetAggregateLoading value) getAggregateLoading,
    required TResult Function(PSSGetAggregateCompleted value)
        getAggregateCompleted,
    required TResult Function(PSSGetAggregateError value) getAggregateError,
    required TResult Function(PSSGetFirstTenPricesLoading value)
        getFirstTenPricesLoading,
    required TResult Function(PSSGetFirstTenPricesCompleted value)
        getFirstTenPricesCompleted,
    required TResult Function(PSSGetNextTenPricesLoading value)
        getNextTenPricesLoading,
    required TResult Function(PSSGetNextTenPricesCompleted value)
        getNextTenPricesCompleted,
    required TResult Function(PSSGetPricesError value) getPricesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSGetAggregateLoading value)? getAggregateLoading,
    TResult Function(PSSGetAggregateCompleted value)? getAggregateCompleted,
    TResult Function(PSSGetAggregateError value)? getAggregateError,
    TResult Function(PSSGetFirstTenPricesLoading value)?
        getFirstTenPricesLoading,
    TResult Function(PSSGetFirstTenPricesCompleted value)?
        getFirstTenPricesCompleted,
    TResult Function(PSSGetNextTenPricesLoading value)? getNextTenPricesLoading,
    TResult Function(PSSGetNextTenPricesCompleted value)?
        getNextTenPricesCompleted,
    TResult Function(PSSGetPricesError value)? getPricesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSGetAggregateLoading value)? getAggregateLoading,
    TResult Function(PSSGetAggregateCompleted value)? getAggregateCompleted,
    TResult Function(PSSGetAggregateError value)? getAggregateError,
    TResult Function(PSSGetFirstTenPricesLoading value)?
        getFirstTenPricesLoading,
    TResult Function(PSSGetFirstTenPricesCompleted value)?
        getFirstTenPricesCompleted,
    TResult Function(PSSGetNextTenPricesLoading value)? getNextTenPricesLoading,
    TResult Function(PSSGetNextTenPricesCompleted value)?
        getNextTenPricesCompleted,
    TResult Function(PSSGetPricesError value)? getPricesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProduceScreenStateCopyWith<ProduceScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProduceScreenStateCopyWith<$Res> {
  factory $ProduceScreenStateCopyWith(
          ProduceScreenState value, $Res Function(ProduceScreenState) then) =
      _$ProduceScreenStateCopyWithImpl<$Res>;
  $Res call({ProduceScreenProps props});

  $ProduceScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$ProduceScreenStateCopyWithImpl<$Res>
    implements $ProduceScreenStateCopyWith<$Res> {
  _$ProduceScreenStateCopyWithImpl(this._value, this._then);

  final ProduceScreenState _value;
  // ignore: unused_field
  final $Res Function(ProduceScreenState) _then;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(_value.copyWith(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as ProduceScreenProps,
    ));
  }

  @override
  $ProduceScreenPropsCopyWith<$Res> get props {
    return $ProduceScreenPropsCopyWith<$Res>(_value.props, (value) {
      return _then(_value.copyWith(props: value));
    });
  }
}

/// @nodoc
abstract class $PSSInitialCopyWith<$Res>
    implements $ProduceScreenStateCopyWith<$Res> {
  factory $PSSInitialCopyWith(
          PSSInitial value, $Res Function(PSSInitial) then) =
      _$PSSInitialCopyWithImpl<$Res>;
  @override
  $Res call({ProduceScreenProps props});

  @override
  $ProduceScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$PSSInitialCopyWithImpl<$Res>
    extends _$ProduceScreenStateCopyWithImpl<$Res>
    implements $PSSInitialCopyWith<$Res> {
  _$PSSInitialCopyWithImpl(PSSInitial _value, $Res Function(PSSInitial) _then)
      : super(_value, (v) => _then(v as PSSInitial));

  @override
  PSSInitial get _value => super._value as PSSInitial;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(PSSInitial(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as ProduceScreenProps,
    ));
  }
}

/// @nodoc

class _$PSSInitial implements PSSInitial {
  const _$PSSInitial({required this.props});

  @override
  final ProduceScreenProps props;

  @override
  String toString() {
    return 'ProduceScreenState.initial(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PSSInitial &&
            (identical(other.props, props) || other.props == props));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props);

  @JsonKey(ignore: true)
  @override
  $PSSInitialCopyWith<PSSInitial> get copyWith =>
      _$PSSInitialCopyWithImpl<PSSInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProduceScreenProps props) initial,
    required TResult Function(ProduceScreenProps props) getAggregateLoading,
    required TResult Function(ProduceScreenProps props) getAggregateCompleted,
    required TResult Function(ProduceScreenProps props, Failure failure)
        getAggregateError,
    required TResult Function(ProduceScreenProps props)
        getFirstTenPricesLoading,
    required TResult Function(ProduceScreenProps props)
        getFirstTenPricesCompleted,
    required TResult Function(ProduceScreenProps props) getNextTenPricesLoading,
    required TResult Function(ProduceScreenProps props)
        getNextTenPricesCompleted,
    required TResult Function(ProduceScreenProps props) getPricesError,
  }) {
    return initial(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? getAggregateLoading,
    TResult Function(ProduceScreenProps props)? getAggregateCompleted,
    TResult Function(ProduceScreenProps props, Failure failure)?
        getAggregateError,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getNextTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getNextTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getPricesError,
  }) {
    return initial?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? getAggregateLoading,
    TResult Function(ProduceScreenProps props)? getAggregateCompleted,
    TResult Function(ProduceScreenProps props, Failure failure)?
        getAggregateError,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getNextTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getNextTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getPricesError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(props);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PSSInitial value) initial,
    required TResult Function(PSSGetAggregateLoading value) getAggregateLoading,
    required TResult Function(PSSGetAggregateCompleted value)
        getAggregateCompleted,
    required TResult Function(PSSGetAggregateError value) getAggregateError,
    required TResult Function(PSSGetFirstTenPricesLoading value)
        getFirstTenPricesLoading,
    required TResult Function(PSSGetFirstTenPricesCompleted value)
        getFirstTenPricesCompleted,
    required TResult Function(PSSGetNextTenPricesLoading value)
        getNextTenPricesLoading,
    required TResult Function(PSSGetNextTenPricesCompleted value)
        getNextTenPricesCompleted,
    required TResult Function(PSSGetPricesError value) getPricesError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSGetAggregateLoading value)? getAggregateLoading,
    TResult Function(PSSGetAggregateCompleted value)? getAggregateCompleted,
    TResult Function(PSSGetAggregateError value)? getAggregateError,
    TResult Function(PSSGetFirstTenPricesLoading value)?
        getFirstTenPricesLoading,
    TResult Function(PSSGetFirstTenPricesCompleted value)?
        getFirstTenPricesCompleted,
    TResult Function(PSSGetNextTenPricesLoading value)? getNextTenPricesLoading,
    TResult Function(PSSGetNextTenPricesCompleted value)?
        getNextTenPricesCompleted,
    TResult Function(PSSGetPricesError value)? getPricesError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSGetAggregateLoading value)? getAggregateLoading,
    TResult Function(PSSGetAggregateCompleted value)? getAggregateCompleted,
    TResult Function(PSSGetAggregateError value)? getAggregateError,
    TResult Function(PSSGetFirstTenPricesLoading value)?
        getFirstTenPricesLoading,
    TResult Function(PSSGetFirstTenPricesCompleted value)?
        getFirstTenPricesCompleted,
    TResult Function(PSSGetNextTenPricesLoading value)? getNextTenPricesLoading,
    TResult Function(PSSGetNextTenPricesCompleted value)?
        getNextTenPricesCompleted,
    TResult Function(PSSGetPricesError value)? getPricesError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PSSInitial implements ProduceScreenState {
  const factory PSSInitial({required ProduceScreenProps props}) = _$PSSInitial;

  @override
  ProduceScreenProps get props;
  @override
  @JsonKey(ignore: true)
  $PSSInitialCopyWith<PSSInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PSSGetAggregateLoadingCopyWith<$Res>
    implements $ProduceScreenStateCopyWith<$Res> {
  factory $PSSGetAggregateLoadingCopyWith(PSSGetAggregateLoading value,
          $Res Function(PSSGetAggregateLoading) then) =
      _$PSSGetAggregateLoadingCopyWithImpl<$Res>;
  @override
  $Res call({ProduceScreenProps props});

  @override
  $ProduceScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$PSSGetAggregateLoadingCopyWithImpl<$Res>
    extends _$ProduceScreenStateCopyWithImpl<$Res>
    implements $PSSGetAggregateLoadingCopyWith<$Res> {
  _$PSSGetAggregateLoadingCopyWithImpl(PSSGetAggregateLoading _value,
      $Res Function(PSSGetAggregateLoading) _then)
      : super(_value, (v) => _then(v as PSSGetAggregateLoading));

  @override
  PSSGetAggregateLoading get _value => super._value as PSSGetAggregateLoading;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(PSSGetAggregateLoading(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as ProduceScreenProps,
    ));
  }
}

/// @nodoc

class _$PSSGetAggregateLoading implements PSSGetAggregateLoading {
  const _$PSSGetAggregateLoading({required this.props});

  @override
  final ProduceScreenProps props;

  @override
  String toString() {
    return 'ProduceScreenState.getAggregateLoading(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PSSGetAggregateLoading &&
            (identical(other.props, props) || other.props == props));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props);

  @JsonKey(ignore: true)
  @override
  $PSSGetAggregateLoadingCopyWith<PSSGetAggregateLoading> get copyWith =>
      _$PSSGetAggregateLoadingCopyWithImpl<PSSGetAggregateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProduceScreenProps props) initial,
    required TResult Function(ProduceScreenProps props) getAggregateLoading,
    required TResult Function(ProduceScreenProps props) getAggregateCompleted,
    required TResult Function(ProduceScreenProps props, Failure failure)
        getAggregateError,
    required TResult Function(ProduceScreenProps props)
        getFirstTenPricesLoading,
    required TResult Function(ProduceScreenProps props)
        getFirstTenPricesCompleted,
    required TResult Function(ProduceScreenProps props) getNextTenPricesLoading,
    required TResult Function(ProduceScreenProps props)
        getNextTenPricesCompleted,
    required TResult Function(ProduceScreenProps props) getPricesError,
  }) {
    return getAggregateLoading(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? getAggregateLoading,
    TResult Function(ProduceScreenProps props)? getAggregateCompleted,
    TResult Function(ProduceScreenProps props, Failure failure)?
        getAggregateError,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getNextTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getNextTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getPricesError,
  }) {
    return getAggregateLoading?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? getAggregateLoading,
    TResult Function(ProduceScreenProps props)? getAggregateCompleted,
    TResult Function(ProduceScreenProps props, Failure failure)?
        getAggregateError,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getNextTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getNextTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getPricesError,
    required TResult orElse(),
  }) {
    if (getAggregateLoading != null) {
      return getAggregateLoading(props);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PSSInitial value) initial,
    required TResult Function(PSSGetAggregateLoading value) getAggregateLoading,
    required TResult Function(PSSGetAggregateCompleted value)
        getAggregateCompleted,
    required TResult Function(PSSGetAggregateError value) getAggregateError,
    required TResult Function(PSSGetFirstTenPricesLoading value)
        getFirstTenPricesLoading,
    required TResult Function(PSSGetFirstTenPricesCompleted value)
        getFirstTenPricesCompleted,
    required TResult Function(PSSGetNextTenPricesLoading value)
        getNextTenPricesLoading,
    required TResult Function(PSSGetNextTenPricesCompleted value)
        getNextTenPricesCompleted,
    required TResult Function(PSSGetPricesError value) getPricesError,
  }) {
    return getAggregateLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSGetAggregateLoading value)? getAggregateLoading,
    TResult Function(PSSGetAggregateCompleted value)? getAggregateCompleted,
    TResult Function(PSSGetAggregateError value)? getAggregateError,
    TResult Function(PSSGetFirstTenPricesLoading value)?
        getFirstTenPricesLoading,
    TResult Function(PSSGetFirstTenPricesCompleted value)?
        getFirstTenPricesCompleted,
    TResult Function(PSSGetNextTenPricesLoading value)? getNextTenPricesLoading,
    TResult Function(PSSGetNextTenPricesCompleted value)?
        getNextTenPricesCompleted,
    TResult Function(PSSGetPricesError value)? getPricesError,
  }) {
    return getAggregateLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSGetAggregateLoading value)? getAggregateLoading,
    TResult Function(PSSGetAggregateCompleted value)? getAggregateCompleted,
    TResult Function(PSSGetAggregateError value)? getAggregateError,
    TResult Function(PSSGetFirstTenPricesLoading value)?
        getFirstTenPricesLoading,
    TResult Function(PSSGetFirstTenPricesCompleted value)?
        getFirstTenPricesCompleted,
    TResult Function(PSSGetNextTenPricesLoading value)? getNextTenPricesLoading,
    TResult Function(PSSGetNextTenPricesCompleted value)?
        getNextTenPricesCompleted,
    TResult Function(PSSGetPricesError value)? getPricesError,
    required TResult orElse(),
  }) {
    if (getAggregateLoading != null) {
      return getAggregateLoading(this);
    }
    return orElse();
  }
}

abstract class PSSGetAggregateLoading implements ProduceScreenState {
  const factory PSSGetAggregateLoading({required ProduceScreenProps props}) =
      _$PSSGetAggregateLoading;

  @override
  ProduceScreenProps get props;
  @override
  @JsonKey(ignore: true)
  $PSSGetAggregateLoadingCopyWith<PSSGetAggregateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PSSGetAggregateCompletedCopyWith<$Res>
    implements $ProduceScreenStateCopyWith<$Res> {
  factory $PSSGetAggregateCompletedCopyWith(PSSGetAggregateCompleted value,
          $Res Function(PSSGetAggregateCompleted) then) =
      _$PSSGetAggregateCompletedCopyWithImpl<$Res>;
  @override
  $Res call({ProduceScreenProps props});

  @override
  $ProduceScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$PSSGetAggregateCompletedCopyWithImpl<$Res>
    extends _$ProduceScreenStateCopyWithImpl<$Res>
    implements $PSSGetAggregateCompletedCopyWith<$Res> {
  _$PSSGetAggregateCompletedCopyWithImpl(PSSGetAggregateCompleted _value,
      $Res Function(PSSGetAggregateCompleted) _then)
      : super(_value, (v) => _then(v as PSSGetAggregateCompleted));

  @override
  PSSGetAggregateCompleted get _value =>
      super._value as PSSGetAggregateCompleted;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(PSSGetAggregateCompleted(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as ProduceScreenProps,
    ));
  }
}

/// @nodoc

class _$PSSGetAggregateCompleted implements PSSGetAggregateCompleted {
  const _$PSSGetAggregateCompleted({required this.props});

  @override
  final ProduceScreenProps props;

  @override
  String toString() {
    return 'ProduceScreenState.getAggregateCompleted(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PSSGetAggregateCompleted &&
            (identical(other.props, props) || other.props == props));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props);

  @JsonKey(ignore: true)
  @override
  $PSSGetAggregateCompletedCopyWith<PSSGetAggregateCompleted> get copyWith =>
      _$PSSGetAggregateCompletedCopyWithImpl<PSSGetAggregateCompleted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProduceScreenProps props) initial,
    required TResult Function(ProduceScreenProps props) getAggregateLoading,
    required TResult Function(ProduceScreenProps props) getAggregateCompleted,
    required TResult Function(ProduceScreenProps props, Failure failure)
        getAggregateError,
    required TResult Function(ProduceScreenProps props)
        getFirstTenPricesLoading,
    required TResult Function(ProduceScreenProps props)
        getFirstTenPricesCompleted,
    required TResult Function(ProduceScreenProps props) getNextTenPricesLoading,
    required TResult Function(ProduceScreenProps props)
        getNextTenPricesCompleted,
    required TResult Function(ProduceScreenProps props) getPricesError,
  }) {
    return getAggregateCompleted(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? getAggregateLoading,
    TResult Function(ProduceScreenProps props)? getAggregateCompleted,
    TResult Function(ProduceScreenProps props, Failure failure)?
        getAggregateError,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getNextTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getNextTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getPricesError,
  }) {
    return getAggregateCompleted?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? getAggregateLoading,
    TResult Function(ProduceScreenProps props)? getAggregateCompleted,
    TResult Function(ProduceScreenProps props, Failure failure)?
        getAggregateError,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getNextTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getNextTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getPricesError,
    required TResult orElse(),
  }) {
    if (getAggregateCompleted != null) {
      return getAggregateCompleted(props);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PSSInitial value) initial,
    required TResult Function(PSSGetAggregateLoading value) getAggregateLoading,
    required TResult Function(PSSGetAggregateCompleted value)
        getAggregateCompleted,
    required TResult Function(PSSGetAggregateError value) getAggregateError,
    required TResult Function(PSSGetFirstTenPricesLoading value)
        getFirstTenPricesLoading,
    required TResult Function(PSSGetFirstTenPricesCompleted value)
        getFirstTenPricesCompleted,
    required TResult Function(PSSGetNextTenPricesLoading value)
        getNextTenPricesLoading,
    required TResult Function(PSSGetNextTenPricesCompleted value)
        getNextTenPricesCompleted,
    required TResult Function(PSSGetPricesError value) getPricesError,
  }) {
    return getAggregateCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSGetAggregateLoading value)? getAggregateLoading,
    TResult Function(PSSGetAggregateCompleted value)? getAggregateCompleted,
    TResult Function(PSSGetAggregateError value)? getAggregateError,
    TResult Function(PSSGetFirstTenPricesLoading value)?
        getFirstTenPricesLoading,
    TResult Function(PSSGetFirstTenPricesCompleted value)?
        getFirstTenPricesCompleted,
    TResult Function(PSSGetNextTenPricesLoading value)? getNextTenPricesLoading,
    TResult Function(PSSGetNextTenPricesCompleted value)?
        getNextTenPricesCompleted,
    TResult Function(PSSGetPricesError value)? getPricesError,
  }) {
    return getAggregateCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSGetAggregateLoading value)? getAggregateLoading,
    TResult Function(PSSGetAggregateCompleted value)? getAggregateCompleted,
    TResult Function(PSSGetAggregateError value)? getAggregateError,
    TResult Function(PSSGetFirstTenPricesLoading value)?
        getFirstTenPricesLoading,
    TResult Function(PSSGetFirstTenPricesCompleted value)?
        getFirstTenPricesCompleted,
    TResult Function(PSSGetNextTenPricesLoading value)? getNextTenPricesLoading,
    TResult Function(PSSGetNextTenPricesCompleted value)?
        getNextTenPricesCompleted,
    TResult Function(PSSGetPricesError value)? getPricesError,
    required TResult orElse(),
  }) {
    if (getAggregateCompleted != null) {
      return getAggregateCompleted(this);
    }
    return orElse();
  }
}

abstract class PSSGetAggregateCompleted implements ProduceScreenState {
  const factory PSSGetAggregateCompleted({required ProduceScreenProps props}) =
      _$PSSGetAggregateCompleted;

  @override
  ProduceScreenProps get props;
  @override
  @JsonKey(ignore: true)
  $PSSGetAggregateCompletedCopyWith<PSSGetAggregateCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PSSGetAggregateErrorCopyWith<$Res>
    implements $ProduceScreenStateCopyWith<$Res> {
  factory $PSSGetAggregateErrorCopyWith(PSSGetAggregateError value,
          $Res Function(PSSGetAggregateError) then) =
      _$PSSGetAggregateErrorCopyWithImpl<$Res>;
  @override
  $Res call({ProduceScreenProps props, Failure failure});

  @override
  $ProduceScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$PSSGetAggregateErrorCopyWithImpl<$Res>
    extends _$ProduceScreenStateCopyWithImpl<$Res>
    implements $PSSGetAggregateErrorCopyWith<$Res> {
  _$PSSGetAggregateErrorCopyWithImpl(
      PSSGetAggregateError _value, $Res Function(PSSGetAggregateError) _then)
      : super(_value, (v) => _then(v as PSSGetAggregateError));

  @override
  PSSGetAggregateError get _value => super._value as PSSGetAggregateError;

  @override
  $Res call({
    Object? props = freezed,
    Object? failure = freezed,
  }) {
    return _then(PSSGetAggregateError(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as ProduceScreenProps,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$PSSGetAggregateError implements PSSGetAggregateError {
  const _$PSSGetAggregateError({required this.props, required this.failure});

  @override
  final ProduceScreenProps props;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'ProduceScreenState.getAggregateError(props: $props, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PSSGetAggregateError &&
            (identical(other.props, props) || other.props == props) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props, failure);

  @JsonKey(ignore: true)
  @override
  $PSSGetAggregateErrorCopyWith<PSSGetAggregateError> get copyWith =>
      _$PSSGetAggregateErrorCopyWithImpl<PSSGetAggregateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProduceScreenProps props) initial,
    required TResult Function(ProduceScreenProps props) getAggregateLoading,
    required TResult Function(ProduceScreenProps props) getAggregateCompleted,
    required TResult Function(ProduceScreenProps props, Failure failure)
        getAggregateError,
    required TResult Function(ProduceScreenProps props)
        getFirstTenPricesLoading,
    required TResult Function(ProduceScreenProps props)
        getFirstTenPricesCompleted,
    required TResult Function(ProduceScreenProps props) getNextTenPricesLoading,
    required TResult Function(ProduceScreenProps props)
        getNextTenPricesCompleted,
    required TResult Function(ProduceScreenProps props) getPricesError,
  }) {
    return getAggregateError(props, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? getAggregateLoading,
    TResult Function(ProduceScreenProps props)? getAggregateCompleted,
    TResult Function(ProduceScreenProps props, Failure failure)?
        getAggregateError,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getNextTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getNextTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getPricesError,
  }) {
    return getAggregateError?.call(props, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? getAggregateLoading,
    TResult Function(ProduceScreenProps props)? getAggregateCompleted,
    TResult Function(ProduceScreenProps props, Failure failure)?
        getAggregateError,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getNextTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getNextTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getPricesError,
    required TResult orElse(),
  }) {
    if (getAggregateError != null) {
      return getAggregateError(props, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PSSInitial value) initial,
    required TResult Function(PSSGetAggregateLoading value) getAggregateLoading,
    required TResult Function(PSSGetAggregateCompleted value)
        getAggregateCompleted,
    required TResult Function(PSSGetAggregateError value) getAggregateError,
    required TResult Function(PSSGetFirstTenPricesLoading value)
        getFirstTenPricesLoading,
    required TResult Function(PSSGetFirstTenPricesCompleted value)
        getFirstTenPricesCompleted,
    required TResult Function(PSSGetNextTenPricesLoading value)
        getNextTenPricesLoading,
    required TResult Function(PSSGetNextTenPricesCompleted value)
        getNextTenPricesCompleted,
    required TResult Function(PSSGetPricesError value) getPricesError,
  }) {
    return getAggregateError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSGetAggregateLoading value)? getAggregateLoading,
    TResult Function(PSSGetAggregateCompleted value)? getAggregateCompleted,
    TResult Function(PSSGetAggregateError value)? getAggregateError,
    TResult Function(PSSGetFirstTenPricesLoading value)?
        getFirstTenPricesLoading,
    TResult Function(PSSGetFirstTenPricesCompleted value)?
        getFirstTenPricesCompleted,
    TResult Function(PSSGetNextTenPricesLoading value)? getNextTenPricesLoading,
    TResult Function(PSSGetNextTenPricesCompleted value)?
        getNextTenPricesCompleted,
    TResult Function(PSSGetPricesError value)? getPricesError,
  }) {
    return getAggregateError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSGetAggregateLoading value)? getAggregateLoading,
    TResult Function(PSSGetAggregateCompleted value)? getAggregateCompleted,
    TResult Function(PSSGetAggregateError value)? getAggregateError,
    TResult Function(PSSGetFirstTenPricesLoading value)?
        getFirstTenPricesLoading,
    TResult Function(PSSGetFirstTenPricesCompleted value)?
        getFirstTenPricesCompleted,
    TResult Function(PSSGetNextTenPricesLoading value)? getNextTenPricesLoading,
    TResult Function(PSSGetNextTenPricesCompleted value)?
        getNextTenPricesCompleted,
    TResult Function(PSSGetPricesError value)? getPricesError,
    required TResult orElse(),
  }) {
    if (getAggregateError != null) {
      return getAggregateError(this);
    }
    return orElse();
  }
}

abstract class PSSGetAggregateError implements ProduceScreenState {
  const factory PSSGetAggregateError(
      {required ProduceScreenProps props,
      required Failure failure}) = _$PSSGetAggregateError;

  @override
  ProduceScreenProps get props;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  $PSSGetAggregateErrorCopyWith<PSSGetAggregateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PSSGetFirstTenPricesLoadingCopyWith<$Res>
    implements $ProduceScreenStateCopyWith<$Res> {
  factory $PSSGetFirstTenPricesLoadingCopyWith(
          PSSGetFirstTenPricesLoading value,
          $Res Function(PSSGetFirstTenPricesLoading) then) =
      _$PSSGetFirstTenPricesLoadingCopyWithImpl<$Res>;
  @override
  $Res call({ProduceScreenProps props});

  @override
  $ProduceScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$PSSGetFirstTenPricesLoadingCopyWithImpl<$Res>
    extends _$ProduceScreenStateCopyWithImpl<$Res>
    implements $PSSGetFirstTenPricesLoadingCopyWith<$Res> {
  _$PSSGetFirstTenPricesLoadingCopyWithImpl(PSSGetFirstTenPricesLoading _value,
      $Res Function(PSSGetFirstTenPricesLoading) _then)
      : super(_value, (v) => _then(v as PSSGetFirstTenPricesLoading));

  @override
  PSSGetFirstTenPricesLoading get _value =>
      super._value as PSSGetFirstTenPricesLoading;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(PSSGetFirstTenPricesLoading(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as ProduceScreenProps,
    ));
  }
}

/// @nodoc

class _$PSSGetFirstTenPricesLoading implements PSSGetFirstTenPricesLoading {
  const _$PSSGetFirstTenPricesLoading({required this.props});

  @override
  final ProduceScreenProps props;

  @override
  String toString() {
    return 'ProduceScreenState.getFirstTenPricesLoading(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PSSGetFirstTenPricesLoading &&
            (identical(other.props, props) || other.props == props));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props);

  @JsonKey(ignore: true)
  @override
  $PSSGetFirstTenPricesLoadingCopyWith<PSSGetFirstTenPricesLoading>
      get copyWith => _$PSSGetFirstTenPricesLoadingCopyWithImpl<
          PSSGetFirstTenPricesLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProduceScreenProps props) initial,
    required TResult Function(ProduceScreenProps props) getAggregateLoading,
    required TResult Function(ProduceScreenProps props) getAggregateCompleted,
    required TResult Function(ProduceScreenProps props, Failure failure)
        getAggregateError,
    required TResult Function(ProduceScreenProps props)
        getFirstTenPricesLoading,
    required TResult Function(ProduceScreenProps props)
        getFirstTenPricesCompleted,
    required TResult Function(ProduceScreenProps props) getNextTenPricesLoading,
    required TResult Function(ProduceScreenProps props)
        getNextTenPricesCompleted,
    required TResult Function(ProduceScreenProps props) getPricesError,
  }) {
    return getFirstTenPricesLoading(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? getAggregateLoading,
    TResult Function(ProduceScreenProps props)? getAggregateCompleted,
    TResult Function(ProduceScreenProps props, Failure failure)?
        getAggregateError,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getNextTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getNextTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getPricesError,
  }) {
    return getFirstTenPricesLoading?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? getAggregateLoading,
    TResult Function(ProduceScreenProps props)? getAggregateCompleted,
    TResult Function(ProduceScreenProps props, Failure failure)?
        getAggregateError,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getNextTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getNextTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getPricesError,
    required TResult orElse(),
  }) {
    if (getFirstTenPricesLoading != null) {
      return getFirstTenPricesLoading(props);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PSSInitial value) initial,
    required TResult Function(PSSGetAggregateLoading value) getAggregateLoading,
    required TResult Function(PSSGetAggregateCompleted value)
        getAggregateCompleted,
    required TResult Function(PSSGetAggregateError value) getAggregateError,
    required TResult Function(PSSGetFirstTenPricesLoading value)
        getFirstTenPricesLoading,
    required TResult Function(PSSGetFirstTenPricesCompleted value)
        getFirstTenPricesCompleted,
    required TResult Function(PSSGetNextTenPricesLoading value)
        getNextTenPricesLoading,
    required TResult Function(PSSGetNextTenPricesCompleted value)
        getNextTenPricesCompleted,
    required TResult Function(PSSGetPricesError value) getPricesError,
  }) {
    return getFirstTenPricesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSGetAggregateLoading value)? getAggregateLoading,
    TResult Function(PSSGetAggregateCompleted value)? getAggregateCompleted,
    TResult Function(PSSGetAggregateError value)? getAggregateError,
    TResult Function(PSSGetFirstTenPricesLoading value)?
        getFirstTenPricesLoading,
    TResult Function(PSSGetFirstTenPricesCompleted value)?
        getFirstTenPricesCompleted,
    TResult Function(PSSGetNextTenPricesLoading value)? getNextTenPricesLoading,
    TResult Function(PSSGetNextTenPricesCompleted value)?
        getNextTenPricesCompleted,
    TResult Function(PSSGetPricesError value)? getPricesError,
  }) {
    return getFirstTenPricesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSGetAggregateLoading value)? getAggregateLoading,
    TResult Function(PSSGetAggregateCompleted value)? getAggregateCompleted,
    TResult Function(PSSGetAggregateError value)? getAggregateError,
    TResult Function(PSSGetFirstTenPricesLoading value)?
        getFirstTenPricesLoading,
    TResult Function(PSSGetFirstTenPricesCompleted value)?
        getFirstTenPricesCompleted,
    TResult Function(PSSGetNextTenPricesLoading value)? getNextTenPricesLoading,
    TResult Function(PSSGetNextTenPricesCompleted value)?
        getNextTenPricesCompleted,
    TResult Function(PSSGetPricesError value)? getPricesError,
    required TResult orElse(),
  }) {
    if (getFirstTenPricesLoading != null) {
      return getFirstTenPricesLoading(this);
    }
    return orElse();
  }
}

abstract class PSSGetFirstTenPricesLoading implements ProduceScreenState {
  const factory PSSGetFirstTenPricesLoading(
      {required ProduceScreenProps props}) = _$PSSGetFirstTenPricesLoading;

  @override
  ProduceScreenProps get props;
  @override
  @JsonKey(ignore: true)
  $PSSGetFirstTenPricesLoadingCopyWith<PSSGetFirstTenPricesLoading>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PSSGetFirstTenPricesCompletedCopyWith<$Res>
    implements $ProduceScreenStateCopyWith<$Res> {
  factory $PSSGetFirstTenPricesCompletedCopyWith(
          PSSGetFirstTenPricesCompleted value,
          $Res Function(PSSGetFirstTenPricesCompleted) then) =
      _$PSSGetFirstTenPricesCompletedCopyWithImpl<$Res>;
  @override
  $Res call({ProduceScreenProps props});

  @override
  $ProduceScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$PSSGetFirstTenPricesCompletedCopyWithImpl<$Res>
    extends _$ProduceScreenStateCopyWithImpl<$Res>
    implements $PSSGetFirstTenPricesCompletedCopyWith<$Res> {
  _$PSSGetFirstTenPricesCompletedCopyWithImpl(
      PSSGetFirstTenPricesCompleted _value,
      $Res Function(PSSGetFirstTenPricesCompleted) _then)
      : super(_value, (v) => _then(v as PSSGetFirstTenPricesCompleted));

  @override
  PSSGetFirstTenPricesCompleted get _value =>
      super._value as PSSGetFirstTenPricesCompleted;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(PSSGetFirstTenPricesCompleted(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as ProduceScreenProps,
    ));
  }
}

/// @nodoc

class _$PSSGetFirstTenPricesCompleted implements PSSGetFirstTenPricesCompleted {
  const _$PSSGetFirstTenPricesCompleted({required this.props});

  @override
  final ProduceScreenProps props;

  @override
  String toString() {
    return 'ProduceScreenState.getFirstTenPricesCompleted(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PSSGetFirstTenPricesCompleted &&
            (identical(other.props, props) || other.props == props));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props);

  @JsonKey(ignore: true)
  @override
  $PSSGetFirstTenPricesCompletedCopyWith<PSSGetFirstTenPricesCompleted>
      get copyWith => _$PSSGetFirstTenPricesCompletedCopyWithImpl<
          PSSGetFirstTenPricesCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProduceScreenProps props) initial,
    required TResult Function(ProduceScreenProps props) getAggregateLoading,
    required TResult Function(ProduceScreenProps props) getAggregateCompleted,
    required TResult Function(ProduceScreenProps props, Failure failure)
        getAggregateError,
    required TResult Function(ProduceScreenProps props)
        getFirstTenPricesLoading,
    required TResult Function(ProduceScreenProps props)
        getFirstTenPricesCompleted,
    required TResult Function(ProduceScreenProps props) getNextTenPricesLoading,
    required TResult Function(ProduceScreenProps props)
        getNextTenPricesCompleted,
    required TResult Function(ProduceScreenProps props) getPricesError,
  }) {
    return getFirstTenPricesCompleted(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? getAggregateLoading,
    TResult Function(ProduceScreenProps props)? getAggregateCompleted,
    TResult Function(ProduceScreenProps props, Failure failure)?
        getAggregateError,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getNextTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getNextTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getPricesError,
  }) {
    return getFirstTenPricesCompleted?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? getAggregateLoading,
    TResult Function(ProduceScreenProps props)? getAggregateCompleted,
    TResult Function(ProduceScreenProps props, Failure failure)?
        getAggregateError,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getNextTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getNextTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getPricesError,
    required TResult orElse(),
  }) {
    if (getFirstTenPricesCompleted != null) {
      return getFirstTenPricesCompleted(props);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PSSInitial value) initial,
    required TResult Function(PSSGetAggregateLoading value) getAggregateLoading,
    required TResult Function(PSSGetAggregateCompleted value)
        getAggregateCompleted,
    required TResult Function(PSSGetAggregateError value) getAggregateError,
    required TResult Function(PSSGetFirstTenPricesLoading value)
        getFirstTenPricesLoading,
    required TResult Function(PSSGetFirstTenPricesCompleted value)
        getFirstTenPricesCompleted,
    required TResult Function(PSSGetNextTenPricesLoading value)
        getNextTenPricesLoading,
    required TResult Function(PSSGetNextTenPricesCompleted value)
        getNextTenPricesCompleted,
    required TResult Function(PSSGetPricesError value) getPricesError,
  }) {
    return getFirstTenPricesCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSGetAggregateLoading value)? getAggregateLoading,
    TResult Function(PSSGetAggregateCompleted value)? getAggregateCompleted,
    TResult Function(PSSGetAggregateError value)? getAggregateError,
    TResult Function(PSSGetFirstTenPricesLoading value)?
        getFirstTenPricesLoading,
    TResult Function(PSSGetFirstTenPricesCompleted value)?
        getFirstTenPricesCompleted,
    TResult Function(PSSGetNextTenPricesLoading value)? getNextTenPricesLoading,
    TResult Function(PSSGetNextTenPricesCompleted value)?
        getNextTenPricesCompleted,
    TResult Function(PSSGetPricesError value)? getPricesError,
  }) {
    return getFirstTenPricesCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSGetAggregateLoading value)? getAggregateLoading,
    TResult Function(PSSGetAggregateCompleted value)? getAggregateCompleted,
    TResult Function(PSSGetAggregateError value)? getAggregateError,
    TResult Function(PSSGetFirstTenPricesLoading value)?
        getFirstTenPricesLoading,
    TResult Function(PSSGetFirstTenPricesCompleted value)?
        getFirstTenPricesCompleted,
    TResult Function(PSSGetNextTenPricesLoading value)? getNextTenPricesLoading,
    TResult Function(PSSGetNextTenPricesCompleted value)?
        getNextTenPricesCompleted,
    TResult Function(PSSGetPricesError value)? getPricesError,
    required TResult orElse(),
  }) {
    if (getFirstTenPricesCompleted != null) {
      return getFirstTenPricesCompleted(this);
    }
    return orElse();
  }
}

abstract class PSSGetFirstTenPricesCompleted implements ProduceScreenState {
  const factory PSSGetFirstTenPricesCompleted(
      {required ProduceScreenProps props}) = _$PSSGetFirstTenPricesCompleted;

  @override
  ProduceScreenProps get props;
  @override
  @JsonKey(ignore: true)
  $PSSGetFirstTenPricesCompletedCopyWith<PSSGetFirstTenPricesCompleted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PSSGetNextTenPricesLoadingCopyWith<$Res>
    implements $ProduceScreenStateCopyWith<$Res> {
  factory $PSSGetNextTenPricesLoadingCopyWith(PSSGetNextTenPricesLoading value,
          $Res Function(PSSGetNextTenPricesLoading) then) =
      _$PSSGetNextTenPricesLoadingCopyWithImpl<$Res>;
  @override
  $Res call({ProduceScreenProps props});

  @override
  $ProduceScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$PSSGetNextTenPricesLoadingCopyWithImpl<$Res>
    extends _$ProduceScreenStateCopyWithImpl<$Res>
    implements $PSSGetNextTenPricesLoadingCopyWith<$Res> {
  _$PSSGetNextTenPricesLoadingCopyWithImpl(PSSGetNextTenPricesLoading _value,
      $Res Function(PSSGetNextTenPricesLoading) _then)
      : super(_value, (v) => _then(v as PSSGetNextTenPricesLoading));

  @override
  PSSGetNextTenPricesLoading get _value =>
      super._value as PSSGetNextTenPricesLoading;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(PSSGetNextTenPricesLoading(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as ProduceScreenProps,
    ));
  }
}

/// @nodoc

class _$PSSGetNextTenPricesLoading implements PSSGetNextTenPricesLoading {
  const _$PSSGetNextTenPricesLoading({required this.props});

  @override
  final ProduceScreenProps props;

  @override
  String toString() {
    return 'ProduceScreenState.getNextTenPricesLoading(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PSSGetNextTenPricesLoading &&
            (identical(other.props, props) || other.props == props));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props);

  @JsonKey(ignore: true)
  @override
  $PSSGetNextTenPricesLoadingCopyWith<PSSGetNextTenPricesLoading>
      get copyWith =>
          _$PSSGetNextTenPricesLoadingCopyWithImpl<PSSGetNextTenPricesLoading>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProduceScreenProps props) initial,
    required TResult Function(ProduceScreenProps props) getAggregateLoading,
    required TResult Function(ProduceScreenProps props) getAggregateCompleted,
    required TResult Function(ProduceScreenProps props, Failure failure)
        getAggregateError,
    required TResult Function(ProduceScreenProps props)
        getFirstTenPricesLoading,
    required TResult Function(ProduceScreenProps props)
        getFirstTenPricesCompleted,
    required TResult Function(ProduceScreenProps props) getNextTenPricesLoading,
    required TResult Function(ProduceScreenProps props)
        getNextTenPricesCompleted,
    required TResult Function(ProduceScreenProps props) getPricesError,
  }) {
    return getNextTenPricesLoading(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? getAggregateLoading,
    TResult Function(ProduceScreenProps props)? getAggregateCompleted,
    TResult Function(ProduceScreenProps props, Failure failure)?
        getAggregateError,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getNextTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getNextTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getPricesError,
  }) {
    return getNextTenPricesLoading?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? getAggregateLoading,
    TResult Function(ProduceScreenProps props)? getAggregateCompleted,
    TResult Function(ProduceScreenProps props, Failure failure)?
        getAggregateError,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getNextTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getNextTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getPricesError,
    required TResult orElse(),
  }) {
    if (getNextTenPricesLoading != null) {
      return getNextTenPricesLoading(props);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PSSInitial value) initial,
    required TResult Function(PSSGetAggregateLoading value) getAggregateLoading,
    required TResult Function(PSSGetAggregateCompleted value)
        getAggregateCompleted,
    required TResult Function(PSSGetAggregateError value) getAggregateError,
    required TResult Function(PSSGetFirstTenPricesLoading value)
        getFirstTenPricesLoading,
    required TResult Function(PSSGetFirstTenPricesCompleted value)
        getFirstTenPricesCompleted,
    required TResult Function(PSSGetNextTenPricesLoading value)
        getNextTenPricesLoading,
    required TResult Function(PSSGetNextTenPricesCompleted value)
        getNextTenPricesCompleted,
    required TResult Function(PSSGetPricesError value) getPricesError,
  }) {
    return getNextTenPricesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSGetAggregateLoading value)? getAggregateLoading,
    TResult Function(PSSGetAggregateCompleted value)? getAggregateCompleted,
    TResult Function(PSSGetAggregateError value)? getAggregateError,
    TResult Function(PSSGetFirstTenPricesLoading value)?
        getFirstTenPricesLoading,
    TResult Function(PSSGetFirstTenPricesCompleted value)?
        getFirstTenPricesCompleted,
    TResult Function(PSSGetNextTenPricesLoading value)? getNextTenPricesLoading,
    TResult Function(PSSGetNextTenPricesCompleted value)?
        getNextTenPricesCompleted,
    TResult Function(PSSGetPricesError value)? getPricesError,
  }) {
    return getNextTenPricesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSGetAggregateLoading value)? getAggregateLoading,
    TResult Function(PSSGetAggregateCompleted value)? getAggregateCompleted,
    TResult Function(PSSGetAggregateError value)? getAggregateError,
    TResult Function(PSSGetFirstTenPricesLoading value)?
        getFirstTenPricesLoading,
    TResult Function(PSSGetFirstTenPricesCompleted value)?
        getFirstTenPricesCompleted,
    TResult Function(PSSGetNextTenPricesLoading value)? getNextTenPricesLoading,
    TResult Function(PSSGetNextTenPricesCompleted value)?
        getNextTenPricesCompleted,
    TResult Function(PSSGetPricesError value)? getPricesError,
    required TResult orElse(),
  }) {
    if (getNextTenPricesLoading != null) {
      return getNextTenPricesLoading(this);
    }
    return orElse();
  }
}

abstract class PSSGetNextTenPricesLoading implements ProduceScreenState {
  const factory PSSGetNextTenPricesLoading(
      {required ProduceScreenProps props}) = _$PSSGetNextTenPricesLoading;

  @override
  ProduceScreenProps get props;
  @override
  @JsonKey(ignore: true)
  $PSSGetNextTenPricesLoadingCopyWith<PSSGetNextTenPricesLoading>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PSSGetNextTenPricesCompletedCopyWith<$Res>
    implements $ProduceScreenStateCopyWith<$Res> {
  factory $PSSGetNextTenPricesCompletedCopyWith(
          PSSGetNextTenPricesCompleted value,
          $Res Function(PSSGetNextTenPricesCompleted) then) =
      _$PSSGetNextTenPricesCompletedCopyWithImpl<$Res>;
  @override
  $Res call({ProduceScreenProps props});

  @override
  $ProduceScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$PSSGetNextTenPricesCompletedCopyWithImpl<$Res>
    extends _$ProduceScreenStateCopyWithImpl<$Res>
    implements $PSSGetNextTenPricesCompletedCopyWith<$Res> {
  _$PSSGetNextTenPricesCompletedCopyWithImpl(
      PSSGetNextTenPricesCompleted _value,
      $Res Function(PSSGetNextTenPricesCompleted) _then)
      : super(_value, (v) => _then(v as PSSGetNextTenPricesCompleted));

  @override
  PSSGetNextTenPricesCompleted get _value =>
      super._value as PSSGetNextTenPricesCompleted;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(PSSGetNextTenPricesCompleted(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as ProduceScreenProps,
    ));
  }
}

/// @nodoc

class _$PSSGetNextTenPricesCompleted implements PSSGetNextTenPricesCompleted {
  const _$PSSGetNextTenPricesCompleted({required this.props});

  @override
  final ProduceScreenProps props;

  @override
  String toString() {
    return 'ProduceScreenState.getNextTenPricesCompleted(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PSSGetNextTenPricesCompleted &&
            (identical(other.props, props) || other.props == props));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props);

  @JsonKey(ignore: true)
  @override
  $PSSGetNextTenPricesCompletedCopyWith<PSSGetNextTenPricesCompleted>
      get copyWith => _$PSSGetNextTenPricesCompletedCopyWithImpl<
          PSSGetNextTenPricesCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProduceScreenProps props) initial,
    required TResult Function(ProduceScreenProps props) getAggregateLoading,
    required TResult Function(ProduceScreenProps props) getAggregateCompleted,
    required TResult Function(ProduceScreenProps props, Failure failure)
        getAggregateError,
    required TResult Function(ProduceScreenProps props)
        getFirstTenPricesLoading,
    required TResult Function(ProduceScreenProps props)
        getFirstTenPricesCompleted,
    required TResult Function(ProduceScreenProps props) getNextTenPricesLoading,
    required TResult Function(ProduceScreenProps props)
        getNextTenPricesCompleted,
    required TResult Function(ProduceScreenProps props) getPricesError,
  }) {
    return getNextTenPricesCompleted(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? getAggregateLoading,
    TResult Function(ProduceScreenProps props)? getAggregateCompleted,
    TResult Function(ProduceScreenProps props, Failure failure)?
        getAggregateError,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getNextTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getNextTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getPricesError,
  }) {
    return getNextTenPricesCompleted?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? getAggregateLoading,
    TResult Function(ProduceScreenProps props)? getAggregateCompleted,
    TResult Function(ProduceScreenProps props, Failure failure)?
        getAggregateError,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getNextTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getNextTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getPricesError,
    required TResult orElse(),
  }) {
    if (getNextTenPricesCompleted != null) {
      return getNextTenPricesCompleted(props);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PSSInitial value) initial,
    required TResult Function(PSSGetAggregateLoading value) getAggregateLoading,
    required TResult Function(PSSGetAggregateCompleted value)
        getAggregateCompleted,
    required TResult Function(PSSGetAggregateError value) getAggregateError,
    required TResult Function(PSSGetFirstTenPricesLoading value)
        getFirstTenPricesLoading,
    required TResult Function(PSSGetFirstTenPricesCompleted value)
        getFirstTenPricesCompleted,
    required TResult Function(PSSGetNextTenPricesLoading value)
        getNextTenPricesLoading,
    required TResult Function(PSSGetNextTenPricesCompleted value)
        getNextTenPricesCompleted,
    required TResult Function(PSSGetPricesError value) getPricesError,
  }) {
    return getNextTenPricesCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSGetAggregateLoading value)? getAggregateLoading,
    TResult Function(PSSGetAggregateCompleted value)? getAggregateCompleted,
    TResult Function(PSSGetAggregateError value)? getAggregateError,
    TResult Function(PSSGetFirstTenPricesLoading value)?
        getFirstTenPricesLoading,
    TResult Function(PSSGetFirstTenPricesCompleted value)?
        getFirstTenPricesCompleted,
    TResult Function(PSSGetNextTenPricesLoading value)? getNextTenPricesLoading,
    TResult Function(PSSGetNextTenPricesCompleted value)?
        getNextTenPricesCompleted,
    TResult Function(PSSGetPricesError value)? getPricesError,
  }) {
    return getNextTenPricesCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSGetAggregateLoading value)? getAggregateLoading,
    TResult Function(PSSGetAggregateCompleted value)? getAggregateCompleted,
    TResult Function(PSSGetAggregateError value)? getAggregateError,
    TResult Function(PSSGetFirstTenPricesLoading value)?
        getFirstTenPricesLoading,
    TResult Function(PSSGetFirstTenPricesCompleted value)?
        getFirstTenPricesCompleted,
    TResult Function(PSSGetNextTenPricesLoading value)? getNextTenPricesLoading,
    TResult Function(PSSGetNextTenPricesCompleted value)?
        getNextTenPricesCompleted,
    TResult Function(PSSGetPricesError value)? getPricesError,
    required TResult orElse(),
  }) {
    if (getNextTenPricesCompleted != null) {
      return getNextTenPricesCompleted(this);
    }
    return orElse();
  }
}

abstract class PSSGetNextTenPricesCompleted implements ProduceScreenState {
  const factory PSSGetNextTenPricesCompleted(
      {required ProduceScreenProps props}) = _$PSSGetNextTenPricesCompleted;

  @override
  ProduceScreenProps get props;
  @override
  @JsonKey(ignore: true)
  $PSSGetNextTenPricesCompletedCopyWith<PSSGetNextTenPricesCompleted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PSSGetPricesErrorCopyWith<$Res>
    implements $ProduceScreenStateCopyWith<$Res> {
  factory $PSSGetPricesErrorCopyWith(
          PSSGetPricesError value, $Res Function(PSSGetPricesError) then) =
      _$PSSGetPricesErrorCopyWithImpl<$Res>;
  @override
  $Res call({ProduceScreenProps props});

  @override
  $ProduceScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$PSSGetPricesErrorCopyWithImpl<$Res>
    extends _$ProduceScreenStateCopyWithImpl<$Res>
    implements $PSSGetPricesErrorCopyWith<$Res> {
  _$PSSGetPricesErrorCopyWithImpl(
      PSSGetPricesError _value, $Res Function(PSSGetPricesError) _then)
      : super(_value, (v) => _then(v as PSSGetPricesError));

  @override
  PSSGetPricesError get _value => super._value as PSSGetPricesError;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(PSSGetPricesError(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as ProduceScreenProps,
    ));
  }
}

/// @nodoc

class _$PSSGetPricesError implements PSSGetPricesError {
  const _$PSSGetPricesError({required this.props});

  @override
  final ProduceScreenProps props;

  @override
  String toString() {
    return 'ProduceScreenState.getPricesError(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PSSGetPricesError &&
            (identical(other.props, props) || other.props == props));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props);

  @JsonKey(ignore: true)
  @override
  $PSSGetPricesErrorCopyWith<PSSGetPricesError> get copyWith =>
      _$PSSGetPricesErrorCopyWithImpl<PSSGetPricesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProduceScreenProps props) initial,
    required TResult Function(ProduceScreenProps props) getAggregateLoading,
    required TResult Function(ProduceScreenProps props) getAggregateCompleted,
    required TResult Function(ProduceScreenProps props, Failure failure)
        getAggregateError,
    required TResult Function(ProduceScreenProps props)
        getFirstTenPricesLoading,
    required TResult Function(ProduceScreenProps props)
        getFirstTenPricesCompleted,
    required TResult Function(ProduceScreenProps props) getNextTenPricesLoading,
    required TResult Function(ProduceScreenProps props)
        getNextTenPricesCompleted,
    required TResult Function(ProduceScreenProps props) getPricesError,
  }) {
    return getPricesError(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? getAggregateLoading,
    TResult Function(ProduceScreenProps props)? getAggregateCompleted,
    TResult Function(ProduceScreenProps props, Failure failure)?
        getAggregateError,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getNextTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getNextTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getPricesError,
  }) {
    return getPricesError?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? getAggregateLoading,
    TResult Function(ProduceScreenProps props)? getAggregateCompleted,
    TResult Function(ProduceScreenProps props, Failure failure)?
        getAggregateError,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getFirstTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getNextTenPricesLoading,
    TResult Function(ProduceScreenProps props)? getNextTenPricesCompleted,
    TResult Function(ProduceScreenProps props)? getPricesError,
    required TResult orElse(),
  }) {
    if (getPricesError != null) {
      return getPricesError(props);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PSSInitial value) initial,
    required TResult Function(PSSGetAggregateLoading value) getAggregateLoading,
    required TResult Function(PSSGetAggregateCompleted value)
        getAggregateCompleted,
    required TResult Function(PSSGetAggregateError value) getAggregateError,
    required TResult Function(PSSGetFirstTenPricesLoading value)
        getFirstTenPricesLoading,
    required TResult Function(PSSGetFirstTenPricesCompleted value)
        getFirstTenPricesCompleted,
    required TResult Function(PSSGetNextTenPricesLoading value)
        getNextTenPricesLoading,
    required TResult Function(PSSGetNextTenPricesCompleted value)
        getNextTenPricesCompleted,
    required TResult Function(PSSGetPricesError value) getPricesError,
  }) {
    return getPricesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSGetAggregateLoading value)? getAggregateLoading,
    TResult Function(PSSGetAggregateCompleted value)? getAggregateCompleted,
    TResult Function(PSSGetAggregateError value)? getAggregateError,
    TResult Function(PSSGetFirstTenPricesLoading value)?
        getFirstTenPricesLoading,
    TResult Function(PSSGetFirstTenPricesCompleted value)?
        getFirstTenPricesCompleted,
    TResult Function(PSSGetNextTenPricesLoading value)? getNextTenPricesLoading,
    TResult Function(PSSGetNextTenPricesCompleted value)?
        getNextTenPricesCompleted,
    TResult Function(PSSGetPricesError value)? getPricesError,
  }) {
    return getPricesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSGetAggregateLoading value)? getAggregateLoading,
    TResult Function(PSSGetAggregateCompleted value)? getAggregateCompleted,
    TResult Function(PSSGetAggregateError value)? getAggregateError,
    TResult Function(PSSGetFirstTenPricesLoading value)?
        getFirstTenPricesLoading,
    TResult Function(PSSGetFirstTenPricesCompleted value)?
        getFirstTenPricesCompleted,
    TResult Function(PSSGetNextTenPricesLoading value)? getNextTenPricesLoading,
    TResult Function(PSSGetNextTenPricesCompleted value)?
        getNextTenPricesCompleted,
    TResult Function(PSSGetPricesError value)? getPricesError,
    required TResult orElse(),
  }) {
    if (getPricesError != null) {
      return getPricesError(this);
    }
    return orElse();
  }
}

abstract class PSSGetPricesError implements ProduceScreenState {
  const factory PSSGetPricesError({required ProduceScreenProps props}) =
      _$PSSGetPricesError;

  @override
  ProduceScreenProps get props;
  @override
  @JsonKey(ignore: true)
  $PSSGetPricesErrorCopyWith<PSSGetPricesError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProduceScreenPropsTearOff {
  const _$ProduceScreenPropsTearOff();

  _ProduceScreenProps call(
      {required TabController tabController,
      required int index,
      required List<Price> pricesList,
      List<PriceSnippet>? twoWeeksPricesList,
      List<PriceSnippet>? oneMonthPricesList,
      List<PriceSnippet>? twoMonthPricesList,
      List<PriceSnippet>? sixMonthPricesList,
      List<PriceSnippet>? oneYearPricesList}) {
    return _ProduceScreenProps(
      tabController: tabController,
      index: index,
      pricesList: pricesList,
      twoWeeksPricesList: twoWeeksPricesList,
      oneMonthPricesList: oneMonthPricesList,
      twoMonthPricesList: twoMonthPricesList,
      sixMonthPricesList: sixMonthPricesList,
      oneYearPricesList: oneYearPricesList,
    );
  }
}

/// @nodoc
const $ProduceScreenProps = _$ProduceScreenPropsTearOff();

/// @nodoc
mixin _$ProduceScreenProps {
  TabController get tabController => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  List<Price> get pricesList => throw _privateConstructorUsedError;
  List<PriceSnippet>? get twoWeeksPricesList =>
      throw _privateConstructorUsedError;
  List<PriceSnippet>? get oneMonthPricesList =>
      throw _privateConstructorUsedError;
  List<PriceSnippet>? get twoMonthPricesList =>
      throw _privateConstructorUsedError;
  List<PriceSnippet>? get sixMonthPricesList =>
      throw _privateConstructorUsedError;
  List<PriceSnippet>? get oneYearPricesList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProduceScreenPropsCopyWith<ProduceScreenProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProduceScreenPropsCopyWith<$Res> {
  factory $ProduceScreenPropsCopyWith(
          ProduceScreenProps value, $Res Function(ProduceScreenProps) then) =
      _$ProduceScreenPropsCopyWithImpl<$Res>;
  $Res call(
      {TabController tabController,
      int index,
      List<Price> pricesList,
      List<PriceSnippet>? twoWeeksPricesList,
      List<PriceSnippet>? oneMonthPricesList,
      List<PriceSnippet>? twoMonthPricesList,
      List<PriceSnippet>? sixMonthPricesList,
      List<PriceSnippet>? oneYearPricesList});
}

/// @nodoc
class _$ProduceScreenPropsCopyWithImpl<$Res>
    implements $ProduceScreenPropsCopyWith<$Res> {
  _$ProduceScreenPropsCopyWithImpl(this._value, this._then);

  final ProduceScreenProps _value;
  // ignore: unused_field
  final $Res Function(ProduceScreenProps) _then;

  @override
  $Res call({
    Object? tabController = freezed,
    Object? index = freezed,
    Object? pricesList = freezed,
    Object? twoWeeksPricesList = freezed,
    Object? oneMonthPricesList = freezed,
    Object? twoMonthPricesList = freezed,
    Object? sixMonthPricesList = freezed,
    Object? oneYearPricesList = freezed,
  }) {
    return _then(_value.copyWith(
      tabController: tabController == freezed
          ? _value.tabController
          : tabController // ignore: cast_nullable_to_non_nullable
              as TabController,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      pricesList: pricesList == freezed
          ? _value.pricesList
          : pricesList // ignore: cast_nullable_to_non_nullable
              as List<Price>,
      twoWeeksPricesList: twoWeeksPricesList == freezed
          ? _value.twoWeeksPricesList
          : twoWeeksPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceSnippet>?,
      oneMonthPricesList: oneMonthPricesList == freezed
          ? _value.oneMonthPricesList
          : oneMonthPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceSnippet>?,
      twoMonthPricesList: twoMonthPricesList == freezed
          ? _value.twoMonthPricesList
          : twoMonthPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceSnippet>?,
      sixMonthPricesList: sixMonthPricesList == freezed
          ? _value.sixMonthPricesList
          : sixMonthPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceSnippet>?,
      oneYearPricesList: oneYearPricesList == freezed
          ? _value.oneYearPricesList
          : oneYearPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceSnippet>?,
    ));
  }
}

/// @nodoc
abstract class _$ProduceScreenPropsCopyWith<$Res>
    implements $ProduceScreenPropsCopyWith<$Res> {
  factory _$ProduceScreenPropsCopyWith(
          _ProduceScreenProps value, $Res Function(_ProduceScreenProps) then) =
      __$ProduceScreenPropsCopyWithImpl<$Res>;
  @override
  $Res call(
      {TabController tabController,
      int index,
      List<Price> pricesList,
      List<PriceSnippet>? twoWeeksPricesList,
      List<PriceSnippet>? oneMonthPricesList,
      List<PriceSnippet>? twoMonthPricesList,
      List<PriceSnippet>? sixMonthPricesList,
      List<PriceSnippet>? oneYearPricesList});
}

/// @nodoc
class __$ProduceScreenPropsCopyWithImpl<$Res>
    extends _$ProduceScreenPropsCopyWithImpl<$Res>
    implements _$ProduceScreenPropsCopyWith<$Res> {
  __$ProduceScreenPropsCopyWithImpl(
      _ProduceScreenProps _value, $Res Function(_ProduceScreenProps) _then)
      : super(_value, (v) => _then(v as _ProduceScreenProps));

  @override
  _ProduceScreenProps get _value => super._value as _ProduceScreenProps;

  @override
  $Res call({
    Object? tabController = freezed,
    Object? index = freezed,
    Object? pricesList = freezed,
    Object? twoWeeksPricesList = freezed,
    Object? oneMonthPricesList = freezed,
    Object? twoMonthPricesList = freezed,
    Object? sixMonthPricesList = freezed,
    Object? oneYearPricesList = freezed,
  }) {
    return _then(_ProduceScreenProps(
      tabController: tabController == freezed
          ? _value.tabController
          : tabController // ignore: cast_nullable_to_non_nullable
              as TabController,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      pricesList: pricesList == freezed
          ? _value.pricesList
          : pricesList // ignore: cast_nullable_to_non_nullable
              as List<Price>,
      twoWeeksPricesList: twoWeeksPricesList == freezed
          ? _value.twoWeeksPricesList
          : twoWeeksPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceSnippet>?,
      oneMonthPricesList: oneMonthPricesList == freezed
          ? _value.oneMonthPricesList
          : oneMonthPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceSnippet>?,
      twoMonthPricesList: twoMonthPricesList == freezed
          ? _value.twoMonthPricesList
          : twoMonthPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceSnippet>?,
      sixMonthPricesList: sixMonthPricesList == freezed
          ? _value.sixMonthPricesList
          : sixMonthPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceSnippet>?,
      oneYearPricesList: oneYearPricesList == freezed
          ? _value.oneYearPricesList
          : oneYearPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceSnippet>?,
    ));
  }
}

/// @nodoc

class _$_ProduceScreenProps implements _ProduceScreenProps {
  const _$_ProduceScreenProps(
      {required this.tabController,
      required this.index,
      required this.pricesList,
      this.twoWeeksPricesList,
      this.oneMonthPricesList,
      this.twoMonthPricesList,
      this.sixMonthPricesList,
      this.oneYearPricesList});

  @override
  final TabController tabController;
  @override
  final int index;
  @override
  final List<Price> pricesList;
  @override
  final List<PriceSnippet>? twoWeeksPricesList;
  @override
  final List<PriceSnippet>? oneMonthPricesList;
  @override
  final List<PriceSnippet>? twoMonthPricesList;
  @override
  final List<PriceSnippet>? sixMonthPricesList;
  @override
  final List<PriceSnippet>? oneYearPricesList;

  @override
  String toString() {
    return 'ProduceScreenProps(tabController: $tabController, index: $index, pricesList: $pricesList, twoWeeksPricesList: $twoWeeksPricesList, oneMonthPricesList: $oneMonthPricesList, twoMonthPricesList: $twoMonthPricesList, sixMonthPricesList: $sixMonthPricesList, oneYearPricesList: $oneYearPricesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProduceScreenProps &&
            (identical(other.tabController, tabController) ||
                other.tabController == tabController) &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality()
                .equals(other.pricesList, pricesList) &&
            const DeepCollectionEquality()
                .equals(other.twoWeeksPricesList, twoWeeksPricesList) &&
            const DeepCollectionEquality()
                .equals(other.oneMonthPricesList, oneMonthPricesList) &&
            const DeepCollectionEquality()
                .equals(other.twoMonthPricesList, twoMonthPricesList) &&
            const DeepCollectionEquality()
                .equals(other.sixMonthPricesList, sixMonthPricesList) &&
            const DeepCollectionEquality()
                .equals(other.oneYearPricesList, oneYearPricesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      tabController,
      index,
      const DeepCollectionEquality().hash(pricesList),
      const DeepCollectionEquality().hash(twoWeeksPricesList),
      const DeepCollectionEquality().hash(oneMonthPricesList),
      const DeepCollectionEquality().hash(twoMonthPricesList),
      const DeepCollectionEquality().hash(sixMonthPricesList),
      const DeepCollectionEquality().hash(oneYearPricesList));

  @JsonKey(ignore: true)
  @override
  _$ProduceScreenPropsCopyWith<_ProduceScreenProps> get copyWith =>
      __$ProduceScreenPropsCopyWithImpl<_ProduceScreenProps>(this, _$identity);
}

abstract class _ProduceScreenProps implements ProduceScreenProps {
  const factory _ProduceScreenProps(
      {required TabController tabController,
      required int index,
      required List<Price> pricesList,
      List<PriceSnippet>? twoWeeksPricesList,
      List<PriceSnippet>? oneMonthPricesList,
      List<PriceSnippet>? twoMonthPricesList,
      List<PriceSnippet>? sixMonthPricesList,
      List<PriceSnippet>? oneYearPricesList}) = _$_ProduceScreenProps;

  @override
  TabController get tabController;
  @override
  int get index;
  @override
  List<Price> get pricesList;
  @override
  List<PriceSnippet>? get twoWeeksPricesList;
  @override
  List<PriceSnippet>? get oneMonthPricesList;
  @override
  List<PriceSnippet>? get twoMonthPricesList;
  @override
  List<PriceSnippet>? get sixMonthPricesList;
  @override
  List<PriceSnippet>? get oneYearPricesList;
  @override
  @JsonKey(ignore: true)
  _$ProduceScreenPropsCopyWith<_ProduceScreenProps> get copyWith =>
      throw _privateConstructorUsedError;
}
