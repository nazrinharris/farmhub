// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'produce_manager_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProduceManagerEventTearOff {
  const _$ProduceManagerEventTearOff();

  _Started started() {
    return const _Started();
  }

  _PMEExecGetFirstTenProduce execGetFirstTenProduce() {
    return const _PMEExecGetFirstTenProduce();
  }

  _PMEExecCreateProduce execCreateProduce(
      {required String produceName, required num currentProducePrice}) {
    return _PMEExecCreateProduce(
      produceName: produceName,
      currentProducePrice: currentProducePrice,
    );
  }

  _PMEExecGetOneWeekPrices execGetOneWeekPrices({required String pid}) {
    return _PMEExecGetOneWeekPrices(
      pid: pid,
    );
  }
}

/// @nodoc
const $ProduceManagerEvent = _$ProduceManagerEventTearOff();

/// @nodoc
mixin _$ProduceManagerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() execGetFirstTenProduce,
    required TResult Function(String produceName, num currentProducePrice)
        execCreateProduce,
    required TResult Function(String pid) execGetOneWeekPrices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? execGetFirstTenProduce,
    TResult Function(String produceName, num currentProducePrice)?
        execCreateProduce,
    TResult Function(String pid)? execGetOneWeekPrices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? execGetFirstTenProduce,
    TResult Function(String produceName, num currentProducePrice)?
        execCreateProduce,
    TResult Function(String pid)? execGetOneWeekPrices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PMEExecGetFirstTenProduce value)
        execGetFirstTenProduce,
    required TResult Function(_PMEExecCreateProduce value) execCreateProduce,
    required TResult Function(_PMEExecGetOneWeekPrices value)
        execGetOneWeekPrices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PMEExecGetFirstTenProduce value)? execGetFirstTenProduce,
    TResult Function(_PMEExecCreateProduce value)? execCreateProduce,
    TResult Function(_PMEExecGetOneWeekPrices value)? execGetOneWeekPrices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PMEExecGetFirstTenProduce value)? execGetFirstTenProduce,
    TResult Function(_PMEExecCreateProduce value)? execCreateProduce,
    TResult Function(_PMEExecGetOneWeekPrices value)? execGetOneWeekPrices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProduceManagerEventCopyWith<$Res> {
  factory $ProduceManagerEventCopyWith(
          ProduceManagerEvent value, $Res Function(ProduceManagerEvent) then) =
      _$ProduceManagerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProduceManagerEventCopyWithImpl<$Res>
    implements $ProduceManagerEventCopyWith<$Res> {
  _$ProduceManagerEventCopyWithImpl(this._value, this._then);

  final ProduceManagerEvent _value;
  // ignore: unused_field
  final $Res Function(ProduceManagerEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$ProduceManagerEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ProduceManagerEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() execGetFirstTenProduce,
    required TResult Function(String produceName, num currentProducePrice)
        execCreateProduce,
    required TResult Function(String pid) execGetOneWeekPrices,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? execGetFirstTenProduce,
    TResult Function(String produceName, num currentProducePrice)?
        execCreateProduce,
    TResult Function(String pid)? execGetOneWeekPrices,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? execGetFirstTenProduce,
    TResult Function(String produceName, num currentProducePrice)?
        execCreateProduce,
    TResult Function(String pid)? execGetOneWeekPrices,
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
    required TResult Function(_Started value) started,
    required TResult Function(_PMEExecGetFirstTenProduce value)
        execGetFirstTenProduce,
    required TResult Function(_PMEExecCreateProduce value) execCreateProduce,
    required TResult Function(_PMEExecGetOneWeekPrices value)
        execGetOneWeekPrices,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PMEExecGetFirstTenProduce value)? execGetFirstTenProduce,
    TResult Function(_PMEExecCreateProduce value)? execCreateProduce,
    TResult Function(_PMEExecGetOneWeekPrices value)? execGetOneWeekPrices,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PMEExecGetFirstTenProduce value)? execGetFirstTenProduce,
    TResult Function(_PMEExecCreateProduce value)? execCreateProduce,
    TResult Function(_PMEExecGetOneWeekPrices value)? execGetOneWeekPrices,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProduceManagerEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$PMEExecGetFirstTenProduceCopyWith<$Res> {
  factory _$PMEExecGetFirstTenProduceCopyWith(_PMEExecGetFirstTenProduce value,
          $Res Function(_PMEExecGetFirstTenProduce) then) =
      __$PMEExecGetFirstTenProduceCopyWithImpl<$Res>;
}

/// @nodoc
class __$PMEExecGetFirstTenProduceCopyWithImpl<$Res>
    extends _$ProduceManagerEventCopyWithImpl<$Res>
    implements _$PMEExecGetFirstTenProduceCopyWith<$Res> {
  __$PMEExecGetFirstTenProduceCopyWithImpl(_PMEExecGetFirstTenProduce _value,
      $Res Function(_PMEExecGetFirstTenProduce) _then)
      : super(_value, (v) => _then(v as _PMEExecGetFirstTenProduce));

  @override
  _PMEExecGetFirstTenProduce get _value =>
      super._value as _PMEExecGetFirstTenProduce;
}

/// @nodoc

class _$_PMEExecGetFirstTenProduce implements _PMEExecGetFirstTenProduce {
  const _$_PMEExecGetFirstTenProduce();

  @override
  String toString() {
    return 'ProduceManagerEvent.execGetFirstTenProduce()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PMEExecGetFirstTenProduce);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() execGetFirstTenProduce,
    required TResult Function(String produceName, num currentProducePrice)
        execCreateProduce,
    required TResult Function(String pid) execGetOneWeekPrices,
  }) {
    return execGetFirstTenProduce();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? execGetFirstTenProduce,
    TResult Function(String produceName, num currentProducePrice)?
        execCreateProduce,
    TResult Function(String pid)? execGetOneWeekPrices,
  }) {
    return execGetFirstTenProduce?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? execGetFirstTenProduce,
    TResult Function(String produceName, num currentProducePrice)?
        execCreateProduce,
    TResult Function(String pid)? execGetOneWeekPrices,
    required TResult orElse(),
  }) {
    if (execGetFirstTenProduce != null) {
      return execGetFirstTenProduce();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PMEExecGetFirstTenProduce value)
        execGetFirstTenProduce,
    required TResult Function(_PMEExecCreateProduce value) execCreateProduce,
    required TResult Function(_PMEExecGetOneWeekPrices value)
        execGetOneWeekPrices,
  }) {
    return execGetFirstTenProduce(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PMEExecGetFirstTenProduce value)? execGetFirstTenProduce,
    TResult Function(_PMEExecCreateProduce value)? execCreateProduce,
    TResult Function(_PMEExecGetOneWeekPrices value)? execGetOneWeekPrices,
  }) {
    return execGetFirstTenProduce?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PMEExecGetFirstTenProduce value)? execGetFirstTenProduce,
    TResult Function(_PMEExecCreateProduce value)? execCreateProduce,
    TResult Function(_PMEExecGetOneWeekPrices value)? execGetOneWeekPrices,
    required TResult orElse(),
  }) {
    if (execGetFirstTenProduce != null) {
      return execGetFirstTenProduce(this);
    }
    return orElse();
  }
}

