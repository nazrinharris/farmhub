// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'produce_aggregate_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$PASInitialCopyWith<$Res>
    implements $ProduceAggregateStateCopyWith<$Res> {
  factory _$$PASInitialCopyWith(
          _$PASInitial value, $Res Function(_$PASInitial) then) =
      __$$PASInitialCopyWithImpl<$Res>;
  @override
  $Res call({ProduceAggregateProps props});

  @override
  $ProduceAggregatePropsCopyWith<$Res> get props;
}

/// @nodoc
class __$$PASInitialCopyWithImpl<$Res>
    extends _$ProduceAggregateStateCopyWithImpl<$Res>
    implements _$$PASInitialCopyWith<$Res> {
  __$$PASInitialCopyWithImpl(
      _$PASInitial _value, $Res Function(_$PASInitial) _then)
      : super(_value, (v) => _then(v as _$PASInitial));

  @override
  _$PASInitial get _value => super._value as _$PASInitial;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(_$PASInitial(
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
            other is _$PASInitial &&
            const DeepCollectionEquality().equals(other.props, props));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(props));

  @JsonKey(ignore: true)
  @override
  _$$PASInitialCopyWith<_$PASInitial> get copyWith =>
      __$$PASInitialCopyWithImpl<_$PASInitial>(this, _$identity);

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
  const factory PASInitial({required final ProduceAggregateProps props}) =
      _$PASInitial;

  @override
  ProduceAggregateProps get props;
  @override
  @JsonKey(ignore: true)
  _$$PASInitialCopyWith<_$PASInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PASLoadingCopyWith<$Res>
    implements $ProduceAggregateStateCopyWith<$Res> {
  factory _$$PASLoadingCopyWith(
          _$PASLoading value, $Res Function(_$PASLoading) then) =
      __$$PASLoadingCopyWithImpl<$Res>;
  @override
  $Res call({ProduceAggregateProps props});

  @override
  $ProduceAggregatePropsCopyWith<$Res> get props;
}

/// @nodoc
class __$$PASLoadingCopyWithImpl<$Res>
    extends _$ProduceAggregateStateCopyWithImpl<$Res>
    implements _$$PASLoadingCopyWith<$Res> {
  __$$PASLoadingCopyWithImpl(
      _$PASLoading _value, $Res Function(_$PASLoading) _then)
      : super(_value, (v) => _then(v as _$PASLoading));

  @override
  _$PASLoading get _value => super._value as _$PASLoading;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(_$PASLoading(
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
            other is _$PASLoading &&
            const DeepCollectionEquality().equals(other.props, props));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(props));

  @JsonKey(ignore: true)
  @override
  _$$PASLoadingCopyWith<_$PASLoading> get copyWith =>
      __$$PASLoadingCopyWithImpl<_$PASLoading>(this, _$identity);

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
  const factory PASLoading({required final ProduceAggregateProps props}) =
      _$PASLoading;

  @override
  ProduceAggregateProps get props;
  @override
  @JsonKey(ignore: true)
  _$$PASLoadingCopyWith<_$PASLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PASCompletedCopyWith<$Res>
    implements $ProduceAggregateStateCopyWith<$Res> {
  factory _$$PASCompletedCopyWith(
          _$PASCompleted value, $Res Function(_$PASCompleted) then) =
      __$$PASCompletedCopyWithImpl<$Res>;
  @override
  $Res call({ProduceAggregateProps props});

  @override
  $ProduceAggregatePropsCopyWith<$Res> get props;
}

/// @nodoc
class __$$PASCompletedCopyWithImpl<$Res>
    extends _$ProduceAggregateStateCopyWithImpl<$Res>
    implements _$$PASCompletedCopyWith<$Res> {
  __$$PASCompletedCopyWithImpl(
      _$PASCompleted _value, $Res Function(_$PASCompleted) _then)
      : super(_value, (v) => _then(v as _$PASCompleted));

  @override
  _$PASCompleted get _value => super._value as _$PASCompleted;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(_$PASCompleted(
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
            other is _$PASCompleted &&
            const DeepCollectionEquality().equals(other.props, props));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(props));

  @JsonKey(ignore: true)
  @override
  _$$PASCompletedCopyWith<_$PASCompleted> get copyWith =>
      __$$PASCompletedCopyWithImpl<_$PASCompleted>(this, _$identity);

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
  const factory PASCompleted({required final ProduceAggregateProps props}) =
      _$PASCompleted;

  @override
  ProduceAggregateProps get props;
  @override
  @JsonKey(ignore: true)
  _$$PASCompletedCopyWith<_$PASCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PASErrorCopyWith<$Res>
    implements $ProduceAggregateStateCopyWith<$Res> {
  factory _$$PASErrorCopyWith(
          _$PASError value, $Res Function(_$PASError) then) =
      __$$PASErrorCopyWithImpl<$Res>;
  @override
  $Res call({ProduceAggregateProps props, Failure failure});

  @override
  $ProduceAggregatePropsCopyWith<$Res> get props;
}

/// @nodoc
class __$$PASErrorCopyWithImpl<$Res>
    extends _$ProduceAggregateStateCopyWithImpl<$Res>
    implements _$$PASErrorCopyWith<$Res> {
  __$$PASErrorCopyWithImpl(_$PASError _value, $Res Function(_$PASError) _then)
      : super(_value, (v) => _then(v as _$PASError));

  @override
  _$PASError get _value => super._value as _$PASError;

  @override
  $Res call({
    Object? props = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$PASError(
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
            other is _$PASError &&
            const DeepCollectionEquality().equals(other.props, props) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(props),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$PASErrorCopyWith<_$PASError> get copyWith =>
      __$$PASErrorCopyWithImpl<_$PASError>(this, _$identity);

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
      {required final ProduceAggregateProps props,
      required final Failure failure}) = _$PASError;

  @override
  ProduceAggregateProps get props;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$PASErrorCopyWith<_$PASError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProduceAggregateProps {
  TabController get tabController => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  Produce? get produce => throw _privateConstructorUsedError;
  FarmhubUser get farmhubUser => throw _privateConstructorUsedError;
  bool get isProduceFavorite => throw _privateConstructorUsedError;
  List<PriceSnippet>? get oneWeekPricesList =>
      throw _privateConstructorUsedError;
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
      List<PriceSnippet>? oneWeekPricesList,
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
    Object? oneWeekPricesList = freezed,
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
      oneWeekPricesList: oneWeekPricesList == freezed
          ? _value.oneWeekPricesList
          : oneWeekPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceSnippet>?,
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
abstract class _$$_ProduceAggregatePropsCopyWith<$Res>
    implements $ProduceAggregatePropsCopyWith<$Res> {
  factory _$$_ProduceAggregatePropsCopyWith(_$_ProduceAggregateProps value,
          $Res Function(_$_ProduceAggregateProps) then) =
      __$$_ProduceAggregatePropsCopyWithImpl<$Res>;
  @override
  $Res call(
      {TabController tabController,
      int index,
      Produce? produce,
      FarmhubUser farmhubUser,
      bool isProduceFavorite,
      List<PriceSnippet>? oneWeekPricesList,
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
class __$$_ProduceAggregatePropsCopyWithImpl<$Res>
    extends _$ProduceAggregatePropsCopyWithImpl<$Res>
    implements _$$_ProduceAggregatePropsCopyWith<$Res> {
  __$$_ProduceAggregatePropsCopyWithImpl(_$_ProduceAggregateProps _value,
      $Res Function(_$_ProduceAggregateProps) _then)
      : super(_value, (v) => _then(v as _$_ProduceAggregateProps));

  @override
  _$_ProduceAggregateProps get _value =>
      super._value as _$_ProduceAggregateProps;

  @override
  $Res call({
    Object? tabController = freezed,
    Object? index = freezed,
    Object? produce = freezed,
    Object? farmhubUser = freezed,
    Object? isProduceFavorite = freezed,
    Object? oneWeekPricesList = freezed,
    Object? twoWeeksPricesList = freezed,
    Object? oneMonthPricesList = freezed,
    Object? twoMonthPricesList = freezed,
    Object? sixMonthPricesList = freezed,
    Object? oneYearPricesList = freezed,
  }) {
    return _then(_$_ProduceAggregateProps(
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
      oneWeekPricesList: oneWeekPricesList == freezed
          ? _value._oneWeekPricesList
          : oneWeekPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceSnippet>?,
      twoWeeksPricesList: twoWeeksPricesList == freezed
          ? _value._twoWeeksPricesList
          : twoWeeksPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceSnippet>?,
      oneMonthPricesList: oneMonthPricesList == freezed
          ? _value._oneMonthPricesList
          : oneMonthPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceSnippet>?,
      twoMonthPricesList: twoMonthPricesList == freezed
          ? _value._twoMonthPricesList
          : twoMonthPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceSnippet>?,
      sixMonthPricesList: sixMonthPricesList == freezed
          ? _value._sixMonthPricesList
          : sixMonthPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceSnippet>?,
      oneYearPricesList: oneYearPricesList == freezed
          ? _value._oneYearPricesList
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
      final List<PriceSnippet>? oneWeekPricesList,
      final List<PriceSnippet>? twoWeeksPricesList,
      final List<PriceSnippet>? oneMonthPricesList,
      final List<PriceSnippet>? twoMonthPricesList,
      final List<PriceSnippet>? sixMonthPricesList,
      final List<PriceSnippet>? oneYearPricesList})
      : _oneWeekPricesList = oneWeekPricesList,
        _twoWeeksPricesList = twoWeeksPricesList,
        _oneMonthPricesList = oneMonthPricesList,
        _twoMonthPricesList = twoMonthPricesList,
        _sixMonthPricesList = sixMonthPricesList,
        _oneYearPricesList = oneYearPricesList;

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
  final List<PriceSnippet>? _oneWeekPricesList;
  @override
  List<PriceSnippet>? get oneWeekPricesList {
    final value = _oneWeekPricesList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PriceSnippet>? _twoWeeksPricesList;
  @override
  List<PriceSnippet>? get twoWeeksPricesList {
    final value = _twoWeeksPricesList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PriceSnippet>? _oneMonthPricesList;
  @override
  List<PriceSnippet>? get oneMonthPricesList {
    final value = _oneMonthPricesList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PriceSnippet>? _twoMonthPricesList;
  @override
  List<PriceSnippet>? get twoMonthPricesList {
    final value = _twoMonthPricesList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PriceSnippet>? _sixMonthPricesList;
  @override
  List<PriceSnippet>? get sixMonthPricesList {
    final value = _sixMonthPricesList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PriceSnippet>? _oneYearPricesList;
  @override
  List<PriceSnippet>? get oneYearPricesList {
    final value = _oneYearPricesList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProduceAggregateProps(tabController: $tabController, index: $index, produce: $produce, farmhubUser: $farmhubUser, isProduceFavorite: $isProduceFavorite, oneWeekPricesList: $oneWeekPricesList, twoWeeksPricesList: $twoWeeksPricesList, oneMonthPricesList: $oneMonthPricesList, twoMonthPricesList: $twoMonthPricesList, sixMonthPricesList: $sixMonthPricesList, oneYearPricesList: $oneYearPricesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProduceAggregateProps &&
            const DeepCollectionEquality()
                .equals(other.tabController, tabController) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.produce, produce) &&
            const DeepCollectionEquality()
                .equals(other.farmhubUser, farmhubUser) &&
            const DeepCollectionEquality()
                .equals(other.isProduceFavorite, isProduceFavorite) &&
            const DeepCollectionEquality()
                .equals(other._oneWeekPricesList, _oneWeekPricesList) &&
            const DeepCollectionEquality()
                .equals(other._twoWeeksPricesList, _twoWeeksPricesList) &&
            const DeepCollectionEquality()
                .equals(other._oneMonthPricesList, _oneMonthPricesList) &&
            const DeepCollectionEquality()
                .equals(other._twoMonthPricesList, _twoMonthPricesList) &&
            const DeepCollectionEquality()
                .equals(other._sixMonthPricesList, _sixMonthPricesList) &&
            const DeepCollectionEquality()
                .equals(other._oneYearPricesList, _oneYearPricesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tabController),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(produce),
      const DeepCollectionEquality().hash(farmhubUser),
      const DeepCollectionEquality().hash(isProduceFavorite),
      const DeepCollectionEquality().hash(_oneWeekPricesList),
      const DeepCollectionEquality().hash(_twoWeeksPricesList),
      const DeepCollectionEquality().hash(_oneMonthPricesList),
      const DeepCollectionEquality().hash(_twoMonthPricesList),
      const DeepCollectionEquality().hash(_sixMonthPricesList),
      const DeepCollectionEquality().hash(_oneYearPricesList));

  @JsonKey(ignore: true)
  @override
  _$$_ProduceAggregatePropsCopyWith<_$_ProduceAggregateProps> get copyWith =>
      __$$_ProduceAggregatePropsCopyWithImpl<_$_ProduceAggregateProps>(
          this, _$identity);
}

abstract class _ProduceAggregateProps implements ProduceAggregateProps {
  const factory _ProduceAggregateProps(
      {required final TabController tabController,
      required final int index,
      required final Produce? produce,
      required final FarmhubUser farmhubUser,
      required final bool isProduceFavorite,
      final List<PriceSnippet>? oneWeekPricesList,
      final List<PriceSnippet>? twoWeeksPricesList,
      final List<PriceSnippet>? oneMonthPricesList,
      final List<PriceSnippet>? twoMonthPricesList,
      final List<PriceSnippet>? sixMonthPricesList,
      final List<PriceSnippet>? oneYearPricesList}) = _$_ProduceAggregateProps;

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
  List<PriceSnippet>? get oneWeekPricesList;
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
  _$$_ProduceAggregatePropsCopyWith<_$_ProduceAggregateProps> get copyWith =>
      throw _privateConstructorUsedError;
}
