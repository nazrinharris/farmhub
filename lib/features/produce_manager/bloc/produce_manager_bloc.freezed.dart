// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'produce_manager_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProduceManagerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() execGetFirstTenProduce,
    required TResult Function(String produceName, num currentProducePrice)
        execCreateProduce,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? execGetFirstTenProduce,
    TResult Function(String produceName, num currentProducePrice)?
        execCreateProduce,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? execGetFirstTenProduce,
    TResult Function(String produceName, num currentProducePrice)?
        execCreateProduce,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PMEExecGetFirstTenProduce value)
        execGetFirstTenProduce,
    required TResult Function(PMEExecCreateProduce value) execCreateProduce,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PMEExecGetFirstTenProduce value)? execGetFirstTenProduce,
    TResult Function(PMEExecCreateProduce value)? execCreateProduce,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PMEExecGetFirstTenProduce value)? execGetFirstTenProduce,
    TResult Function(PMEExecCreateProduce value)? execCreateProduce,
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
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ProduceManagerEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
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
        (other.runtimeType == runtimeType && other is _$_Started);
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
    required TResult Function(PMEExecGetFirstTenProduce value)
        execGetFirstTenProduce,
    required TResult Function(PMEExecCreateProduce value) execCreateProduce,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PMEExecGetFirstTenProduce value)? execGetFirstTenProduce,
    TResult Function(PMEExecCreateProduce value)? execCreateProduce,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PMEExecGetFirstTenProduce value)? execGetFirstTenProduce,
    TResult Function(PMEExecCreateProduce value)? execCreateProduce,
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
abstract class _$$PMEExecGetFirstTenProduceCopyWith<$Res> {
  factory _$$PMEExecGetFirstTenProduceCopyWith(
          _$PMEExecGetFirstTenProduce value,
          $Res Function(_$PMEExecGetFirstTenProduce) then) =
      __$$PMEExecGetFirstTenProduceCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PMEExecGetFirstTenProduceCopyWithImpl<$Res>
    extends _$ProduceManagerEventCopyWithImpl<$Res>
    implements _$$PMEExecGetFirstTenProduceCopyWith<$Res> {
  __$$PMEExecGetFirstTenProduceCopyWithImpl(_$PMEExecGetFirstTenProduce _value,
      $Res Function(_$PMEExecGetFirstTenProduce) _then)
      : super(_value, (v) => _then(v as _$PMEExecGetFirstTenProduce));

  @override
  _$PMEExecGetFirstTenProduce get _value =>
      super._value as _$PMEExecGetFirstTenProduce;
}

/// @nodoc

class _$PMEExecGetFirstTenProduce implements PMEExecGetFirstTenProduce {
  const _$PMEExecGetFirstTenProduce();

  @override
  String toString() {
    return 'ProduceManagerEvent.execGetFirstTenProduce()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PMEExecGetFirstTenProduce);
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
    required TResult Function(PMEExecGetFirstTenProduce value)
        execGetFirstTenProduce,
    required TResult Function(PMEExecCreateProduce value) execCreateProduce,
  }) {
    return execGetFirstTenProduce(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PMEExecGetFirstTenProduce value)? execGetFirstTenProduce,
    TResult Function(PMEExecCreateProduce value)? execCreateProduce,
  }) {
    return execGetFirstTenProduce?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PMEExecGetFirstTenProduce value)? execGetFirstTenProduce,
    TResult Function(PMEExecCreateProduce value)? execCreateProduce,
    required TResult orElse(),
  }) {
    if (execGetFirstTenProduce != null) {
      return execGetFirstTenProduce(this);
    }
    return orElse();
  }
}

abstract class PMEExecGetFirstTenProduce implements ProduceManagerEvent {
  const factory PMEExecGetFirstTenProduce() = _$PMEExecGetFirstTenProduce;
}