abstract class _PMEExecGetFirstTenProduce implements ProduceManagerEvent {
  const factory _PMEExecGetFirstTenProduce() = _$_PMEExecGetFirstTenProduce;
}

/// @nodoc
abstract class _$PMEExecCreateProduceCopyWith<$Res> {
  factory _$PMEExecCreateProduceCopyWith(_PMEExecCreateProduce value,
          $Res Function(_PMEExecCreateProduce) then) =
      __$PMEExecCreateProduceCopyWithImpl<$Res>;
  $Res call({String produceName, num currentProducePrice});
}

/// @nodoc
class __$PMEExecCreateProduceCopyWithImpl<$Res>
    extends _$ProduceManagerEventCopyWithImpl<$Res>
    implements _$PMEExecCreateProduceCopyWith<$Res> {
  __$PMEExecCreateProduceCopyWithImpl(
      _PMEExecCreateProduce _value, $Res Function(_PMEExecCreateProduce) _then)
      : super(_value, (v) => _then(v as _PMEExecCreateProduce));

  @override
  _PMEExecCreateProduce get _value => super._value as _PMEExecCreateProduce;

  @override
  $Res call({
    Object? produceName = freezed,
    Object? currentProducePrice = freezed,
  }) {
    return _then(_PMEExecCreateProduce(
      produceName: produceName == freezed
          ? _value.produceName
          : produceName // ignore: cast_nullable_to_non_nullable
              as String,
      currentProducePrice: currentProducePrice == freezed
          ? _value.currentProducePrice
          : currentProducePrice // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$_PMEExecCreateProduce implements _PMEExecCreateProduce {
  const _$_PMEExecCreateProduce(
      {required this.produceName, required this.currentProducePrice});

  @override
  final String produceName;
  @override
  final num currentProducePrice;

  @override
  String toString() {
    return 'ProduceManagerEvent.execCreateProduce(produceName: $produceName, currentProducePrice: $currentProducePrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PMEExecCreateProduce &&
            (identical(other.produceName, produceName) ||
                other.produceName == produceName) &&
            (identical(other.currentProducePrice, currentProducePrice) ||
                other.currentProducePrice == currentProducePrice));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, produceName, currentProducePrice);

  @JsonKey(ignore: true)
  @override
  _$PMEExecCreateProduceCopyWith<_PMEExecCreateProduce> get copyWith =>
      __$PMEExecCreateProduceCopyWithImpl<_PMEExecCreateProduce>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() execGetFirstTenProduce,
    required TResult Function(String produceName, num currentProducePrice)
        execCreateProduce,
    required TResult Function(String pid) execGetOneWeekPrices,
  }) {
    return execCreateProduce(produceName, currentProducePrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? execGetFirstTenProduce,
    TResult Function(String produceName, num currentProducePrice)?
        execCreateProduce,
    TResult Function(String pid)? execGetOneWeekPrices,
  }) {
    return execCreateProduce?.call(produceName, currentProducePrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? execGetFirstTenProduce,
    TResult Function(String produceName, num currentProducePrice)?
        execCreateProduce,
    TResult Function(String pid)? execGetOneWeekPrices,
    required TResult orElse(),
  }) {
    if (execCreateProduce != null) {
      return execCreateProduce(produceName, currentProducePrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PMEExecGetFirstTenProduce value)
        execGetFirstTenProduce,
    required TResult Function(_PMEExecCreateProduce value) execCreateProduce,
    required TResult Function(_PMEExecGetOneWeekPrices value)
        execGetOneWeekPrices,
  }) {
    return execCreateProduce(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PMEExecGetFirstTenProduce value)? execGetFirstTenProduce,
    TResult Function(_PMEExecCreateProduce value)? execCreateProduce,
    TResult Function(_PMEExecGetOneWeekPrices value)? execGetOneWeekPrices,
  }) {
    return execCreateProduce?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PMEExecGetFirstTenProduce value)? execGetFirstTenProduce,
    TResult Function(_PMEExecCreateProduce value)? execCreateProduce,
    TResult Function(_PMEExecGetOneWeekPrices value)? execGetOneWeekPrices,
    required TResult orElse(),
  }) {
    if (execCreateProduce != null) {
      return execCreateProduce(this);
    }
    return orElse();
  }
}

abstract class _PMEExecCreateProduce implements ProduceManagerEvent {
  const factory _PMEExecCreateProduce(
      {required String produceName,
      required num currentProducePrice}) = _$_PMEExecCreateProduce;

  String get produceName;
  num get currentProducePrice;
  @JsonKey(ignore: true)
  _$PMEExecCreateProduceCopyWith<_PMEExecCreateProduce> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PMEExecGetOneWeekPricesCopyWith<$Res> {
  factory _$PMEExecGetOneWeekPricesCopyWith(_PMEExecGetOneWeekPrices value,
          $Res Function(_PMEExecGetOneWeekPrices) then) =
      __$PMEExecGetOneWeekPricesCopyWithImpl<$Res>;
  $Res call({String pid});
}

/// @nodoc
class __$PMEExecGetOneWeekPricesCopyWithImpl<$Res>
    extends _$ProduceManagerEventCopyWithImpl<$Res>
    implements _$PMEExecGetOneWeekPricesCopyWith<$Res> {
  __$PMEExecGetOneWeekPricesCopyWithImpl(_PMEExecGetOneWeekPrices _value,
      $Res Function(_PMEExecGetOneWeekPrices) _then)
      : super(_value, (v) => _then(v as _PMEExecGetOneWeekPrices));

  @override
  _PMEExecGetOneWeekPrices get _value =>
      super._value as _PMEExecGetOneWeekPrices;

  @override
  $Res call({
    Object? pid = freezed,
  }) {
    return _then(_PMEExecGetOneWeekPrices(
      pid: pid == freezed
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PMEExecGetOneWeekPrices implements _PMEExecGetOneWeekPrices {
  const _$_PMEExecGetOneWeekPrices({required this.pid});

  @override
  final String pid;

  @override
  String toString() {
    return 'ProduceManagerEvent.execGetOneWeekPrices(pid: $pid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PMEExecGetOneWeekPrices &&
            (identical(other.pid, pid) || other.pid == pid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pid);

  @JsonKey(ignore: true)
  @override
  _$PMEExecGetOneWeekPricesCopyWith<_PMEExecGetOneWeekPrices> get copyWith =>
      __$PMEExecGetOneWeekPricesCopyWithImpl<_PMEExecGetOneWeekPrices>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() execGetFirstTenProduce,
    required TResult Function(String produceName, num currentProducePrice)
        execCreateProduce,
    required TResult Function(String pid) execGetOneWeekPrices,
  }) {
    return execGetOneWeekPrices(pid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? execGetFirstTenProduce,
    TResult Function(String produceName, num currentProducePrice)?
        execCreateProduce,
    TResult Function(String pid)? execGetOneWeekPrices,
  }) {
    return execGetOneWeekPrices?.call(pid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? execGetFirstTenProduce,
    TResult Function(String produceName, num currentProducePrice)?
        execCreateProduce,
    TResult Function(String pid)? execGetOneWeekPrices,
    required TResult orElse(),
  }) {
    if (execGetOneWeekPrices != null) {
      return execGetOneWeekPrices(pid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PMEExecGetFirstTenProduce value)
        execGetFirstTenProduce,
    required TResult Function(_PMEExecCreateProduce value) execCreateProduce,
    required TResult Function(_PMEExecGetOneWeekPrices value)
        execGetOneWeekPrices,
  }) {
    return execGetOneWeekPrices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PMEExecGetFirstTenProduce value)? execGetFirstTenProduce,
    TResult Function(_PMEExecCreateProduce value)? execCreateProduce,
    TResult Function(_PMEExecGetOneWeekPrices value)? execGetOneWeekPrices,
  }) {
    return execGetOneWeekPrices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PMEExecGetFirstTenProduce value)? execGetFirstTenProduce,
    TResult Function(_PMEExecCreateProduce value)? execCreateProduce,
    TResult Function(_PMEExecGetOneWeekPrices value)? execGetOneWeekPrices,
    required TResult orElse(),
  }) {
    if (execGetOneWeekPrices != null) {
      return execGetOneWeekPrices(this);
    }
    return orElse();
  }
}

