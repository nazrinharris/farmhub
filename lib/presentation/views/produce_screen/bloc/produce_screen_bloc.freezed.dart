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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    TResult Function(String produceId)? getAggregatePrices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    TResult Function(String produceId)? getAggregatePrices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PSEStarted value) started,
    required TResult Function(_PSETabChanged value) tabChanged,
    required TResult Function(_PSEGetAggregatePrices value) getAggregatePrices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    TResult Function(_PSEGetAggregatePrices value)? getAggregatePrices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    TResult Function(_PSEGetAggregatePrices value)? getAggregatePrices,
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
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    TResult Function(String produceId)? getAggregatePrices,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    TResult Function(String produceId)? getAggregatePrices,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    TResult Function(_PSEGetAggregatePrices value)? getAggregatePrices,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    TResult Function(_PSEGetAggregatePrices value)? getAggregatePrices,
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
  }) {
    return tabChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    TResult Function(String produceId)? getAggregatePrices,
  }) {
    return tabChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    TResult Function(String produceId)? getAggregatePrices,
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
  }) {
    return tabChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    TResult Function(_PSEGetAggregatePrices value)? getAggregatePrices,
  }) {
    return tabChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    TResult Function(_PSEGetAggregatePrices value)? getAggregatePrices,
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
  }) {
    return getAggregatePrices(produceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    TResult Function(String produceId)? getAggregatePrices,
  }) {
    return getAggregatePrices?.call(produceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    TResult Function(String produceId)? getAggregatePrices,
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
  }) {
    return getAggregatePrices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    TResult Function(_PSEGetAggregatePrices value)? getAggregatePrices,
  }) {
    return getAggregatePrices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    TResult Function(_PSEGetAggregatePrices value)? getAggregatePrices,
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
class _$ProduceScreenStateTearOff {
  const _$ProduceScreenStateTearOff();

  PSSInitial initial({required ProduceScreenProps props}) {
    return PSSInitial(
      props: props,
    );
  }

  PSSLoading loading({required ProduceScreenProps props}) {
    return PSSLoading(
      props: props,
    );
  }

  PSSCompleted completed({required ProduceScreenProps props}) {
    return PSSCompleted(
      props: props,
    );
  }

  PSSError error(
      {required ProduceScreenProps props, required Failure failure}) {
    return PSSError(
      props: props,
      failure: failure,
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
    required TResult Function(ProduceScreenProps props) loading,
    required TResult Function(ProduceScreenProps props) completed,
    required TResult Function(ProduceScreenProps props, Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? loading,
    TResult Function(ProduceScreenProps props)? completed,
    TResult Function(ProduceScreenProps props, Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? loading,
    TResult Function(ProduceScreenProps props)? completed,
    TResult Function(ProduceScreenProps props, Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PSSInitial value) initial,
    required TResult Function(PSSLoading value) loading,
    required TResult Function(PSSCompleted value) completed,
    required TResult Function(PSSError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSLoading value)? loading,
    TResult Function(PSSCompleted value)? completed,
    TResult Function(PSSError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSLoading value)? loading,
    TResult Function(PSSCompleted value)? completed,
    TResult Function(PSSError value)? error,
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
    required TResult Function(ProduceScreenProps props) loading,
    required TResult Function(ProduceScreenProps props) completed,
    required TResult Function(ProduceScreenProps props, Failure failure) error,
  }) {
    return initial(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? loading,
    TResult Function(ProduceScreenProps props)? completed,
    TResult Function(ProduceScreenProps props, Failure failure)? error,
  }) {
    return initial?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? loading,
    TResult Function(ProduceScreenProps props)? completed,
    TResult Function(ProduceScreenProps props, Failure failure)? error,
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
    required TResult Function(PSSLoading value) loading,
    required TResult Function(PSSCompleted value) completed,
    required TResult Function(PSSError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSLoading value)? loading,
    TResult Function(PSSCompleted value)? completed,
    TResult Function(PSSError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSLoading value)? loading,
    TResult Function(PSSCompleted value)? completed,
    TResult Function(PSSError value)? error,
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
abstract class $PSSLoadingCopyWith<$Res>
    implements $ProduceScreenStateCopyWith<$Res> {
  factory $PSSLoadingCopyWith(
          PSSLoading value, $Res Function(PSSLoading) then) =
      _$PSSLoadingCopyWithImpl<$Res>;
  @override
  $Res call({ProduceScreenProps props});

  @override
  $ProduceScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$PSSLoadingCopyWithImpl<$Res>
    extends _$ProduceScreenStateCopyWithImpl<$Res>
    implements $PSSLoadingCopyWith<$Res> {
  _$PSSLoadingCopyWithImpl(PSSLoading _value, $Res Function(PSSLoading) _then)
      : super(_value, (v) => _then(v as PSSLoading));

  @override
  PSSLoading get _value => super._value as PSSLoading;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(PSSLoading(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as ProduceScreenProps,
    ));
  }
}

/// @nodoc

class _$PSSLoading implements PSSLoading {
  const _$PSSLoading({required this.props});

  @override
  final ProduceScreenProps props;

  @override
  String toString() {
    return 'ProduceScreenState.loading(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PSSLoading &&
            (identical(other.props, props) || other.props == props));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props);

  @JsonKey(ignore: true)
  @override
  $PSSLoadingCopyWith<PSSLoading> get copyWith =>
      _$PSSLoadingCopyWithImpl<PSSLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProduceScreenProps props) initial,
    required TResult Function(ProduceScreenProps props) loading,
    required TResult Function(ProduceScreenProps props) completed,
    required TResult Function(ProduceScreenProps props, Failure failure) error,
  }) {
    return loading(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? loading,
    TResult Function(ProduceScreenProps props)? completed,
    TResult Function(ProduceScreenProps props, Failure failure)? error,
  }) {
    return loading?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? loading,
    TResult Function(ProduceScreenProps props)? completed,
    TResult Function(ProduceScreenProps props, Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(props);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PSSInitial value) initial,
    required TResult Function(PSSLoading value) loading,
    required TResult Function(PSSCompleted value) completed,
    required TResult Function(PSSError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSLoading value)? loading,
    TResult Function(PSSCompleted value)? completed,
    TResult Function(PSSError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSLoading value)? loading,
    TResult Function(PSSCompleted value)? completed,
    TResult Function(PSSError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PSSLoading implements ProduceScreenState {
  const factory PSSLoading({required ProduceScreenProps props}) = _$PSSLoading;

  @override
  ProduceScreenProps get props;
  @override
  @JsonKey(ignore: true)
  $PSSLoadingCopyWith<PSSLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PSSCompletedCopyWith<$Res>
    implements $ProduceScreenStateCopyWith<$Res> {
  factory $PSSCompletedCopyWith(
          PSSCompleted value, $Res Function(PSSCompleted) then) =
      _$PSSCompletedCopyWithImpl<$Res>;
  @override
  $Res call({ProduceScreenProps props});

  @override
  $ProduceScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$PSSCompletedCopyWithImpl<$Res>
    extends _$ProduceScreenStateCopyWithImpl<$Res>
    implements $PSSCompletedCopyWith<$Res> {
  _$PSSCompletedCopyWithImpl(
      PSSCompleted _value, $Res Function(PSSCompleted) _then)
      : super(_value, (v) => _then(v as PSSCompleted));

  @override
  PSSCompleted get _value => super._value as PSSCompleted;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(PSSCompleted(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as ProduceScreenProps,
    ));
  }
}

/// @nodoc

class _$PSSCompleted implements PSSCompleted {
  const _$PSSCompleted({required this.props});

  @override
  final ProduceScreenProps props;

  @override
  String toString() {
    return 'ProduceScreenState.completed(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PSSCompleted &&
            (identical(other.props, props) || other.props == props));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props);

  @JsonKey(ignore: true)
  @override
  $PSSCompletedCopyWith<PSSCompleted> get copyWith =>
      _$PSSCompletedCopyWithImpl<PSSCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProduceScreenProps props) initial,
    required TResult Function(ProduceScreenProps props) loading,
    required TResult Function(ProduceScreenProps props) completed,
    required TResult Function(ProduceScreenProps props, Failure failure) error,
  }) {
    return completed(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? loading,
    TResult Function(ProduceScreenProps props)? completed,
    TResult Function(ProduceScreenProps props, Failure failure)? error,
  }) {
    return completed?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? loading,
    TResult Function(ProduceScreenProps props)? completed,
    TResult Function(ProduceScreenProps props, Failure failure)? error,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(props);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PSSInitial value) initial,
    required TResult Function(PSSLoading value) loading,
    required TResult Function(PSSCompleted value) completed,
    required TResult Function(PSSError value) error,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSLoading value)? loading,
    TResult Function(PSSCompleted value)? completed,
    TResult Function(PSSError value)? error,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSLoading value)? loading,
    TResult Function(PSSCompleted value)? completed,
    TResult Function(PSSError value)? error,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class PSSCompleted implements ProduceScreenState {
  const factory PSSCompleted({required ProduceScreenProps props}) =
      _$PSSCompleted;

  @override
  ProduceScreenProps get props;
  @override
  @JsonKey(ignore: true)
  $PSSCompletedCopyWith<PSSCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PSSErrorCopyWith<$Res>
    implements $ProduceScreenStateCopyWith<$Res> {
  factory $PSSErrorCopyWith(PSSError value, $Res Function(PSSError) then) =
      _$PSSErrorCopyWithImpl<$Res>;
  @override
  $Res call({ProduceScreenProps props, Failure failure});

  @override
  $ProduceScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$PSSErrorCopyWithImpl<$Res>
    extends _$ProduceScreenStateCopyWithImpl<$Res>
    implements $PSSErrorCopyWith<$Res> {
  _$PSSErrorCopyWithImpl(PSSError _value, $Res Function(PSSError) _then)
      : super(_value, (v) => _then(v as PSSError));

  @override
  PSSError get _value => super._value as PSSError;

  @override
  $Res call({
    Object? props = freezed,
    Object? failure = freezed,
  }) {
    return _then(PSSError(
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

class _$PSSError implements PSSError {
  const _$PSSError({required this.props, required this.failure});

  @override
  final ProduceScreenProps props;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'ProduceScreenState.error(props: $props, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PSSError &&
            (identical(other.props, props) || other.props == props) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props, failure);

  @JsonKey(ignore: true)
  @override
  $PSSErrorCopyWith<PSSError> get copyWith =>
      _$PSSErrorCopyWithImpl<PSSError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProduceScreenProps props) initial,
    required TResult Function(ProduceScreenProps props) loading,
    required TResult Function(ProduceScreenProps props) completed,
    required TResult Function(ProduceScreenProps props, Failure failure) error,
  }) {
    return error(props, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? loading,
    TResult Function(ProduceScreenProps props)? completed,
    TResult Function(ProduceScreenProps props, Failure failure)? error,
  }) {
    return error?.call(props, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    TResult Function(ProduceScreenProps props)? loading,
    TResult Function(ProduceScreenProps props)? completed,
    TResult Function(ProduceScreenProps props, Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(props, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PSSInitial value) initial,
    required TResult Function(PSSLoading value) loading,
    required TResult Function(PSSCompleted value) completed,
    required TResult Function(PSSError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSLoading value)? loading,
    TResult Function(PSSCompleted value)? completed,
    TResult Function(PSSError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PSSInitial value)? initial,
    TResult Function(PSSLoading value)? loading,
    TResult Function(PSSCompleted value)? completed,
    TResult Function(PSSError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PSSError implements ProduceScreenState {
  const factory PSSError(
      {required ProduceScreenProps props,
      required Failure failure}) = _$PSSError;

  @override
  ProduceScreenProps get props;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  $PSSErrorCopyWith<PSSError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProduceScreenPropsTearOff {
  const _$ProduceScreenPropsTearOff();

  _ProduceScreenProps call(
      {required TabController tabController,
      required int index,
      List<PriceSnippet>? twoWeeksPricesList,
      List<PriceSnippet>? oneMonthPricesList,
      List<PriceSnippet>? twoMonthPricesList,
      List<PriceSnippet>? sixMonthPricesList,
      List<PriceSnippet>? oneYearPricesList}) {
    return _ProduceScreenProps(
      tabController: tabController,
      index: index,
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
    return 'ProduceScreenProps(tabController: $tabController, index: $index, twoWeeksPricesList: $twoWeeksPricesList, oneMonthPricesList: $oneMonthPricesList, twoMonthPricesList: $twoMonthPricesList, sixMonthPricesList: $sixMonthPricesList, oneYearPricesList: $oneYearPricesList)';
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
