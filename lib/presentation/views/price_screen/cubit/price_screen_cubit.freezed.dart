// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'price_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PriceScreenStateTearOff {
  const _$PriceScreenStateTearOff();

  PriceInitial initial({required PriceScreenProps props}) {
    return PriceInitial(
      props: props,
    );
  }

  PriceLoading loading({required PriceScreenProps props}) {
    return PriceLoading(
      props: props,
    );
  }

  PriceCompleted completed({required PriceScreenProps props}) {
    return PriceCompleted(
      props: props,
    );
  }

  PriceError error(
      {required PriceScreenProps props, required Failure failure}) {
    return PriceError(
      props: props,
      failure: failure,
    );
  }
}

/// @nodoc
const $PriceScreenState = _$PriceScreenStateTearOff();

/// @nodoc
mixin _$PriceScreenState {
  PriceScreenProps get props => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PriceScreenProps props) initial,
    required TResult Function(PriceScreenProps props) loading,
    required TResult Function(PriceScreenProps props) completed,
    required TResult Function(PriceScreenProps props, Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PriceScreenProps props)? initial,
    TResult Function(PriceScreenProps props)? loading,
    TResult Function(PriceScreenProps props)? completed,
    TResult Function(PriceScreenProps props, Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PriceScreenProps props)? initial,
    TResult Function(PriceScreenProps props)? loading,
    TResult Function(PriceScreenProps props)? completed,
    TResult Function(PriceScreenProps props, Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PriceInitial value) initial,
    required TResult Function(PriceLoading value) loading,
    required TResult Function(PriceCompleted value) completed,
    required TResult Function(PriceError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PriceInitial value)? initial,
    TResult Function(PriceLoading value)? loading,
    TResult Function(PriceCompleted value)? completed,
    TResult Function(PriceError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PriceInitial value)? initial,
    TResult Function(PriceLoading value)? loading,
    TResult Function(PriceCompleted value)? completed,
    TResult Function(PriceError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PriceScreenStateCopyWith<PriceScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceScreenStateCopyWith<$Res> {
  factory $PriceScreenStateCopyWith(
          PriceScreenState value, $Res Function(PriceScreenState) then) =
      _$PriceScreenStateCopyWithImpl<$Res>;
  $Res call({PriceScreenProps props});

  $PriceScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$PriceScreenStateCopyWithImpl<$Res>
    implements $PriceScreenStateCopyWith<$Res> {
  _$PriceScreenStateCopyWithImpl(this._value, this._then);

  final PriceScreenState _value;
  // ignore: unused_field
  final $Res Function(PriceScreenState) _then;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(_value.copyWith(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as PriceScreenProps,
    ));
  }

  @override
  $PriceScreenPropsCopyWith<$Res> get props {
    return $PriceScreenPropsCopyWith<$Res>(_value.props, (value) {
      return _then(_value.copyWith(props: value));
    });
  }
}

/// @nodoc
abstract class $PriceInitialCopyWith<$Res>
    implements $PriceScreenStateCopyWith<$Res> {
  factory $PriceInitialCopyWith(
          PriceInitial value, $Res Function(PriceInitial) then) =
      _$PriceInitialCopyWithImpl<$Res>;
  @override
  $Res call({PriceScreenProps props});

  @override
  $PriceScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$PriceInitialCopyWithImpl<$Res>
    extends _$PriceScreenStateCopyWithImpl<$Res>
    implements $PriceInitialCopyWith<$Res> {
  _$PriceInitialCopyWithImpl(
      PriceInitial _value, $Res Function(PriceInitial) _then)
      : super(_value, (v) => _then(v as PriceInitial));

  @override
  PriceInitial get _value => super._value as PriceInitial;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(PriceInitial(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as PriceScreenProps,
    ));
  }
}

/// @nodoc

class _$PriceInitial implements PriceInitial {
  const _$PriceInitial({required this.props});

  @override
  final PriceScreenProps props;

  @override
  String toString() {
    return 'PriceScreenState.initial(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceInitial &&
            (identical(other.props, props) || other.props == props));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props);

  @JsonKey(ignore: true)
  @override
  $PriceInitialCopyWith<PriceInitial> get copyWith =>
      _$PriceInitialCopyWithImpl<PriceInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PriceScreenProps props) initial,
    required TResult Function(PriceScreenProps props) loading,
    required TResult Function(PriceScreenProps props) completed,
    required TResult Function(PriceScreenProps props, Failure failure) error,
  }) {
    return initial(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PriceScreenProps props)? initial,
    TResult Function(PriceScreenProps props)? loading,
    TResult Function(PriceScreenProps props)? completed,
    TResult Function(PriceScreenProps props, Failure failure)? error,
  }) {
    return initial?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PriceScreenProps props)? initial,
    TResult Function(PriceScreenProps props)? loading,
    TResult Function(PriceScreenProps props)? completed,
    TResult Function(PriceScreenProps props, Failure failure)? error,
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
    required TResult Function(PriceInitial value) initial,
    required TResult Function(PriceLoading value) loading,
    required TResult Function(PriceCompleted value) completed,
    required TResult Function(PriceError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PriceInitial value)? initial,
    TResult Function(PriceLoading value)? loading,
    TResult Function(PriceCompleted value)? completed,
    TResult Function(PriceError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PriceInitial value)? initial,
    TResult Function(PriceLoading value)? loading,
    TResult Function(PriceCompleted value)? completed,
    TResult Function(PriceError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PriceInitial implements PriceScreenState {
  const factory PriceInitial({required PriceScreenProps props}) =
      _$PriceInitial;

  @override
  PriceScreenProps get props;
  @override
  @JsonKey(ignore: true)
  $PriceInitialCopyWith<PriceInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceLoadingCopyWith<$Res>
    implements $PriceScreenStateCopyWith<$Res> {
  factory $PriceLoadingCopyWith(
          PriceLoading value, $Res Function(PriceLoading) then) =
      _$PriceLoadingCopyWithImpl<$Res>;
  @override
  $Res call({PriceScreenProps props});

  @override
  $PriceScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$PriceLoadingCopyWithImpl<$Res>
    extends _$PriceScreenStateCopyWithImpl<$Res>
    implements $PriceLoadingCopyWith<$Res> {
  _$PriceLoadingCopyWithImpl(
      PriceLoading _value, $Res Function(PriceLoading) _then)
      : super(_value, (v) => _then(v as PriceLoading));

  @override
  PriceLoading get _value => super._value as PriceLoading;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(PriceLoading(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as PriceScreenProps,
    ));
  }
}

/// @nodoc

class _$PriceLoading implements PriceLoading {
  const _$PriceLoading({required this.props});

  @override
  final PriceScreenProps props;

  @override
  String toString() {
    return 'PriceScreenState.loading(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceLoading &&
            (identical(other.props, props) || other.props == props));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props);

  @JsonKey(ignore: true)
  @override
  $PriceLoadingCopyWith<PriceLoading> get copyWith =>
      _$PriceLoadingCopyWithImpl<PriceLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PriceScreenProps props) initial,
    required TResult Function(PriceScreenProps props) loading,
    required TResult Function(PriceScreenProps props) completed,
    required TResult Function(PriceScreenProps props, Failure failure) error,
  }) {
    return loading(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PriceScreenProps props)? initial,
    TResult Function(PriceScreenProps props)? loading,
    TResult Function(PriceScreenProps props)? completed,
    TResult Function(PriceScreenProps props, Failure failure)? error,
  }) {
    return loading?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PriceScreenProps props)? initial,
    TResult Function(PriceScreenProps props)? loading,
    TResult Function(PriceScreenProps props)? completed,
    TResult Function(PriceScreenProps props, Failure failure)? error,
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
    required TResult Function(PriceInitial value) initial,
    required TResult Function(PriceLoading value) loading,
    required TResult Function(PriceCompleted value) completed,
    required TResult Function(PriceError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PriceInitial value)? initial,
    TResult Function(PriceLoading value)? loading,
    TResult Function(PriceCompleted value)? completed,
    TResult Function(PriceError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PriceInitial value)? initial,
    TResult Function(PriceLoading value)? loading,
    TResult Function(PriceCompleted value)? completed,
    TResult Function(PriceError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PriceLoading implements PriceScreenState {
  const factory PriceLoading({required PriceScreenProps props}) =
      _$PriceLoading;

  @override
  PriceScreenProps get props;
  @override
  @JsonKey(ignore: true)
  $PriceLoadingCopyWith<PriceLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCompletedCopyWith<$Res>
    implements $PriceScreenStateCopyWith<$Res> {
  factory $PriceCompletedCopyWith(
          PriceCompleted value, $Res Function(PriceCompleted) then) =
      _$PriceCompletedCopyWithImpl<$Res>;
  @override
  $Res call({PriceScreenProps props});

  @override
  $PriceScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$PriceCompletedCopyWithImpl<$Res>
    extends _$PriceScreenStateCopyWithImpl<$Res>
    implements $PriceCompletedCopyWith<$Res> {
  _$PriceCompletedCopyWithImpl(
      PriceCompleted _value, $Res Function(PriceCompleted) _then)
      : super(_value, (v) => _then(v as PriceCompleted));

  @override
  PriceCompleted get _value => super._value as PriceCompleted;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(PriceCompleted(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as PriceScreenProps,
    ));
  }
}

/// @nodoc

class _$PriceCompleted implements PriceCompleted {
  const _$PriceCompleted({required this.props});

  @override
  final PriceScreenProps props;

  @override
  String toString() {
    return 'PriceScreenState.completed(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceCompleted &&
            (identical(other.props, props) || other.props == props));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props);

  @JsonKey(ignore: true)
  @override
  $PriceCompletedCopyWith<PriceCompleted> get copyWith =>
      _$PriceCompletedCopyWithImpl<PriceCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PriceScreenProps props) initial,
    required TResult Function(PriceScreenProps props) loading,
    required TResult Function(PriceScreenProps props) completed,
    required TResult Function(PriceScreenProps props, Failure failure) error,
  }) {
    return completed(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PriceScreenProps props)? initial,
    TResult Function(PriceScreenProps props)? loading,
    TResult Function(PriceScreenProps props)? completed,
    TResult Function(PriceScreenProps props, Failure failure)? error,
  }) {
    return completed?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PriceScreenProps props)? initial,
    TResult Function(PriceScreenProps props)? loading,
    TResult Function(PriceScreenProps props)? completed,
    TResult Function(PriceScreenProps props, Failure failure)? error,
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
    required TResult Function(PriceInitial value) initial,
    required TResult Function(PriceLoading value) loading,
    required TResult Function(PriceCompleted value) completed,
    required TResult Function(PriceError value) error,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PriceInitial value)? initial,
    TResult Function(PriceLoading value)? loading,
    TResult Function(PriceCompleted value)? completed,
    TResult Function(PriceError value)? error,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PriceInitial value)? initial,
    TResult Function(PriceLoading value)? loading,
    TResult Function(PriceCompleted value)? completed,
    TResult Function(PriceError value)? error,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class PriceCompleted implements PriceScreenState {
  const factory PriceCompleted({required PriceScreenProps props}) =
      _$PriceCompleted;

  @override
  PriceScreenProps get props;
  @override
  @JsonKey(ignore: true)
  $PriceCompletedCopyWith<PriceCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceErrorCopyWith<$Res>
    implements $PriceScreenStateCopyWith<$Res> {
  factory $PriceErrorCopyWith(
          PriceError value, $Res Function(PriceError) then) =
      _$PriceErrorCopyWithImpl<$Res>;
  @override
  $Res call({PriceScreenProps props, Failure failure});

  @override
  $PriceScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$PriceErrorCopyWithImpl<$Res>
    extends _$PriceScreenStateCopyWithImpl<$Res>
    implements $PriceErrorCopyWith<$Res> {
  _$PriceErrorCopyWithImpl(PriceError _value, $Res Function(PriceError) _then)
      : super(_value, (v) => _then(v as PriceError));

  @override
  PriceError get _value => super._value as PriceError;

  @override
  $Res call({
    Object? props = freezed,
    Object? failure = freezed,
  }) {
    return _then(PriceError(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as PriceScreenProps,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$PriceError implements PriceError {
  const _$PriceError({required this.props, required this.failure});

  @override
  final PriceScreenProps props;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'PriceScreenState.error(props: $props, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceError &&
            (identical(other.props, props) || other.props == props) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props, failure);

  @JsonKey(ignore: true)
  @override
  $PriceErrorCopyWith<PriceError> get copyWith =>
      _$PriceErrorCopyWithImpl<PriceError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PriceScreenProps props) initial,
    required TResult Function(PriceScreenProps props) loading,
    required TResult Function(PriceScreenProps props) completed,
    required TResult Function(PriceScreenProps props, Failure failure) error,
  }) {
    return error(props, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PriceScreenProps props)? initial,
    TResult Function(PriceScreenProps props)? loading,
    TResult Function(PriceScreenProps props)? completed,
    TResult Function(PriceScreenProps props, Failure failure)? error,
  }) {
    return error?.call(props, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PriceScreenProps props)? initial,
    TResult Function(PriceScreenProps props)? loading,
    TResult Function(PriceScreenProps props)? completed,
    TResult Function(PriceScreenProps props, Failure failure)? error,
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
    required TResult Function(PriceInitial value) initial,
    required TResult Function(PriceLoading value) loading,
    required TResult Function(PriceCompleted value) completed,
    required TResult Function(PriceError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PriceInitial value)? initial,
    TResult Function(PriceLoading value)? loading,
    TResult Function(PriceCompleted value)? completed,
    TResult Function(PriceError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PriceInitial value)? initial,
    TResult Function(PriceLoading value)? loading,
    TResult Function(PriceCompleted value)? completed,
    TResult Function(PriceError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PriceError implements PriceScreenState {
  const factory PriceError(
      {required PriceScreenProps props,
      required Failure failure}) = _$PriceError;

  @override
  PriceScreenProps get props;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  $PriceErrorCopyWith<PriceError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PriceScreenPropsTearOff {
  const _$PriceScreenPropsTearOff();

  _PriceScreenProps call({required Price price}) {
    return _PriceScreenProps(
      price: price,
    );
  }
}

/// @nodoc
const $PriceScreenProps = _$PriceScreenPropsTearOff();

/// @nodoc
mixin _$PriceScreenProps {
  Price get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PriceScreenPropsCopyWith<PriceScreenProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceScreenPropsCopyWith<$Res> {
  factory $PriceScreenPropsCopyWith(
          PriceScreenProps value, $Res Function(PriceScreenProps) then) =
      _$PriceScreenPropsCopyWithImpl<$Res>;
  $Res call({Price price});

  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$PriceScreenPropsCopyWithImpl<$Res>
    implements $PriceScreenPropsCopyWith<$Res> {
  _$PriceScreenPropsCopyWithImpl(this._value, this._then);

  final PriceScreenProps _value;
  // ignore: unused_field
  final $Res Function(PriceScreenProps) _then;

  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ));
  }

  @override
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value));
    });
  }
}