abstract class _PMEExecGetOneWeekPrices implements ProduceManagerEvent {
  const factory _PMEExecGetOneWeekPrices({required String pid}) =
      _$_PMEExecGetOneWeekPrices;

  String get pid;
  @JsonKey(ignore: true)
  _$PMEExecGetOneWeekPricesCopyWith<_PMEExecGetOneWeekPrices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProduceManagerStateTearOff {
  const _$ProduceManagerStateTearOff();

  PMSInitial initial() {
    return const PMSInitial();
  }

  PMSGetFirstTenProduceLoading getFirstTenProduceLoading() {
    return const PMSGetFirstTenProduceLoading();
  }

  PMSGetFirstTenProduceSuccess getFirstTenProduceSuccess(
      {required List<Produce> produceList}) {
    return PMSGetFirstTenProduceSuccess(
      produceList: produceList,
    );
  }

  PMSGetFirstTenProduceError getFirstTenProduceError(
      {required String code,
      required String message,
      required StackTrace stackTrace}) {
    return PMSGetFirstTenProduceError(
      code: code,
      message: message,
      stackTrace: stackTrace,
    );
  }

  PMSCreateNewProduceLoading createNewProduceLoading() {
    return const PMSCreateNewProduceLoading();
  }

  PMSCreateNewProduceSuccess createNewProduceSuccess(
      {required Produce produce}) {
    return PMSCreateNewProduceSuccess(
      produce: produce,
    );
  }

  PMSCreateNewProduceError createNewProduceError(
      {required String code,
      required String message,
      required StackTrace stackTrace}) {
    return PMSCreateNewProduceError(
      code: code,
      message: message,
      stackTrace: stackTrace,
    );
  }

  PMSOneWeekPricesLoading getOneWeekPricesLoading() {
    return const PMSOneWeekPricesLoading();
  }

  PMSOneWeekPricesSuccess getOneWeekPricesSuccess(
      {required List<Price> priceList}) {
    return PMSOneWeekPricesSuccess(
      priceList: priceList,
    );
  }

  PMSOneWeekPricesError getOneWeekPricesError(
      {required String code,
      required String message,
      required StackTrace stackTrace}) {
    return PMSOneWeekPricesError(
      code: code,
      message: message,
      stackTrace: stackTrace,
    );
  }
}

/// @nodoc
const $ProduceManagerState = _$ProduceManagerStateTearOff();

/// @nodoc
mixin _$ProduceManagerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getFirstTenProduceLoading,
    required TResult Function(List<Produce> produceList)
        getFirstTenProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getFirstTenProduceError,
    required TResult Function() createNewProduceLoading,
    required TResult Function(Produce produce) createNewProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        createNewProduceError,
    required TResult Function() getOneWeekPricesLoading,
    required TResult Function(List<Price> priceList) getOneWeekPricesSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getOneWeekPricesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PMSInitial value) initial,
    required TResult Function(PMSGetFirstTenProduceLoading value)
        getFirstTenProduceLoading,
    required TResult Function(PMSGetFirstTenProduceSuccess value)
        getFirstTenProduceSuccess,
    required TResult Function(PMSGetFirstTenProduceError value)
        getFirstTenProduceError,
    required TResult Function(PMSCreateNewProduceLoading value)
        createNewProduceLoading,
    required TResult Function(PMSCreateNewProduceSuccess value)
        createNewProduceSuccess,
    required TResult Function(PMSCreateNewProduceError value)
        createNewProduceError,
    required TResult Function(PMSOneWeekPricesLoading value)
        getOneWeekPricesLoading,
    required TResult Function(PMSOneWeekPricesSuccess value)
        getOneWeekPricesSuccess,
    required TResult Function(PMSOneWeekPricesError value)
        getOneWeekPricesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProduceManagerStateCopyWith<$Res> {
  factory $ProduceManagerStateCopyWith(
          ProduceManagerState value, $Res Function(ProduceManagerState) then) =
      _$ProduceManagerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProduceManagerStateCopyWithImpl<$Res>
    implements $ProduceManagerStateCopyWith<$Res> {
  _$ProduceManagerStateCopyWithImpl(this._value, this._then);

  final ProduceManagerState _value;
  // ignore: unused_field
  final $Res Function(ProduceManagerState) _then;
}

/// @nodoc
abstract class $PMSInitialCopyWith<$Res> {
  factory $PMSInitialCopyWith(
          PMSInitial value, $Res Function(PMSInitial) then) =
      _$PMSInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$PMSInitialCopyWithImpl<$Res>
    extends _$ProduceManagerStateCopyWithImpl<$Res>
    implements $PMSInitialCopyWith<$Res> {
  _$PMSInitialCopyWithImpl(PMSInitial _value, $Res Function(PMSInitial) _then)
      : super(_value, (v) => _then(v as PMSInitial));

  @override
  PMSInitial get _value => super._value as PMSInitial;
}

/// @nodoc

class _$PMSInitial implements PMSInitial {
  const _$PMSInitial();

  @override
  String toString() {
    return 'ProduceManagerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PMSInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getFirstTenProduceLoading,
    required TResult Function(List<Produce> produceList)
        getFirstTenProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getFirstTenProduceError,
    required TResult Function() createNewProduceLoading,
    required TResult Function(Produce produce) createNewProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        createNewProduceError,
    required TResult Function() getOneWeekPricesLoading,
    required TResult Function(List<Price> priceList) getOneWeekPricesSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getOneWeekPricesError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PMSInitial value) initial,
    required TResult Function(PMSGetFirstTenProduceLoading value)
        getFirstTenProduceLoading,
    required TResult Function(PMSGetFirstTenProduceSuccess value)
        getFirstTenProduceSuccess,
    required TResult Function(PMSGetFirstTenProduceError value)
        getFirstTenProduceError,
    required TResult Function(PMSCreateNewProduceLoading value)
        createNewProduceLoading,
    required TResult Function(PMSCreateNewProduceSuccess value)
        createNewProduceSuccess,
    required TResult Function(PMSCreateNewProduceError value)
        createNewProduceError,
    required TResult Function(PMSOneWeekPricesLoading value)
        getOneWeekPricesLoading,
    required TResult Function(PMSOneWeekPricesSuccess value)
        getOneWeekPricesSuccess,
    required TResult Function(PMSOneWeekPricesError value)
        getOneWeekPricesError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PMSInitial implements ProduceManagerState {
  const factory PMSInitial() = _$PMSInitial;
}

/// @nodoc
abstract class $PMSGetFirstTenProduceLoadingCopyWith<$Res> {
  factory $PMSGetFirstTenProduceLoadingCopyWith(
          PMSGetFirstTenProduceLoading value,
          $Res Function(PMSGetFirstTenProduceLoading) then) =
      _$PMSGetFirstTenProduceLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PMSGetFirstTenProduceLoadingCopyWithImpl<$Res>
    extends _$ProduceManagerStateCopyWithImpl<$Res>
    implements $PMSGetFirstTenProduceLoadingCopyWith<$Res> {
  _$PMSGetFirstTenProduceLoadingCopyWithImpl(
      PMSGetFirstTenProduceLoading _value,
      $Res Function(PMSGetFirstTenProduceLoading) _then)
      : super(_value, (v) => _then(v as PMSGetFirstTenProduceLoading));

  @override
  PMSGetFirstTenProduceLoading get _value =>
      super._value as PMSGetFirstTenProduceLoading;
}

/// @nodoc

class _$PMSGetFirstTenProduceLoading implements PMSGetFirstTenProduceLoading {
  const _$PMSGetFirstTenProduceLoading();

  @override
  String toString() {
    return 'ProduceManagerState.getFirstTenProduceLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PMSGetFirstTenProduceLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getFirstTenProduceLoading,
    required TResult Function(List<Produce> produceList)
        getFirstTenProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getFirstTenProduceError,
    required TResult Function() createNewProduceLoading,
    required TResult Function(Produce produce) createNewProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        createNewProduceError,
    required TResult Function() getOneWeekPricesLoading,
    required TResult Function(List<Price> priceList) getOneWeekPricesSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getOneWeekPricesError,
  }) {
    return getFirstTenProduceLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
  }) {
    return getFirstTenProduceLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
    required TResult orElse(),
  }) {
    if (getFirstTenProduceLoading != null) {
      return getFirstTenProduceLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PMSInitial value) initial,
    required TResult Function(PMSGetFirstTenProduceLoading value)
        getFirstTenProduceLoading,
    required TResult Function(PMSGetFirstTenProduceSuccess value)
        getFirstTenProduceSuccess,
    required TResult Function(PMSGetFirstTenProduceError value)
        getFirstTenProduceError,
    required TResult Function(PMSCreateNewProduceLoading value)
        createNewProduceLoading,
    required TResult Function(PMSCreateNewProduceSuccess value)
        createNewProduceSuccess,
    required TResult Function(PMSCreateNewProduceError value)
        createNewProduceError,
    required TResult Function(PMSOneWeekPricesLoading value)
        getOneWeekPricesLoading,
    required TResult Function(PMSOneWeekPricesSuccess value)
        getOneWeekPricesSuccess,
    required TResult Function(PMSOneWeekPricesError value)
        getOneWeekPricesError,
  }) {
    return getFirstTenProduceLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
  }) {
    return getFirstTenProduceLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
    required TResult orElse(),
  }) {
    if (getFirstTenProduceLoading != null) {
      return getFirstTenProduceLoading(this);
    }
    return orElse();
  }
}