/// @nodoc
abstract class _$$PMEExecCreateProduceCopyWith<$Res> {
  factory _$$PMEExecCreateProduceCopyWith(_$PMEExecCreateProduce value,
          $Res Function(_$PMEExecCreateProduce) then) =
      __$$PMEExecCreateProduceCopyWithImpl<$Res>;
  $Res call({String produceName, num currentProducePrice});
}

/// @nodoc
class __$$PMEExecCreateProduceCopyWithImpl<$Res>
    extends _$ProduceManagerEventCopyWithImpl<$Res>
    implements _$$PMEExecCreateProduceCopyWith<$Res> {
  __$$PMEExecCreateProduceCopyWithImpl(_$PMEExecCreateProduce _value,
      $Res Function(_$PMEExecCreateProduce) _then)
      : super(_value, (v) => _then(v as _$PMEExecCreateProduce));

  @override
  _$PMEExecCreateProduce get _value => super._value as _$PMEExecCreateProduce;

  @override
  $Res call({
    Object? produceName = freezed,
    Object? currentProducePrice = freezed,
  }) {
    return _then(_$PMEExecCreateProduce(
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

class _$PMEExecCreateProduce implements PMEExecCreateProduce {
  const _$PMEExecCreateProduce(
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
            other is _$PMEExecCreateProduce &&
            const DeepCollectionEquality()
                .equals(other.produceName, produceName) &&
            const DeepCollectionEquality()
                .equals(other.currentProducePrice, currentProducePrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(produceName),
      const DeepCollectionEquality().hash(currentProducePrice));

  @JsonKey(ignore: true)
  @override
  _$$PMEExecCreateProduceCopyWith<_$PMEExecCreateProduce> get copyWith =>
      __$$PMEExecCreateProduceCopyWithImpl<_$PMEExecCreateProduce>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() execGetFirstTenProduce,
    required TResult Function(String produceName, num currentProducePrice)
        execCreateProduce,
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
    required TResult Function(PMEExecGetFirstTenProduce value)
        execGetFirstTenProduce,
    required TResult Function(PMEExecCreateProduce value) execCreateProduce,
  }) {
    return execCreateProduce(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PMEExecGetFirstTenProduce value)? execGetFirstTenProduce,
    TResult Function(PMEExecCreateProduce value)? execCreateProduce,
  }) {
    return execCreateProduce?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PMEExecGetFirstTenProduce value)? execGetFirstTenProduce,
    TResult Function(PMEExecCreateProduce value)? execCreateProduce,
    required TResult orElse(),
  }) {
    if (execCreateProduce != null) {
      return execCreateProduce(this);
    }
    return orElse();
  }
}

abstract class PMEExecCreateProduce implements ProduceManagerEvent {
  const factory PMEExecCreateProduce(
      {required final String produceName,
      required final num currentProducePrice}) = _$PMEExecCreateProduce;

