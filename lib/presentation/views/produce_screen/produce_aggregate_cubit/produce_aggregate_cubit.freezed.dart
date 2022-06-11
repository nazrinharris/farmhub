// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'produce_aggregate_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProduceAggregateStateTearOff {
  const _$ProduceAggregateStateTearOff();

  PASInitial initial({required ProduceAggregateProps props}) {
    return PASInitial(
      props: props,
    );
  }

  PASLoading loading({required ProduceAggregateProps props}) {
    return PASLoading(
      props: props,
    );
  }

  PASCompleted completed({required ProduceAggregateProps props}) {
    return PASCompleted(
      props: props,
    );
  }

  PASError error(
      {required ProduceAggregateProps props, required Failure failure}) {
    return PASError(
      props: props,
      failure: failure,
    );
  }
}

/// @nodoc
const $ProduceAggregateState = _$ProduceAggregateStateTearOff();

/// @nodoc
mixin _$ProduceAggregateState {
  ProduceAggregateProps get props => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProduceAggregateProps props) initial,
    required TResult Function(ProduceAggregateProps props) loading,
    required TResult Function(ProduceAggregateProps props) completed,
    required TResult Function(ProduceAggregateProps props, Failure failure)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceAggregateProps props)? initial,
    TResult Function(ProduceAggregateProps props)? loading,
    TResult Function(ProduceAggregateProps props)? completed,
    TResult Function(ProduceAggregateProps props, Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceAggregateProps props)? initial,
    TResult Function(ProduceAggregateProps props)? loading,
    TResult Function(ProduceAggregateProps props)? completed,
    TResult Function(ProduceAggregateProps props, Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PASInitial value) initial,
    required TResult Function(PASLoading value) loading,
    required TResult Function(PASCompleted value) completed,
    required TResult Function(PASError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PASInitial value)? initial,
    TResult Function(PASLoading value)? loading,
    TResult Function(PASCompleted value)? completed,
    TResult Function(PASError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PASInitial value)? initial,
    TResult Function(PASLoading value)? loading,
    TResult Function(PASCompleted value)? completed,
    TResult Function(PASError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProduceAggregateStateCopyWith<ProduceAggregateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProduceAggregateStateCopyWith<$Res> {
  factory $ProduceAggregateStateCopyWith(ProduceAggregateState value,
          $Res Function(ProduceAggregateState) then) =
      _$ProduceAggregateStateCopyWithImpl<$Res>;
  $Res call({ProduceAggregateProps props});

  $ProduceAggregatePropsCopyWith<$Res> get props;
}

/// @nodoc
class _$ProduceAggregateStateCopyWithImpl<$Res>
    implements $ProduceAggregateStateCopyWith<$Res> {
  _$ProduceAggregateStateCopyWithImpl(this._value, this._then);

  final ProduceAggregateState _value;
  // ignore: unused_field
  final $Res Function(ProduceAggregateState) _then;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(_value.copyWith(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as ProduceAggregateProps,
    ));
  }

  @override
  $ProduceAggregatePropsCopyWith<$Res> get props {
    return $ProduceAggregatePropsCopyWith<$Res>(_value.props, (value) {
      return _then(_value.copyWith(props: value));
    });
  }
}

/// @nodoc
abstract class $PASInitialCopyWith<$Res>
    implements $ProduceAggregateStateCopyWith<$Res> {
  factory $PASInitialCopyWith(
          PASInitial value, $Res Function(PASInitial) then) =
      _$PASInitialCopyWithImpl<$Res>;
  @override
  $Res call({ProduceAggregateProps props});

  @override
  $ProduceAggregatePropsCopyWith<$Res> get props;
}

/// @nodoc
class _$PASInitialCopyWithImpl<$Res>
    extends _$ProduceAggregateStateCopyWithImpl<$Res>
    implements $PASInitialCopyWith<$Res> {
  _$PASInitialCopyWithImpl(PASInitial _value, $Res Function(PASInitial) _then)
      : super(_value, (v) => _then(v as PASInitial));

  @override
  PASInitial get _value => super._value as PASInitial;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(PASInitial(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as ProduceAggregateProps,
    ));
  }
}