/// @nodoc
abstract class _$PriceScreenPropsCopyWith<$Res>
    implements $PriceScreenPropsCopyWith<$Res> {
  factory _$PriceScreenPropsCopyWith(
          _PriceScreenProps value, $Res Function(_PriceScreenProps) then) =
      __$PriceScreenPropsCopyWithImpl<$Res>;
  @override
  $Res call({Price price});

  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$PriceScreenPropsCopyWithImpl<$Res>
    extends _$PriceScreenPropsCopyWithImpl<$Res>
    implements _$PriceScreenPropsCopyWith<$Res> {
  __$PriceScreenPropsCopyWithImpl(
      _PriceScreenProps _value, $Res Function(_PriceScreenProps) _then)
      : super(_value, (v) => _then(v as _PriceScreenProps));

  @override
  _PriceScreenProps get _value => super._value as _PriceScreenProps;

  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_PriceScreenProps(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ));
  }
}

/// @nodoc

class _$_PriceScreenProps implements _PriceScreenProps {
  const _$_PriceScreenProps({required this.price});

  @override
  final Price price;

  @override
  String toString() {
    return 'PriceScreenProps(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PriceScreenProps &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  @JsonKey(ignore: true)
  @override
  _$PriceScreenPropsCopyWith<_PriceScreenProps> get copyWith =>
      __$PriceScreenPropsCopyWithImpl<_PriceScreenProps>(this, _$identity);
}

abstract class _PriceScreenProps implements PriceScreenProps {
  const factory _PriceScreenProps({required Price price}) = _$_PriceScreenProps;

  @override
  Price get price;
  @override
  @JsonKey(ignore: true)
  _$PriceScreenPropsCopyWith<_PriceScreenProps> get copyWith =>
      throw _privateConstructorUsedError;
}