abstract class PMSGetFirstTenProduceLoading implements ProduceManagerState {
  const factory PMSGetFirstTenProduceLoading() = _$PMSGetFirstTenProduceLoading;
}

/// @nodoc
abstract class $PMSGetFirstTenProduceSuccessCopyWith<$Res> {
  factory $PMSGetFirstTenProduceSuccessCopyWith(
          PMSGetFirstTenProduceSuccess value,
          $Res Function(PMSGetFirstTenProduceSuccess) then) =
      _$PMSGetFirstTenProduceSuccessCopyWithImpl<$Res>;
  $Res call({List<Produce> produceList});
}

/// @nodoc
class _$PMSGetFirstTenProduceSuccessCopyWithImpl<$Res>
    extends _$ProduceManagerStateCopyWithImpl<$Res>
    implements $PMSGetFirstTenProduceSuccessCopyWith<$Res> {
  _$PMSGetFirstTenProduceSuccessCopyWithImpl(
      PMSGetFirstTenProduceSuccess _value,
      $Res Function(PMSGetFirstTenProduceSuccess) _then)
      : super(_value, (v) => _then(v as PMSGetFirstTenProduceSuccess));

  @override
  PMSGetFirstTenProduceSuccess get _value =>
      super._value as PMSGetFirstTenProduceSuccess;

  @override
  $Res call({
    Object? produceList = freezed,
  }) {
    return _then(PMSGetFirstTenProduceSuccess(
      produceList: produceList == freezed
          ? _value.produceList
          : produceList // ignore: cast_nullable_to_non_nullable
              as List<Produce>,
    ));
  }
}

/// @nodoc

class _$PMSGetFirstTenProduceSuccess implements PMSGetFirstTenProduceSuccess {
  const _$PMSGetFirstTenProduceSuccess({required this.produceList});

  @override
  final List<Produce> produceList;

  @override
  String toString() {
    return 'ProduceManagerState.getFirstTenProduceSuccess(produceList: $produceList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PMSGetFirstTenProduceSuccess &&
            const DeepCollectionEquality()
                .equals(other.produceList, produceList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(produceList));

  @JsonKey(ignore: true)
  @override
  $PMSGetFirstTenProduceSuccessCopyWith<PMSGetFirstTenProduceSuccess>
      get copyWith => _$PMSGetFirstTenProduceSuccessCopyWithImpl<
          PMSGetFirstTenProduceSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getFirstTenProduceLoading,
    required TResult Function(List<Produce> produceList)
        getFirstTenProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getFirstTenProduceError,
    required TResult Function() createNewProduceLoading,
    required TResult Function(Produce produce) createNewProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        createNewProduceError,
    required TResult Function() getOneWeekPricesLoading,
    required TResult Function(List<Price> priceList) getOneWeekPricesSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getOneWeekPricesError,
  }) {
    return getFirstTenProduceSuccess(produceList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
  }) {
    return getFirstTenProduceSuccess?.call(produceList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
    required TResult orElse(),
  }) {
    if (getFirstTenProduceSuccess != null) {
      return getFirstTenProduceSuccess(produceList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PMSInitial value) initial,
    required TResult Function(PMSGetFirstTenProduceLoading value)
        getFirstTenProduceLoading,
    required TResult Function(PMSGetFirstTenProduceSuccess value)
        getFirstTenProduceSuccess,
    required TResult Function(PMSGetFirstTenProduceError value)
        getFirstTenProduceError,
    required TResult Function(PMSCreateNewProduceLoading value)
        createNewProduceLoading,
    required TResult Function(PMSCreateNewProduceSuccess value)
        createNewProduceSuccess,
    required TResult Function(PMSCreateNewProduceError value)
        createNewProduceError,
    required TResult Function(PMSOneWeekPricesLoading value)
        getOneWeekPricesLoading,
    required TResult Function(PMSOneWeekPricesSuccess value)
        getOneWeekPricesSuccess,
    required TResult Function(PMSOneWeekPricesError value)
        getOneWeekPricesError,
  }) {
    return getFirstTenProduceSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
  }) {
    return getFirstTenProduceSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
    required TResult orElse(),
  }) {
    if (getFirstTenProduceSuccess != null) {
      return getFirstTenProduceSuccess(this);
    }
    return orElse();
  }
}