/// @nodoc

class _$PASInitial implements PASInitial {
  const _$PASInitial({required this.props});

  @override
  final ProduceAggregateProps props;

  @override
  String toString() {
    return 'ProduceAggregateState.initial(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PASInitial &&
            (identical(other.props, props) || other.props == props));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props);

  @JsonKey(ignore: true)
  @override
  $PASInitialCopyWith<PASInitial> get copyWith =>
      _$PASInitialCopyWithImpl<PASInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProduceAggregateProps props) initial,
    required TResult Function(ProduceAggregateProps props) loading,
    required TResult Function(ProduceAggregateProps props) completed,
    required TResult Function(ProduceAggregateProps props, Failure failure)
        error,
  }) {
    return initial(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceAggregateProps props)? initial,
    TResult Function(ProduceAggregateProps props)? loading,
    TResult Function(ProduceAggregateProps props)? completed,
    TResult Function(ProduceAggregateProps props, Failure failure)? error,
  }) {
    return initial?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceAggregateProps props)? initial,
    TResult Function(ProduceAggregateProps props)? loading,
    TResult Function(ProduceAggregateProps props)? completed,
    TResult Function(ProduceAggregateProps props, Failure failure)? error,
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
    required TResult Function(PASInitial value) initial,
    required TResult Function(PASLoading value) loading,
    required TResult Function(PASCompleted value) completed,
    required TResult Function(PASError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PASInitial value)? initial,
    TResult Function(PASLoading value)? loading,
    TResult Function(PASCompleted value)? completed,
    TResult Function(PASError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PASInitial value)? initial,
    TResult Function(PASLoading value)? loading,
    TResult Function(PASCompleted value)? completed,
    TResult Function(PASError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PASInitial implements ProduceAggregateState {
  const factory PASInitial({required ProduceAggregateProps props}) =
      _$PASInitial;

  @override
  ProduceAggregateProps get props;
  @override
  @JsonKey(ignore: true)
  $PASInitialCopyWith<PASInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PASLoadingCopyWith<$Res>
    implements $ProduceAggregateStateCopyWith<$Res> {
  factory $PASLoadingCopyWith(
          PASLoading value, $Res Function(PASLoading) then) =
      _$PASLoadingCopyWithImpl<$Res>;
  @override
  $Res call({ProduceAggregateProps props});

  @override
  $ProduceAggregatePropsCopyWith<$Res> get props;
}

/// @nodoc
class _$PASLoadingCopyWithImpl<$Res>
    extends _$ProduceAggregateStateCopyWithImpl<$Res>
    implements $PASLoadingCopyWith<$Res> {
  _$PASLoadingCopyWithImpl(PASLoading _value, $Res Function(PASLoading) _then)
      : super(_value, (v) => _then(v as PASLoading));

  @override
  PASLoading get _value => super._value as PASLoading;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(PASLoading(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as ProduceAggregateProps,
    ));
  }
}

/// @nodoc

class _$PASLoading implements PASLoading {
  const _$PASLoading({required this.props});

  @override
  final ProduceAggregateProps props;

  @override
  String toString() {
    return 'ProduceAggregateState.loading(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PASLoading &&
            (identical(other.props, props) || other.props == props));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props);

  @JsonKey(ignore: true)
  @override
  $PASLoadingCopyWith<PASLoading> get copyWith =>
      _$PASLoadingCopyWithImpl<PASLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProduceAggregateProps props) initial,
    required TResult Function(ProduceAggregateProps props) loading,
    required TResult Function(ProduceAggregateProps props) completed,
    required TResult Function(ProduceAggregateProps props, Failure failure)
        error,
  }) {
    return loading(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceAggregateProps props)? initial,
    TResult Function(ProduceAggregateProps props)? loading,
    TResult Function(ProduceAggregateProps props)? completed,
    TResult Function(ProduceAggregateProps props, Failure failure)? error,
  }) {
    return loading?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceAggregateProps props)? initial,
    TResult Function(ProduceAggregateProps props)? loading,
    TResult Function(ProduceAggregateProps props)? completed,
    TResult Function(ProduceAggregateProps props, Failure failure)? error,
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
    required TResult Function(PASInitial value) initial,
    required TResult Function(PASLoading value) loading,
    required TResult Function(PASCompleted value) completed,
    required TResult Function(PASError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PASInitial value)? initial,
    TResult Function(PASLoading value)? loading,
    TResult Function(PASCompleted value)? completed,
    TResult Function(PASError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PASInitial value)? initial,
    TResult Function(PASLoading value)? loading,
    TResult Function(PASCompleted value)? completed,
    TResult Function(PASError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PASLoading implements ProduceAggregateState {
  const factory PASLoading({required ProduceAggregateProps props}) =
      _$PASLoading;

  @override
  ProduceAggregateProps get props;
  @override
  @JsonKey(ignore: true)
  $PASLoadingCopyWith<PASLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PASCompletedCopyWith<$Res>
    implements $ProduceAggregateStateCopyWith<$Res> {
  factory $PASCompletedCopyWith(
          PASCompleted value, $Res Function(PASCompleted) then) =
      _$PASCompletedCopyWithImpl<$Res>;
  @override
  $Res call({ProduceAggregateProps props});

  @override
  $ProduceAggregatePropsCopyWith<$Res> get props;
}

/// @nodoc
class _$PASCompletedCopyWithImpl<$Res>
    extends _$ProduceAggregateStateCopyWithImpl<$Res>
    implements $PASCompletedCopyWith<$Res> {
  _$PASCompletedCopyWithImpl(
      PASCompleted _value, $Res Function(PASCompleted) _then)
      : super(_value, (v) => _then(v as PASCompleted));

  @override
  PASCompleted get _value => super._value as PASCompleted;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(PASCompleted(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as ProduceAggregateProps,
    ));
  }
}

/// @nodoc

class _$PASCompleted implements PASCompleted {
  const _$PASCompleted({required this.props});

  @override
  final ProduceAggregateProps props;

  @override
  String toString() {
    return 'ProduceAggregateState.completed(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PASCompleted &&
            (identical(other.props, props) || other.props == props));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props);

  @JsonKey(ignore: true)
  @override
  $PASCompletedCopyWith<PASCompleted> get copyWith =>
      _$PASCompletedCopyWithImpl<PASCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProduceAggregateProps props) initial,
    required TResult Function(ProduceAggregateProps props) loading,
    required TResult Function(ProduceAggregateProps props) completed,
    required TResult Function(ProduceAggregateProps props, Failure failure)
        error,
  }) {
    return completed(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceAggregateProps props)? initial,
    TResult Function(ProduceAggregateProps props)? loading,
    TResult Function(ProduceAggregateProps props)? completed,
    TResult Function(ProduceAggregateProps props, Failure failure)? error,
  }) {
    return completed?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceAggregateProps props)? initial,
    TResult Function(ProduceAggregateProps props)? loading,
    TResult Function(ProduceAggregateProps props)? completed,
    TResult Function(ProduceAggregateProps props, Failure failure)? error,
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
    required TResult Function(PASInitial value) initial,
    required TResult Function(PASLoading value) loading,
    required TResult Function(PASCompleted value) completed,
    required TResult Function(PASError value) error,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PASInitial value)? initial,
    TResult Function(PASLoading value)? loading,
    TResult Function(PASCompleted value)? completed,
    TResult Function(PASError value)? error,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PASInitial value)? initial,
    TResult Function(PASLoading value)? loading,
    TResult Function(PASCompleted value)? completed,
    TResult Function(PASError value)? error,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class PASCompleted implements ProduceAggregateState {
  const factory PASCompleted({required ProduceAggregateProps props}) =
      _$PASCompleted;

  @override
  ProduceAggregateProps get props;
  @override
  @JsonKey(ignore: true)
  $PASCompletedCopyWith<PASCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PASErrorCopyWith<$Res>
    implements $ProduceAggregateStateCopyWith<$Res> {
  factory $PASErrorCopyWith(PASError value, $Res Function(PASError) then) =
      _$PASErrorCopyWithImpl<$Res>;
  @override
  $Res call({ProduceAggregateProps props, Failure failure});

  @override
  $ProduceAggregatePropsCopyWith<$Res> get props;
}

/// @nodoc
class _$PASErrorCopyWithImpl<$Res>
    extends _$ProduceAggregateStateCopyWithImpl<$Res>
    implements $PASErrorCopyWith<$Res> {
  _$PASErrorCopyWithImpl(PASError _value, $Res Function(PASError) _then)
      : super(_value, (v) => _then(v as PASError));

  @override
  PASError get _value => super._value as PASError;

  @override
  $Res call({
    Object? props = freezed,
    Object? failure = freezed,
  }) {
    return _then(PASError(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as ProduceAggregateProps,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$PASError implements PASError {
  const _$PASError({required this.props, required this.failure});

  @override
  final ProduceAggregateProps props;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'ProduceAggregateState.error(props: $props, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PASError &&
            (identical(other.props, props) || other.props == props) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props, failure);

  @JsonKey(ignore: true)
  @override
  $PASErrorCopyWith<PASError> get copyWith =>
      _$PASErrorCopyWithImpl<PASError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProduceAggregateProps props) initial,
    required TResult Function(ProduceAggregateProps props) loading,
    required TResult Function(ProduceAggregateProps props) completed,
    required TResult Function(ProduceAggregateProps props, Failure failure)
        error,
  }) {
    return error(props, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceAggregateProps props)? initial,
    TResult Function(ProduceAggregateProps props)? loading,
    TResult Function(ProduceAggregateProps props)? completed,
    TResult Function(ProduceAggregateProps props, Failure failure)? error,
  }) {
    return error?.call(props, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceAggregateProps props)? initial,
    TResult Function(ProduceAggregateProps props)? loading,
    TResult Function(ProduceAggregateProps props)? completed,
    TResult Function(ProduceAggregateProps props, Failure failure)? error,
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
    required TResult Function(PASInitial value) initial,
    required TResult Function(PASLoading value) loading,
    required TResult Function(PASCompleted value) completed,
    required TResult Function(PASError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PASInitial value)? initial,
    TResult Function(PASLoading value)? loading,
    TResult Function(PASCompleted value)? completed,
    TResult Function(PASError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PASInitial value)? initial,
    TResult Function(PASLoading value)? loading,
    TResult Function(PASCompleted value)? completed,
    TResult Function(PASError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PASError implements ProduceAggregateState {
  const factory PASError(
      {required ProduceAggregateProps props,
      required Failure failure}) = _$PASError;

  @override
  ProduceAggregateProps get props;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  $PASErrorCopyWith<PASError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProduceAggregatePropsTearOff {
  const _$ProduceAggregatePropsTearOff();

  _ProduceAggregateProps call(
      {required TabController tabController,
      required int index,
      required Produce? produce,
      required FarmhubUser farmhubUser,
      required bool isProduceFavorite,
      List<PriceSnippet>? twoWeeksPricesList,
      List<PriceSnippet>? oneMonthPricesList,
      List<PriceSnippet>? twoMonthPricesList,
      List<PriceSnippet>? sixMonthPricesList,
      List<PriceSnippet>? oneYearPricesList}) {
    return _ProduceAggregateProps(
      tabController: tabController,
      index: index,
      produce: produce,
      farmhubUser: farmhubUser,
      isProduceFavorite: isProduceFavorite,
      twoWeeksPricesList: twoWeeksPricesList,
      oneMonthPricesList: oneMonthPricesList,
      twoMonthPricesList: twoMonthPricesList,
      sixMonthPricesList: sixMonthPricesList,
      oneYearPricesList: oneYearPricesList,
    );
  }
}

/// @nodoc
const $ProduceAggregateProps = _$ProduceAggregatePropsTearOff();

/// @nodoc
mixin _$ProduceAggregateProps {
  TabController get tabController => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  Produce? get produce => throw _privateConstructorUsedError;
  FarmhubUser get farmhubUser => throw _privateConstructorUsedError;
  bool get isProduceFavorite => throw _privateConstructorUsedError;
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
  $ProduceAggregatePropsCopyWith<ProduceAggregateProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProduceAggregatePropsCopyWith<$Res> {
  factory $ProduceAggregatePropsCopyWith(ProduceAggregateProps value,
          $Res Function(ProduceAggregateProps) then) =
      _$ProduceAggregatePropsCopyWithImpl<$Res>;
  $Res call(
      {TabController tabController,
      int index,
      Produce? produce,
      FarmhubUser farmhubUser,
      bool isProduceFavorite,
      List<PriceSnippet>? twoWeeksPricesList,
      List<PriceSnippet>? oneMonthPricesList,
      List<PriceSnippet>? twoMonthPricesList,
      List<PriceSnippet>? sixMonthPricesList,
      List<PriceSnippet>? oneYearPricesList});

  $ProduceCopyWith<$Res>? get produce;
  $FarmhubUserCopyWith<$Res> get farmhubUser;
}

/// @nodoc
class _$ProduceAggregatePropsCopyWithImpl<$Res>
    implements $ProduceAggregatePropsCopyWith<$Res> {
  _$ProduceAggregatePropsCopyWithImpl(this._value, this._then);

  final ProduceAggregateProps _value;
  // ignore: unused_field
  final $Res Function(ProduceAggregateProps) _then;

  @override
  $Res call({
    Object? tabController = freezed,
    Object? index = freezed,
    Object? produce = freezed,
    Object? farmhubUser = freezed,
    Object? isProduceFavorite = freezed,
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
      produce: produce == freezed
          ? _value.produce
          : produce // ignore: cast_nullable_to_non_nullable
              as Produce?,
      farmhubUser: farmhubUser == freezed
          ? _value.farmhubUser
          : farmhubUser // ignore: cast_nullable_to_non_nullable
              as FarmhubUser,
      isProduceFavorite: isProduceFavorite == freezed
          ? _value.isProduceFavorite
          : isProduceFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
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

  @override
  $ProduceCopyWith<$Res>? get produce {
    if (_value.produce == null) {
      return null;
    }

    return $ProduceCopyWith<$Res>(_value.produce!, (value) {
      return _then(_value.copyWith(produce: value));
    });
  }

  @override
  $FarmhubUserCopyWith<$Res> get farmhubUser {
    return $FarmhubUserCopyWith<$Res>(_value.farmhubUser, (value) {
      return _then(_value.copyWith(farmhubUser: value));
    });
  }
}

/// @nodoc
abstract class _$ProduceAggregatePropsCopyWith<$Res>
    implements $ProduceAggregatePropsCopyWith<$Res> {
  factory _$ProduceAggregatePropsCopyWith(_ProduceAggregateProps value,
          $Res Function(_ProduceAggregateProps) then) =
      __$ProduceAggregatePropsCopyWithImpl<$Res>;
  @override
  $Res call(
      {TabController tabController,
      int index,
      Produce? produce,
      FarmhubUser farmhubUser,
      bool isProduceFavorite,
      List<PriceSnippet>? twoWeeksPricesList,
      List<PriceSnippet>? oneMonthPricesList,
      List<PriceSnippet>? twoMonthPricesList,
      List<PriceSnippet>? sixMonthPricesList,
      List<PriceSnippet>? oneYearPricesList});

  @override
  $ProduceCopyWith<$Res>? get produce;
  @override
  $FarmhubUserCopyWith<$Res> get farmhubUser;
}

/// @nodoc
class __$ProduceAggregatePropsCopyWithImpl<$Res>
    extends _$ProduceAggregatePropsCopyWithImpl<$Res>
    implements _$ProduceAggregatePropsCopyWith<$Res> {
  __$ProduceAggregatePropsCopyWithImpl(_ProduceAggregateProps _value,
      $Res Function(_ProduceAggregateProps) _then)
      : super(_value, (v) => _then(v as _ProduceAggregateProps));

  @override
  _ProduceAggregateProps get _value => super._value as _ProduceAggregateProps;

  @override
  $Res call({
    Object? tabController = freezed,
    Object? index = freezed,
    Object? produce = freezed,
    Object? farmhubUser = freezed,
    Object? isProduceFavorite = freezed,
    Object? twoWeeksPricesList = freezed,
    Object? oneMonthPricesList = freezed,
    Object? twoMonthPricesList = freezed,
    Object? sixMonthPricesList = freezed,
    Object? oneYearPricesList = freezed,
  }) {
    return _then(_ProduceAggregateProps(
      tabController: tabController == freezed
          ? _value.tabController
          : tabController // ignore: cast_nullable_to_non_nullable
              as TabController,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      produce: produce == freezed
          ? _value.produce
          : produce // ignore: cast_nullable_to_non_nullable
              as Produce?,
      farmhubUser: farmhubUser == freezed
          ? _value.farmhubUser
          : farmhubUser // ignore: cast_nullable_to_non_nullable
              as FarmhubUser,
      isProduceFavorite: isProduceFavorite == freezed
          ? _value.isProduceFavorite
          : isProduceFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$_ProduceAggregateProps implements _ProduceAggregateProps {
  const _$_ProduceAggregateProps(
      {required this.tabController,
      required this.index,
      required this.produce,
      required this.farmhubUser,
      required this.isProduceFavorite,
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
  final Produce? produce;
  @override
  final FarmhubUser farmhubUser;
  @override
  final bool isProduceFavorite;
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
    return 'ProduceAggregateProps(tabController: $tabController, index: $index, produce: $produce, farmhubUser: $farmhubUser, isProduceFavorite: $isProduceFavorite, twoWeeksPricesList: $twoWeeksPricesList, oneMonthPricesList: $oneMonthPricesList, twoMonthPricesList: $twoMonthPricesList, sixMonthPricesList: $sixMonthPricesList, oneYearPricesList: $oneYearPricesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProduceAggregateProps &&
            (identical(other.tabController, tabController) ||
                other.tabController == tabController) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.produce, produce) || other.produce == produce) &&
            (identical(other.farmhubUser, farmhubUser) ||
                other.farmhubUser == farmhubUser) &&
            (identical(other.isProduceFavorite, isProduceFavorite) ||
                other.isProduceFavorite == isProduceFavorite) &&
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
      produce,
      farmhubUser,
      isProduceFavorite,
      const DeepCollectionEquality().hash(twoWeeksPricesList),
      const DeepCollectionEquality().hash(oneMonthPricesList),
      const DeepCollectionEquality().hash(twoMonthPricesList),
      const DeepCollectionEquality().hash(sixMonthPricesList),
      const DeepCollectionEquality().hash(oneYearPricesList));

  @JsonKey(ignore: true)
  @override
  _$ProduceAggregatePropsCopyWith<_ProduceAggregateProps> get copyWith =>
      __$ProduceAggregatePropsCopyWithImpl<_ProduceAggregateProps>(
          this, _$identity);
}

abstract class _ProduceAggregateProps implements ProduceAggregateProps {
  const factory _ProduceAggregateProps(
      {required TabController tabController,
      required int index,
      required Produce? produce,
      required FarmhubUser farmhubUser,
      required bool isProduceFavorite,
      List<PriceSnippet>? twoWeeksPricesList,
      List<PriceSnippet>? oneMonthPricesList,
      List<PriceSnippet>? twoMonthPricesList,
      List<PriceSnippet>? sixMonthPricesList,
      List<PriceSnippet>? oneYearPricesList}) = _$_ProduceAggregateProps;

  @override
  TabController get tabController;
  @override
  int get index;
  @override
  Produce? get produce;
  @override
  FarmhubUser get farmhubUser;
  @override
  bool get isProduceFavorite;
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
  _$ProduceAggregatePropsCopyWith<_ProduceAggregateProps> get copyWith =>
      throw _privateConstructorUsedError;
}