  String get produceName;
  num get currentProducePrice;
  @JsonKey(ignore: true)
  _$$PMEExecCreateProduceCopyWith<_$PMEExecCreateProduce> get copyWith =>
      throw _privateConstructorUsedError;
}

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
    required TResult Function(Failure failure) createNewProduceError,
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
    TResult Function(Failure failure)? createNewProduceError,
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
    TResult Function(Failure failure)? createNewProduceError,
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
abstract class _$$PMSInitialCopyWith<$Res> {
  factory _$$PMSInitialCopyWith(
          _$PMSInitial value, $Res Function(_$PMSInitial) then) =
      __$$PMSInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PMSInitialCopyWithImpl<$Res>
    extends _$ProduceManagerStateCopyWithImpl<$Res>
    implements _$$PMSInitialCopyWith<$Res> {
  __$$PMSInitialCopyWithImpl(
      _$PMSInitial _value, $Res Function(_$PMSInitial) _then)
      : super(_value, (v) => _then(v as _$PMSInitial));

  @override
  _$PMSInitial get _value => super._value as _$PMSInitial;
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
        (other.runtimeType == runtimeType && other is _$PMSInitial);
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
    required TResult Function(Failure failure) createNewProduceError,
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
    TResult Function(Failure failure)? createNewProduceError,
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
    TResult Function(Failure failure)? createNewProduceError,
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
abstract class _$$PMSGetFirstTenProduceLoadingCopyWith<$Res> {
  factory _$$PMSGetFirstTenProduceLoadingCopyWith(
          _$PMSGetFirstTenProduceLoading value,
          $Res Function(_$PMSGetFirstTenProduceLoading) then) =
      __$$PMSGetFirstTenProduceLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PMSGetFirstTenProduceLoadingCopyWithImpl<$Res>
    extends _$ProduceManagerStateCopyWithImpl<$Res>
    implements _$$PMSGetFirstTenProduceLoadingCopyWith<$Res> {
  __$$PMSGetFirstTenProduceLoadingCopyWithImpl(
      _$PMSGetFirstTenProduceLoading _value,
      $Res Function(_$PMSGetFirstTenProduceLoading) _then)
      : super(_value, (v) => _then(v as _$PMSGetFirstTenProduceLoading));

  @override
  _$PMSGetFirstTenProduceLoading get _value =>
      super._value as _$PMSGetFirstTenProduceLoading;
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
            other is _$PMSGetFirstTenProduceLoading);
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
    required TResult Function(Failure failure) createNewProduceError,
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
    TResult Function(Failure failure)? createNewProduceError,
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
    TResult Function(Failure failure)? createNewProduceError,
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
abstract class _$$PMSGetFirstTenProduceSuccessCopyWith<$Res> {
  factory _$$PMSGetFirstTenProduceSuccessCopyWith(
          _$PMSGetFirstTenProduceSuccess value,
          $Res Function(_$PMSGetFirstTenProduceSuccess) then) =
      __$$PMSGetFirstTenProduceSuccessCopyWithImpl<$Res>;
  $Res call({List<Produce> produceList});
}

/// @nodoc
class __$$PMSGetFirstTenProduceSuccessCopyWithImpl<$Res>
    extends _$ProduceManagerStateCopyWithImpl<$Res>
    implements _$$PMSGetFirstTenProduceSuccessCopyWith<$Res> {
  __$$PMSGetFirstTenProduceSuccessCopyWithImpl(
      _$PMSGetFirstTenProduceSuccess _value,
      $Res Function(_$PMSGetFirstTenProduceSuccess) _then)
      : super(_value, (v) => _then(v as _$PMSGetFirstTenProduceSuccess));

  @override
  _$PMSGetFirstTenProduceSuccess get _value =>
      super._value as _$PMSGetFirstTenProduceSuccess;

  @override
  $Res call({
    Object? produceList = freezed,
  }) {
    return _then(_$PMSGetFirstTenProduceSuccess(
      produceList: produceList == freezed
          ? _value._produceList
          : produceList // ignore: cast_nullable_to_non_nullable
              as List<Produce>,
    ));
  }
}

/// @nodoc

class _$PMSGetFirstTenProduceSuccess implements PMSGetFirstTenProduceSuccess {
  const _$PMSGetFirstTenProduceSuccess(
      {required final List<Produce> produceList})
      : _produceList = produceList;

  final List<Produce> _produceList;
  @override
  List<Produce> get produceList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_produceList);
  }

  @override
  String toString() {
    return 'ProduceManagerState.getFirstTenProduceSuccess(produceList: $produceList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PMSGetFirstTenProduceSuccess &&
            const DeepCollectionEquality()
                .equals(other._produceList, _produceList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_produceList));

  @JsonKey(ignore: true)
  @override
  _$$PMSGetFirstTenProduceSuccessCopyWith<_$PMSGetFirstTenProduceSuccess>
      get copyWith => __$$PMSGetFirstTenProduceSuccessCopyWithImpl<
          _$PMSGetFirstTenProduceSuccess>(this, _$identity);

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
    required TResult Function(Failure failure) createNewProduceError,
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
    TResult Function(Failure failure)? createNewProduceError,
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
    TResult Function(Failure failure)? createNewProduceError,
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
          {required final List<Produce> produceList}) =
      _$PMSGetFirstTenProduceSuccess;