abstract class PMSGetFirstTenProduceSuccess implements ProduceManagerState {
  const factory PMSGetFirstTenProduceSuccess(
      {required List<Produce> produceList}) = _$PMSGetFirstTenProduceSuccess;

  List<Produce> get produceList;
  @JsonKey(ignore: true)
  $PMSGetFirstTenProduceSuccessCopyWith<PMSGetFirstTenProduceSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PMSGetFirstTenProduceErrorCopyWith<$Res> {
  factory $PMSGetFirstTenProduceErrorCopyWith(PMSGetFirstTenProduceError value,
          $Res Function(PMSGetFirstTenProduceError) then) =
      _$PMSGetFirstTenProduceErrorCopyWithImpl<$Res>;
  $Res call({String code, String message, StackTrace stackTrace});
}

/// @nodoc
class _$PMSGetFirstTenProduceErrorCopyWithImpl<$Res>
    extends _$ProduceManagerStateCopyWithImpl<$Res>
    implements $PMSGetFirstTenProduceErrorCopyWith<$Res> {
  _$PMSGetFirstTenProduceErrorCopyWithImpl(PMSGetFirstTenProduceError _value,
      $Res Function(PMSGetFirstTenProduceError) _then)
      : super(_value, (v) => _then(v as PMSGetFirstTenProduceError));

  @override
  PMSGetFirstTenProduceError get _value =>
      super._value as PMSGetFirstTenProduceError;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(PMSGetFirstTenProduceError(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$PMSGetFirstTenProduceError implements PMSGetFirstTenProduceError {
  const _$PMSGetFirstTenProduceError(
      {required this.code, required this.message, required this.stackTrace});

  @override
  final String code;
  @override
  final String message;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'ProduceManagerState.getFirstTenProduceError(code: $code, message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PMSGetFirstTenProduceError &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message, stackTrace);

  @JsonKey(ignore: true)
  @override
  $PMSGetFirstTenProduceErrorCopyWith<PMSGetFirstTenProduceError>
      get copyWith =>
          _$PMSGetFirstTenProduceErrorCopyWithImpl<PMSGetFirstTenProduceError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getFirstTenProduceLoading,
    required TResult Function(List<Produce> produceList)
        getFirstTenProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getFirstTenProduceError,
    required TResult Function() createNewProduceLoading,
    required TResult Function(Produce produce) createNewProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        createNewProduceError,
    required TResult Function() getOneWeekPricesLoading,
    required TResult Function(List<Price> priceList) getOneWeekPricesSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getOneWeekPricesError,
  }) {
    return getFirstTenProduceError(code, message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
  }) {
    return getFirstTenProduceError?.call(code, message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
    required TResult orElse(),
  }) {
    if (getFirstTenProduceError != null) {
      return getFirstTenProduceError(code, message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PMSInitial value) initial,
    required TResult Function(PMSGetFirstTenProduceLoading value)
        getFirstTenProduceLoading,
    required TResult Function(PMSGetFirstTenProduceSuccess value)
        getFirstTenProduceSuccess,
    required TResult Function(PMSGetFirstTenProduceError value)
        getFirstTenProduceError,
    required TResult Function(PMSCreateNewProduceLoading value)
        createNewProduceLoading,
    required TResult Function(PMSCreateNewProduceSuccess value)
        createNewProduceSuccess,
    required TResult Function(PMSCreateNewProduceError value)
        createNewProduceError,
    required TResult Function(PMSOneWeekPricesLoading value)
        getOneWeekPricesLoading,
    required TResult Function(PMSOneWeekPricesSuccess value)
        getOneWeekPricesSuccess,
    required TResult Function(PMSOneWeekPricesError value)
        getOneWeekPricesError,
  }) {
    return getFirstTenProduceError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
  }) {
    return getFirstTenProduceError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
    required TResult orElse(),
  }) {
    if (getFirstTenProduceError != null) {
      return getFirstTenProduceError(this);
    }
    return orElse();
  }
}

abstract class PMSGetFirstTenProduceError implements ProduceManagerState {
  const factory PMSGetFirstTenProduceError(
      {required String code,
      required String message,
      required StackTrace stackTrace}) = _$PMSGetFirstTenProduceError;

  String get code;
  String get message;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $PMSGetFirstTenProduceErrorCopyWith<PMSGetFirstTenProduceError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PMSCreateNewProduceLoadingCopyWith<$Res> {
  factory $PMSCreateNewProduceLoadingCopyWith(PMSCreateNewProduceLoading value,
          $Res Function(PMSCreateNewProduceLoading) then) =
      _$PMSCreateNewProduceLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PMSCreateNewProduceLoadingCopyWithImpl<$Res>
    extends _$ProduceManagerStateCopyWithImpl<$Res>
    implements $PMSCreateNewProduceLoadingCopyWith<$Res> {
  _$PMSCreateNewProduceLoadingCopyWithImpl(PMSCreateNewProduceLoading _value,
      $Res Function(PMSCreateNewProduceLoading) _then)
      : super(_value, (v) => _then(v as PMSCreateNewProduceLoading));

  @override
  PMSCreateNewProduceLoading get _value =>
      super._value as PMSCreateNewProduceLoading;
}

/// @nodoc

class _$PMSCreateNewProduceLoading implements PMSCreateNewProduceLoading {
  const _$PMSCreateNewProduceLoading();

  @override
  String toString() {
    return 'ProduceManagerState.createNewProduceLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PMSCreateNewProduceLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getFirstTenProduceLoading,
    required TResult Function(List<Produce> produceList)
        getFirstTenProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getFirstTenProduceError,
    required TResult Function() createNewProduceLoading,
    required TResult Function(Produce produce) createNewProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        createNewProduceError,
    required TResult Function() getOneWeekPricesLoading,
    required TResult Function(List<Price> priceList) getOneWeekPricesSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getOneWeekPricesError,
  }) {
    return createNewProduceLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
  }) {
    return createNewProduceLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
    required TResult orElse(),
  }) {
    if (createNewProduceLoading != null) {
      return createNewProduceLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PMSInitial value) initial,
    required TResult Function(PMSGetFirstTenProduceLoading value)
        getFirstTenProduceLoading,
    required TResult Function(PMSGetFirstTenProduceSuccess value)
        getFirstTenProduceSuccess,
    required TResult Function(PMSGetFirstTenProduceError value)
        getFirstTenProduceError,
    required TResult Function(PMSCreateNewProduceLoading value)
        createNewProduceLoading,
    required TResult Function(PMSCreateNewProduceSuccess value)
        createNewProduceSuccess,
    required TResult Function(PMSCreateNewProduceError value)
        createNewProduceError,
    required TResult Function(PMSOneWeekPricesLoading value)
        getOneWeekPricesLoading,
    required TResult Function(PMSOneWeekPricesSuccess value)
        getOneWeekPricesSuccess,
    required TResult Function(PMSOneWeekPricesError value)
        getOneWeekPricesError,
  }) {
    return createNewProduceLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
  }) {
    return createNewProduceLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
    required TResult orElse(),
  }) {
    if (createNewProduceLoading != null) {
      return createNewProduceLoading(this);
    }
    return orElse();
  }
}

abstract class PMSCreateNewProduceLoading implements ProduceManagerState {
  const factory PMSCreateNewProduceLoading() = _$PMSCreateNewProduceLoading;
}

/// @nodoc
abstract class $PMSCreateNewProduceSuccessCopyWith<$Res> {
  factory $PMSCreateNewProduceSuccessCopyWith(PMSCreateNewProduceSuccess value,
          $Res Function(PMSCreateNewProduceSuccess) then) =
      _$PMSCreateNewProduceSuccessCopyWithImpl<$Res>;
  $Res call({Produce produce});

  $ProduceCopyWith<$Res> get produce;
}

/// @nodoc
class _$PMSCreateNewProduceSuccessCopyWithImpl<$Res>
    extends _$ProduceManagerStateCopyWithImpl<$Res>
    implements $PMSCreateNewProduceSuccessCopyWith<$Res> {
  _$PMSCreateNewProduceSuccessCopyWithImpl(PMSCreateNewProduceSuccess _value,
      $Res Function(PMSCreateNewProduceSuccess) _then)
      : super(_value, (v) => _then(v as PMSCreateNewProduceSuccess));

  @override
  PMSCreateNewProduceSuccess get _value =>
      super._value as PMSCreateNewProduceSuccess;

  @override
  $Res call({
    Object? produce = freezed,
  }) {
    return _then(PMSCreateNewProduceSuccess(
      produce: produce == freezed
          ? _value.produce
          : produce // ignore: cast_nullable_to_non_nullable
              as Produce,
    ));
  }

  @override
  $ProduceCopyWith<$Res> get produce {
    return $ProduceCopyWith<$Res>(_value.produce, (value) {
      return _then(_value.copyWith(produce: value));
    });
  }
}

/// @nodoc

class _$PMSCreateNewProduceSuccess implements PMSCreateNewProduceSuccess {
  const _$PMSCreateNewProduceSuccess({required this.produce});

  @override
  final Produce produce;

  @override
  String toString() {
    return 'ProduceManagerState.createNewProduceSuccess(produce: $produce)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PMSCreateNewProduceSuccess &&
            (identical(other.produce, produce) || other.produce == produce));
  }

  @override
  int get hashCode => Object.hash(runtimeType, produce);

  @JsonKey(ignore: true)
  @override
  $PMSCreateNewProduceSuccessCopyWith<PMSCreateNewProduceSuccess>
      get copyWith =>
          _$PMSCreateNewProduceSuccessCopyWithImpl<PMSCreateNewProduceSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getFirstTenProduceLoading,
    required TResult Function(List<Produce> produceList)
        getFirstTenProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getFirstTenProduceError,
    required TResult Function() createNewProduceLoading,
    required TResult Function(Produce produce) createNewProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        createNewProduceError,
    required TResult Function() getOneWeekPricesLoading,
    required TResult Function(List<Price> priceList) getOneWeekPricesSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getOneWeekPricesError,
  }) {
    return createNewProduceSuccess(produce);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
  }) {
    return createNewProduceSuccess?.call(produce);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
    required TResult orElse(),
  }) {
    if (createNewProduceSuccess != null) {
      return createNewProduceSuccess(produce);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PMSInitial value) initial,
    required TResult Function(PMSGetFirstTenProduceLoading value)
        getFirstTenProduceLoading,
    required TResult Function(PMSGetFirstTenProduceSuccess value)
        getFirstTenProduceSuccess,
    required TResult Function(PMSGetFirstTenProduceError value)
        getFirstTenProduceError,
    required TResult Function(PMSCreateNewProduceLoading value)
        createNewProduceLoading,
    required TResult Function(PMSCreateNewProduceSuccess value)
        createNewProduceSuccess,
    required TResult Function(PMSCreateNewProduceError value)
        createNewProduceError,
    required TResult Function(PMSOneWeekPricesLoading value)
        getOneWeekPricesLoading,
    required TResult Function(PMSOneWeekPricesSuccess value)
        getOneWeekPricesSuccess,
    required TResult Function(PMSOneWeekPricesError value)
        getOneWeekPricesError,
  }) {
    return createNewProduceSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
  }) {
    return createNewProduceSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
    required TResult orElse(),
  }) {
    if (createNewProduceSuccess != null) {
      return createNewProduceSuccess(this);
    }
    return orElse();
  }
}

abstract class PMSCreateNewProduceSuccess implements ProduceManagerState {
  const factory PMSCreateNewProduceSuccess({required Produce produce}) =
      _$PMSCreateNewProduceSuccess;

  Produce get produce;
  @JsonKey(ignore: true)
  $PMSCreateNewProduceSuccessCopyWith<PMSCreateNewProduceSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PMSCreateNewProduceErrorCopyWith<$Res> {
  factory $PMSCreateNewProduceErrorCopyWith(PMSCreateNewProduceError value,
          $Res Function(PMSCreateNewProduceError) then) =
      _$PMSCreateNewProduceErrorCopyWithImpl<$Res>;
  $Res call({String code, String message, StackTrace stackTrace});
}

/// @nodoc
class _$PMSCreateNewProduceErrorCopyWithImpl<$Res>
    extends _$ProduceManagerStateCopyWithImpl<$Res>
    implements $PMSCreateNewProduceErrorCopyWith<$Res> {
  _$PMSCreateNewProduceErrorCopyWithImpl(PMSCreateNewProduceError _value,
      $Res Function(PMSCreateNewProduceError) _then)
      : super(_value, (v) => _then(v as PMSCreateNewProduceError));

  @override
  PMSCreateNewProduceError get _value =>
      super._value as PMSCreateNewProduceError;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(PMSCreateNewProduceError(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$PMSCreateNewProduceError implements PMSCreateNewProduceError {
  const _$PMSCreateNewProduceError(
      {required this.code, required this.message, required this.stackTrace});

  @override
  final String code;
  @override
  final String message;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'ProduceManagerState.createNewProduceError(code: $code, message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PMSCreateNewProduceError &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message, stackTrace);

  @JsonKey(ignore: true)
  @override
  $PMSCreateNewProduceErrorCopyWith<PMSCreateNewProduceError> get copyWith =>
      _$PMSCreateNewProduceErrorCopyWithImpl<PMSCreateNewProduceError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getFirstTenProduceLoading,
    required TResult Function(List<Produce> produceList)
        getFirstTenProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getFirstTenProduceError,
    required TResult Function() createNewProduceLoading,
    required TResult Function(Produce produce) createNewProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        createNewProduceError,
    required TResult Function() getOneWeekPricesLoading,
    required TResult Function(List<Price> priceList) getOneWeekPricesSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getOneWeekPricesError,
  }) {
    return createNewProduceError(code, message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
  }) {
    return createNewProduceError?.call(code, message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
    required TResult orElse(),
  }) {
    if (createNewProduceError != null) {
      return createNewProduceError(code, message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PMSInitial value) initial,
    required TResult Function(PMSGetFirstTenProduceLoading value)
        getFirstTenProduceLoading,
    required TResult Function(PMSGetFirstTenProduceSuccess value)
        getFirstTenProduceSuccess,
    required TResult Function(PMSGetFirstTenProduceError value)
        getFirstTenProduceError,
    required TResult Function(PMSCreateNewProduceLoading value)
        createNewProduceLoading,
    required TResult Function(PMSCreateNewProduceSuccess value)
        createNewProduceSuccess,
    required TResult Function(PMSCreateNewProduceError value)
        createNewProduceError,
    required TResult Function(PMSOneWeekPricesLoading value)
        getOneWeekPricesLoading,
    required TResult Function(PMSOneWeekPricesSuccess value)
        getOneWeekPricesSuccess,
    required TResult Function(PMSOneWeekPricesError value)
        getOneWeekPricesError,
  }) {
    return createNewProduceError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
  }) {
    return createNewProduceError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
    required TResult orElse(),
  }) {
    if (createNewProduceError != null) {
      return createNewProduceError(this);
    }
    return orElse();
  }
}