  List<Produce> get produceList;
  @JsonKey(ignore: true)
  _$$PMSGetFirstTenProduceSuccessCopyWith<_$PMSGetFirstTenProduceSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PMSGetFirstTenProduceErrorCopyWith<$Res> {
  factory _$$PMSGetFirstTenProduceErrorCopyWith(
          _$PMSGetFirstTenProduceError value,
          $Res Function(_$PMSGetFirstTenProduceError) then) =
      __$$PMSGetFirstTenProduceErrorCopyWithImpl<$Res>;
  $Res call({String code, String message, StackTrace stackTrace});
}

/// @nodoc
class __$$PMSGetFirstTenProduceErrorCopyWithImpl<$Res>
    extends _$ProduceManagerStateCopyWithImpl<$Res>
    implements _$$PMSGetFirstTenProduceErrorCopyWith<$Res> {
  __$$PMSGetFirstTenProduceErrorCopyWithImpl(
      _$PMSGetFirstTenProduceError _value,
      $Res Function(_$PMSGetFirstTenProduceError) _then)
      : super(_value, (v) => _then(v as _$PMSGetFirstTenProduceError));

  @override
  _$PMSGetFirstTenProduceError get _value =>
      super._value as _$PMSGetFirstTenProduceError;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$PMSGetFirstTenProduceError(
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
            other is _$PMSGetFirstTenProduceError &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$PMSGetFirstTenProduceErrorCopyWith<_$PMSGetFirstTenProduceError>
      get copyWith => __$$PMSGetFirstTenProduceErrorCopyWithImpl<
          _$PMSGetFirstTenProduceError>(this, _$identity);

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
    required TResult Function(Failure failure) createNewProduceError,
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
    TResult Function(Failure failure)? createNewProduceError,
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
    TResult Function(Failure failure)? createNewProduceError,
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
      {required final String code,
      required final String message,
      required final StackTrace stackTrace}) = _$PMSGetFirstTenProduceError;

  String get code;
  String get message;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$PMSGetFirstTenProduceErrorCopyWith<_$PMSGetFirstTenProduceError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PMSCreateNewProduceLoadingCopyWith<$Res> {
  factory _$$PMSCreateNewProduceLoadingCopyWith(
          _$PMSCreateNewProduceLoading value,
          $Res Function(_$PMSCreateNewProduceLoading) then) =
      __$$PMSCreateNewProduceLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PMSCreateNewProduceLoadingCopyWithImpl<$Res>
    extends _$ProduceManagerStateCopyWithImpl<$Res>
    implements _$$PMSCreateNewProduceLoadingCopyWith<$Res> {
  __$$PMSCreateNewProduceLoadingCopyWithImpl(
      _$PMSCreateNewProduceLoading _value,
      $Res Function(_$PMSCreateNewProduceLoading) _then)
      : super(_value, (v) => _then(v as _$PMSCreateNewProduceLoading));

  @override
  _$PMSCreateNewProduceLoading get _value =>
      super._value as _$PMSCreateNewProduceLoading;
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
            other is _$PMSCreateNewProduceLoading);
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
    required TResult Function(Failure failure) createNewProduceError,
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
    TResult Function(Failure failure)? createNewProduceError,
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
    TResult Function(Failure failure)? createNewProduceError,
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
abstract class _$$PMSCreateNewProduceSuccessCopyWith<$Res> {
  factory _$$PMSCreateNewProduceSuccessCopyWith(
          _$PMSCreateNewProduceSuccess value,
          $Res Function(_$PMSCreateNewProduceSuccess) then) =
      __$$PMSCreateNewProduceSuccessCopyWithImpl<$Res>;
  $Res call({Produce produce});

  $ProduceCopyWith<$Res> get produce;
}

/// @nodoc
class __$$PMSCreateNewProduceSuccessCopyWithImpl<$Res>
    extends _$ProduceManagerStateCopyWithImpl<$Res>
    implements _$$PMSCreateNewProduceSuccessCopyWith<$Res> {
  __$$PMSCreateNewProduceSuccessCopyWithImpl(
      _$PMSCreateNewProduceSuccess _value,
      $Res Function(_$PMSCreateNewProduceSuccess) _then)
      : super(_value, (v) => _then(v as _$PMSCreateNewProduceSuccess));

  @override
  _$PMSCreateNewProduceSuccess get _value =>
      super._value as _$PMSCreateNewProduceSuccess;

  @override
  $Res call({
    Object? produce = freezed,
  }) {
    return _then(_$PMSCreateNewProduceSuccess(
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
            other is _$PMSCreateNewProduceSuccess &&
            const DeepCollectionEquality().equals(other.produce, produce));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(produce));

  @JsonKey(ignore: true)
  @override
  _$$PMSCreateNewProduceSuccessCopyWith<_$PMSCreateNewProduceSuccess>
      get copyWith => __$$PMSCreateNewProduceSuccessCopyWithImpl<
          _$PMSCreateNewProduceSuccess>(this, _$identity);

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
    required TResult Function(Failure failure) createNewProduceError,
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
    TResult Function(Failure failure)? createNewProduceError,
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
    TResult Function(Failure failure)? createNewProduceError,
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
    required TResult orElse(),
  }) {
    if (createNewProduceSuccess != null) {
      return createNewProduceSuccess(this);
    }
    return orElse();
  }
}

abstract class PMSCreateNewProduceSuccess implements ProduceManagerState {
  const factory PMSCreateNewProduceSuccess({required final Produce produce}) =
      _$PMSCreateNewProduceSuccess;

  Produce get produce;
  @JsonKey(ignore: true)
  _$$PMSCreateNewProduceSuccessCopyWith<_$PMSCreateNewProduceSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PMSCreateNewProduceErrorCopyWith<$Res> {
  factory _$$PMSCreateNewProduceErrorCopyWith(_$PMSCreateNewProduceError value,
          $Res Function(_$PMSCreateNewProduceError) then) =
      __$$PMSCreateNewProduceErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$$PMSCreateNewProduceErrorCopyWithImpl<$Res>
    extends _$ProduceManagerStateCopyWithImpl<$Res>
    implements _$$PMSCreateNewProduceErrorCopyWith<$Res> {
  __$$PMSCreateNewProduceErrorCopyWithImpl(_$PMSCreateNewProduceError _value,
      $Res Function(_$PMSCreateNewProduceError) _then)
      : super(_value, (v) => _then(v as _$PMSCreateNewProduceError));

  @override
  _$PMSCreateNewProduceError get _value =>
      super._value as _$PMSCreateNewProduceError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$PMSCreateNewProduceError(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$PMSCreateNewProduceError implements PMSCreateNewProduceError {
  const _$PMSCreateNewProduceError({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ProduceManagerState.createNewProduceError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PMSCreateNewProduceError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$PMSCreateNewProduceErrorCopyWith<_$PMSCreateNewProduceError>
      get copyWith =>
          __$$PMSCreateNewProduceErrorCopyWithImpl<_$PMSCreateNewProduceError>(
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
    required TResult Function(Failure failure) createNewProduceError,
  }) {
    return createNewProduceError(failure);
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
    TResult Function(Failure failure)? createNewProduceError,
  }) {
    return createNewProduceError?.call(failure);
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
    TResult Function(Failure failure)? createNewProduceError,
    required TResult orElse(),
  }) {
    if (createNewProduceError != null) {
      return createNewProduceError(failure);
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
    required TResult orElse(),
  }) {
    if (createNewProduceError != null) {
      return createNewProduceError(this);
    }
    return orElse();
  }
}

abstract class PMSCreateNewProduceError implements ProduceManagerState {
  const factory PMSCreateNewProduceError({required final Failure failure}) =
      _$PMSCreateNewProduceError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$PMSCreateNewProduceErrorCopyWith<_$PMSCreateNewProduceError>
      get copyWith => throw _privateConstructorUsedError;
}