abstract class PMSCreateNewProduceError implements ProduceManagerState {
  const factory PMSCreateNewProduceError(
      {required String code,
      required String message,
      required StackTrace stackTrace}) = _$PMSCreateNewProduceError;

  String get code;
  String get message;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $PMSCreateNewProduceErrorCopyWith<PMSCreateNewProduceError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PMSOneWeekPricesLoadingCopyWith<$Res> {
  factory $PMSOneWeekPricesLoadingCopyWith(PMSOneWeekPricesLoading value,
          $Res Function(PMSOneWeekPricesLoading) then) =
      _$PMSOneWeekPricesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PMSOneWeekPricesLoadingCopyWithImpl<$Res>
    extends _$ProduceManagerStateCopyWithImpl<$Res>
    implements $PMSOneWeekPricesLoadingCopyWith<$Res> {
  _$PMSOneWeekPricesLoadingCopyWithImpl(PMSOneWeekPricesLoading _value,
      $Res Function(PMSOneWeekPricesLoading) _then)
      : super(_value, (v) => _then(v as PMSOneWeekPricesLoading));

  @override
  PMSOneWeekPricesLoading get _value => super._value as PMSOneWeekPricesLoading;
}

/// @nodoc

class _$PMSOneWeekPricesLoading implements PMSOneWeekPricesLoading {
  const _$PMSOneWeekPricesLoading();

  @override
  String toString() {
    return 'ProduceManagerState.getOneWeekPricesLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PMSOneWeekPricesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getFirstTenProduceLoading,
    required TResult Function(List<Produce> produceList)
        getFirstTenProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getFirstTenProduceError,
    required TResult Function() createNewProduceLoading,
    required TResult Function(Produce produce) createNewProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        createNewProduceError,
    required TResult Function() getOneWeekPricesLoading,
    required TResult Function(List<Price> priceList) getOneWeekPricesSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getOneWeekPricesError,
  }) {
    return getOneWeekPricesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
  }) {
    return getOneWeekPricesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
    required TResult orElse(),
  }) {
    if (getOneWeekPricesLoading != null) {
      return getOneWeekPricesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PMSInitial value) initial,
    required TResult Function(PMSGetFirstTenProduceLoading value)
        getFirstTenProduceLoading,
    required TResult Function(PMSGetFirstTenProduceSuccess value)
        getFirstTenProduceSuccess,
    required TResult Function(PMSGetFirstTenProduceError value)
        getFirstTenProduceError,
    required TResult Function(PMSCreateNewProduceLoading value)
        createNewProduceLoading,
    required TResult Function(PMSCreateNewProduceSuccess value)
        createNewProduceSuccess,
    required TResult Function(PMSCreateNewProduceError value)
        createNewProduceError,
    required TResult Function(PMSOneWeekPricesLoading value)
        getOneWeekPricesLoading,
    required TResult Function(PMSOneWeekPricesSuccess value)
        getOneWeekPricesSuccess,
    required TResult Function(PMSOneWeekPricesError value)
        getOneWeekPricesError,
  }) {
    return getOneWeekPricesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
  }) {
    return getOneWeekPricesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
    required TResult orElse(),
  }) {
    if (getOneWeekPricesLoading != null) {
      return getOneWeekPricesLoading(this);
    }
    return orElse();
  }
}

abstract class PMSOneWeekPricesLoading implements ProduceManagerState {
  const factory PMSOneWeekPricesLoading() = _$PMSOneWeekPricesLoading;
}

/// @nodoc
abstract class $PMSOneWeekPricesSuccessCopyWith<$Res> {
  factory $PMSOneWeekPricesSuccessCopyWith(PMSOneWeekPricesSuccess value,
          $Res Function(PMSOneWeekPricesSuccess) then) =
      _$PMSOneWeekPricesSuccessCopyWithImpl<$Res>;
  $Res call({List<Price> priceList});
}

/// @nodoc
class _$PMSOneWeekPricesSuccessCopyWithImpl<$Res>
    extends _$ProduceManagerStateCopyWithImpl<$Res>
    implements $PMSOneWeekPricesSuccessCopyWith<$Res> {
  _$PMSOneWeekPricesSuccessCopyWithImpl(PMSOneWeekPricesSuccess _value,
      $Res Function(PMSOneWeekPricesSuccess) _then)
      : super(_value, (v) => _then(v as PMSOneWeekPricesSuccess));

  @override
  PMSOneWeekPricesSuccess get _value => super._value as PMSOneWeekPricesSuccess;

  @override
  $Res call({
    Object? priceList = freezed,
  }) {
    return _then(PMSOneWeekPricesSuccess(
      priceList: priceList == freezed
          ? _value.priceList
          : priceList // ignore: cast_nullable_to_non_nullable
              as List<Price>,
    ));
  }
}

/// @nodoc

class _$PMSOneWeekPricesSuccess implements PMSOneWeekPricesSuccess {
  const _$PMSOneWeekPricesSuccess({required this.priceList});

  @override
  final List<Price> priceList;

  @override
  String toString() {
    return 'ProduceManagerState.getOneWeekPricesSuccess(priceList: $priceList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PMSOneWeekPricesSuccess &&
            const DeepCollectionEquality().equals(other.priceList, priceList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(priceList));

  @JsonKey(ignore: true)
  @override
  $PMSOneWeekPricesSuccessCopyWith<PMSOneWeekPricesSuccess> get copyWith =>
      _$PMSOneWeekPricesSuccessCopyWithImpl<PMSOneWeekPricesSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getFirstTenProduceLoading,
    required TResult Function(List<Produce> produceList)
        getFirstTenProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getFirstTenProduceError,
    required TResult Function() createNewProduceLoading,
    required TResult Function(Produce produce) createNewProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        createNewProduceError,
    required TResult Function() getOneWeekPricesLoading,
    required TResult Function(List<Price> priceList) getOneWeekPricesSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getOneWeekPricesError,
  }) {
    return getOneWeekPricesSuccess(priceList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
  }) {
    return getOneWeekPricesSuccess?.call(priceList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
    required TResult orElse(),
  }) {
    if (getOneWeekPricesSuccess != null) {
      return getOneWeekPricesSuccess(priceList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PMSInitial value) initial,
    required TResult Function(PMSGetFirstTenProduceLoading value)
        getFirstTenProduceLoading,
    required TResult Function(PMSGetFirstTenProduceSuccess value)
        getFirstTenProduceSuccess,
    required TResult Function(PMSGetFirstTenProduceError value)
        getFirstTenProduceError,
    required TResult Function(PMSCreateNewProduceLoading value)
        createNewProduceLoading,
    required TResult Function(PMSCreateNewProduceSuccess value)
        createNewProduceSuccess,
    required TResult Function(PMSCreateNewProduceError value)
        createNewProduceError,
    required TResult Function(PMSOneWeekPricesLoading value)
        getOneWeekPricesLoading,
    required TResult Function(PMSOneWeekPricesSuccess value)
        getOneWeekPricesSuccess,
    required TResult Function(PMSOneWeekPricesError value)
        getOneWeekPricesError,
  }) {
    return getOneWeekPricesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
  }) {
    return getOneWeekPricesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
    required TResult orElse(),
  }) {
    if (getOneWeekPricesSuccess != null) {
      return getOneWeekPricesSuccess(this);
    }
    return orElse();
  }
}

abstract class PMSOneWeekPricesSuccess implements ProduceManagerState {
  const factory PMSOneWeekPricesSuccess({required List<Price> priceList}) =
      _$PMSOneWeekPricesSuccess;

  List<Price> get priceList;
  @JsonKey(ignore: true)
  $PMSOneWeekPricesSuccessCopyWith<PMSOneWeekPricesSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PMSOneWeekPricesErrorCopyWith<$Res> {
  factory $PMSOneWeekPricesErrorCopyWith(PMSOneWeekPricesError value,
          $Res Function(PMSOneWeekPricesError) then) =
      _$PMSOneWeekPricesErrorCopyWithImpl<$Res>;
  $Res call({String code, String message, StackTrace stackTrace});
}

/// @nodoc
class _$PMSOneWeekPricesErrorCopyWithImpl<$Res>
    extends _$ProduceManagerStateCopyWithImpl<$Res>
    implements $PMSOneWeekPricesErrorCopyWith<$Res> {
  _$PMSOneWeekPricesErrorCopyWithImpl(
      PMSOneWeekPricesError _value, $Res Function(PMSOneWeekPricesError) _then)
      : super(_value, (v) => _then(v as PMSOneWeekPricesError));

  @override
  PMSOneWeekPricesError get _value => super._value as PMSOneWeekPricesError;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(PMSOneWeekPricesError(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$PMSOneWeekPricesError implements PMSOneWeekPricesError {
  const _$PMSOneWeekPricesError(
      {required this.code, required this.message, required this.stackTrace});

  @override
  final String code;
  @override
  final String message;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'ProduceManagerState.getOneWeekPricesError(code: $code, message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PMSOneWeekPricesError &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message, stackTrace);

  @JsonKey(ignore: true)
  @override
  $PMSOneWeekPricesErrorCopyWith<PMSOneWeekPricesError> get copyWith =>
      _$PMSOneWeekPricesErrorCopyWithImpl<PMSOneWeekPricesError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getFirstTenProduceLoading,
    required TResult Function(List<Produce> produceList)
        getFirstTenProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getFirstTenProduceError,
    required TResult Function() createNewProduceLoading,
    required TResult Function(Produce produce) createNewProduceSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        createNewProduceError,
    required TResult Function() getOneWeekPricesLoading,
    required TResult Function(List<Price> priceList) getOneWeekPricesSuccess,
    required TResult Function(
            String code, String message, StackTrace stackTrace)
        getOneWeekPricesError,
  }) {
    return getOneWeekPricesError(code, message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
  }) {
    return getOneWeekPricesError?.call(code, message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFirstTenProduceLoading,
    TResult Function(List<Produce> produceList)? getFirstTenProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getFirstTenProduceError,
    TResult Function()? createNewProduceLoading,
    TResult Function(Produce produce)? createNewProduceSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        createNewProduceError,
    TResult Function()? getOneWeekPricesLoading,
    TResult Function(List<Price> priceList)? getOneWeekPricesSuccess,
    TResult Function(String code, String message, StackTrace stackTrace)?
        getOneWeekPricesError,
    required TResult orElse(),
  }) {
    if (getOneWeekPricesError != null) {
      return getOneWeekPricesError(code, message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PMSInitial value) initial,
    required TResult Function(PMSGetFirstTenProduceLoading value)
        getFirstTenProduceLoading,
    required TResult Function(PMSGetFirstTenProduceSuccess value)
        getFirstTenProduceSuccess,
    required TResult Function(PMSGetFirstTenProduceError value)
        getFirstTenProduceError,
    required TResult Function(PMSCreateNewProduceLoading value)
        createNewProduceLoading,
    required TResult Function(PMSCreateNewProduceSuccess value)
        createNewProduceSuccess,
    required TResult Function(PMSCreateNewProduceError value)
        createNewProduceError,
    required TResult Function(PMSOneWeekPricesLoading value)
        getOneWeekPricesLoading,
    required TResult Function(PMSOneWeekPricesSuccess value)
        getOneWeekPricesSuccess,
    required TResult Function(PMSOneWeekPricesError value)
        getOneWeekPricesError,
  }) {
    return getOneWeekPricesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
  }) {
    return getOneWeekPricesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PMSInitial value)? initial,
    TResult Function(PMSGetFirstTenProduceLoading value)?
        getFirstTenProduceLoading,
    TResult Function(PMSGetFirstTenProduceSuccess value)?
        getFirstTenProduceSuccess,
    TResult Function(PMSGetFirstTenProduceError value)? getFirstTenProduceError,
    TResult Function(PMSCreateNewProduceLoading value)? createNewProduceLoading,
    TResult Function(PMSCreateNewProduceSuccess value)? createNewProduceSuccess,
    TResult Function(PMSCreateNewProduceError value)? createNewProduceError,
    TResult Function(PMSOneWeekPricesLoading value)? getOneWeekPricesLoading,
    TResult Function(PMSOneWeekPricesSuccess value)? getOneWeekPricesSuccess,
    TResult Function(PMSOneWeekPricesError value)? getOneWeekPricesError,
    required TResult orElse(),
  }) {
    if (getOneWeekPricesError != null) {
      return getOneWeekPricesError(this);
    }
    return orElse();
  }
}

abstract class PMSOneWeekPricesError implements ProduceManagerState {
  const factory PMSOneWeekPricesError(
      {required String code,
      required String message,
      required StackTrace stackTrace}) = _$PMSOneWeekPricesError;

  String get code;
  String get message;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $PMSOneWeekPricesErrorCopyWith<PMSOneWeekPricesError> get copyWith =>
      throw _privateConstructorUsedError;
}
