// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'produce_prices_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProducePricesStateTearOff {
  const _$ProducePricesStateTearOff();

  PPSInitial initial(List<Price> pricesList) {
    return PPSInitial(
      pricesList,
    );
  }

  PPSFirstTenPricesLoading firstTenPricesLoading(List<Price> pricesList) {
    return PPSFirstTenPricesLoading(
      pricesList,
    );
  }

  PPSFirstTenPricesCompleted firstTenPricesCompleted(List<Price> pricesList) {
    return PPSFirstTenPricesCompleted(
      pricesList,
    );
  }

  PPSNextTenPricesLoading nextTenPricesLoading(List<Price> pricesList) {
    return PPSNextTenPricesLoading(
      pricesList,
    );
  }

  PPSNextTenPricesCompleted nextTenPricesCompleted(List<Price> pricesList) {
    return PPSNextTenPricesCompleted(
      pricesList,
    );
  }

  PPSPricesError pricesError(List<Price> pricesList, Failure failure) {
    return PPSPricesError(
      pricesList,
      failure,
    );
  }
}

/// @nodoc
const $ProducePricesState = _$ProducePricesStateTearOff();

/// @nodoc
mixin _$ProducePricesState {
  List<Price> get pricesList => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Price> pricesList) initial,
    required TResult Function(List<Price> pricesList) firstTenPricesLoading,
    required TResult Function(List<Price> pricesList) firstTenPricesCompleted,
    required TResult Function(List<Price> pricesList) nextTenPricesLoading,
    required TResult Function(List<Price> pricesList) nextTenPricesCompleted,
    required TResult Function(List<Price> pricesList, Failure failure)
        pricesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Price> pricesList)? initial,
    TResult Function(List<Price> pricesList)? firstTenPricesLoading,
    TResult Function(List<Price> pricesList)? firstTenPricesCompleted,
    TResult Function(List<Price> pricesList)? nextTenPricesLoading,
    TResult Function(List<Price> pricesList)? nextTenPricesCompleted,
    TResult Function(List<Price> pricesList, Failure failure)? pricesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Price> pricesList)? initial,
    TResult Function(List<Price> pricesList)? firstTenPricesLoading,
    TResult Function(List<Price> pricesList)? firstTenPricesCompleted,
    TResult Function(List<Price> pricesList)? nextTenPricesLoading,
    TResult Function(List<Price> pricesList)? nextTenPricesCompleted,
    TResult Function(List<Price> pricesList, Failure failure)? pricesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PPSInitial value) initial,
    required TResult Function(PPSFirstTenPricesLoading value)
        firstTenPricesLoading,
    required TResult Function(PPSFirstTenPricesCompleted value)
        firstTenPricesCompleted,
    required TResult Function(PPSNextTenPricesLoading value)
        nextTenPricesLoading,
    required TResult Function(PPSNextTenPricesCompleted value)
        nextTenPricesCompleted,
    required TResult Function(PPSPricesError value) pricesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PPSInitial value)? initial,
    TResult Function(PPSFirstTenPricesLoading value)? firstTenPricesLoading,
    TResult Function(PPSFirstTenPricesCompleted value)? firstTenPricesCompleted,
    TResult Function(PPSNextTenPricesLoading value)? nextTenPricesLoading,
    TResult Function(PPSNextTenPricesCompleted value)? nextTenPricesCompleted,
    TResult Function(PPSPricesError value)? pricesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PPSInitial value)? initial,
    TResult Function(PPSFirstTenPricesLoading value)? firstTenPricesLoading,
    TResult Function(PPSFirstTenPricesCompleted value)? firstTenPricesCompleted,
    TResult Function(PPSNextTenPricesLoading value)? nextTenPricesLoading,
    TResult Function(PPSNextTenPricesCompleted value)? nextTenPricesCompleted,
    TResult Function(PPSPricesError value)? pricesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProducePricesStateCopyWith<ProducePricesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProducePricesStateCopyWith<$Res> {
  factory $ProducePricesStateCopyWith(
          ProducePricesState value, $Res Function(ProducePricesState) then) =
      _$ProducePricesStateCopyWithImpl<$Res>;
  $Res call({List<Price> pricesList});
}

/// @nodoc
class _$ProducePricesStateCopyWithImpl<$Res>
    implements $ProducePricesStateCopyWith<$Res> {
  _$ProducePricesStateCopyWithImpl(this._value, this._then);

  final ProducePricesState _value;
  // ignore: unused_field
  final $Res Function(ProducePricesState) _then;

  @override
  $Res call({
    Object? pricesList = freezed,
  }) {
    return _then(_value.copyWith(
      pricesList: pricesList == freezed
          ? _value.pricesList
          : pricesList // ignore: cast_nullable_to_non_nullable
              as List<Price>,
    ));
  }
}

/// @nodoc
abstract class $PPSInitialCopyWith<$Res>
    implements $ProducePricesStateCopyWith<$Res> {
  factory $PPSInitialCopyWith(
          PPSInitial value, $Res Function(PPSInitial) then) =
      _$PPSInitialCopyWithImpl<$Res>;
  @override
  $Res call({List<Price> pricesList});
}

/// @nodoc
class _$PPSInitialCopyWithImpl<$Res>
    extends _$ProducePricesStateCopyWithImpl<$Res>
    implements $PPSInitialCopyWith<$Res> {
  _$PPSInitialCopyWithImpl(PPSInitial _value, $Res Function(PPSInitial) _then)
      : super(_value, (v) => _then(v as PPSInitial));

  @override
  PPSInitial get _value => super._value as PPSInitial;

  @override
  $Res call({
    Object? pricesList = freezed,
  }) {
    return _then(PPSInitial(
      pricesList == freezed
          ? _value.pricesList
          : pricesList // ignore: cast_nullable_to_non_nullable
              as List<Price>,
    ));
  }
}

/// @nodoc

class _$PPSInitial implements PPSInitial {
  const _$PPSInitial(this.pricesList);

  @override
  final List<Price> pricesList;

  @override
  String toString() {
    return 'ProducePricesState.initial(pricesList: $pricesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PPSInitial &&
            const DeepCollectionEquality()
                .equals(other.pricesList, pricesList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pricesList));

  @JsonKey(ignore: true)
  @override
  $PPSInitialCopyWith<PPSInitial> get copyWith =>
      _$PPSInitialCopyWithImpl<PPSInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Price> pricesList) initial,
    required TResult Function(List<Price> pricesList) firstTenPricesLoading,
    required TResult Function(List<Price> pricesList) firstTenPricesCompleted,
    required TResult Function(List<Price> pricesList) nextTenPricesLoading,
    required TResult Function(List<Price> pricesList) nextTenPricesCompleted,
    required TResult Function(List<Price> pricesList, Failure failure)
        pricesError,
  }) {
    return initial(pricesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Price> pricesList)? initial,
    TResult Function(List<Price> pricesList)? firstTenPricesLoading,
    TResult Function(List<Price> pricesList)? firstTenPricesCompleted,
    TResult Function(List<Price> pricesList)? nextTenPricesLoading,
    TResult Function(List<Price> pricesList)? nextTenPricesCompleted,
    TResult Function(List<Price> pricesList, Failure failure)? pricesError,
  }) {
    return initial?.call(pricesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Price> pricesList)? initial,
    TResult Function(List<Price> pricesList)? firstTenPricesLoading,
    TResult Function(List<Price> pricesList)? firstTenPricesCompleted,
    TResult Function(List<Price> pricesList)? nextTenPricesLoading,
    TResult Function(List<Price> pricesList)? nextTenPricesCompleted,
    TResult Function(List<Price> pricesList, Failure failure)? pricesError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(pricesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PPSInitial value) initial,
    required TResult Function(PPSFirstTenPricesLoading value)
        firstTenPricesLoading,
    required TResult Function(PPSFirstTenPricesCompleted value)
        firstTenPricesCompleted,
    required TResult Function(PPSNextTenPricesLoading value)
        nextTenPricesLoading,
    required TResult Function(PPSNextTenPricesCompleted value)
        nextTenPricesCompleted,
    required TResult Function(PPSPricesError value) pricesError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PPSInitial value)? initial,
    TResult Function(PPSFirstTenPricesLoading value)? firstTenPricesLoading,
    TResult Function(PPSFirstTenPricesCompleted value)? firstTenPricesCompleted,
    TResult Function(PPSNextTenPricesLoading value)? nextTenPricesLoading,
    TResult Function(PPSNextTenPricesCompleted value)? nextTenPricesCompleted,
    TResult Function(PPSPricesError value)? pricesError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PPSInitial value)? initial,
    TResult Function(PPSFirstTenPricesLoading value)? firstTenPricesLoading,
    TResult Function(PPSFirstTenPricesCompleted value)? firstTenPricesCompleted,
    TResult Function(PPSNextTenPricesLoading value)? nextTenPricesLoading,
    TResult Function(PPSNextTenPricesCompleted value)? nextTenPricesCompleted,
    TResult Function(PPSPricesError value)? pricesError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PPSInitial implements ProducePricesState {
  const factory PPSInitial(List<Price> pricesList) = _$PPSInitial;

  @override
  List<Price> get pricesList;
  @override
  @JsonKey(ignore: true)
  $PPSInitialCopyWith<PPSInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PPSFirstTenPricesLoadingCopyWith<$Res>
    implements $ProducePricesStateCopyWith<$Res> {
  factory $PPSFirstTenPricesLoadingCopyWith(PPSFirstTenPricesLoading value,
          $Res Function(PPSFirstTenPricesLoading) then) =
      _$PPSFirstTenPricesLoadingCopyWithImpl<$Res>;
  @override
  $Res call({List<Price> pricesList});
}

/// @nodoc
class _$PPSFirstTenPricesLoadingCopyWithImpl<$Res>
    extends _$ProducePricesStateCopyWithImpl<$Res>
    implements $PPSFirstTenPricesLoadingCopyWith<$Res> {
  _$PPSFirstTenPricesLoadingCopyWithImpl(PPSFirstTenPricesLoading _value,
      $Res Function(PPSFirstTenPricesLoading) _then)
      : super(_value, (v) => _then(v as PPSFirstTenPricesLoading));

  @override
  PPSFirstTenPricesLoading get _value =>
      super._value as PPSFirstTenPricesLoading;

  @override
  $Res call({
    Object? pricesList = freezed,
  }) {
    return _then(PPSFirstTenPricesLoading(
      pricesList == freezed
          ? _value.pricesList
          : pricesList // ignore: cast_nullable_to_non_nullable
              as List<Price>,
    ));
  }
}

/// @nodoc

class _$PPSFirstTenPricesLoading implements PPSFirstTenPricesLoading {
  const _$PPSFirstTenPricesLoading(this.pricesList);

  @override
  final List<Price> pricesList;

  @override
  String toString() {
    return 'ProducePricesState.firstTenPricesLoading(pricesList: $pricesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PPSFirstTenPricesLoading &&
            const DeepCollectionEquality()
                .equals(other.pricesList, pricesList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pricesList));

  @JsonKey(ignore: true)
  @override
  $PPSFirstTenPricesLoadingCopyWith<PPSFirstTenPricesLoading> get copyWith =>
      _$PPSFirstTenPricesLoadingCopyWithImpl<PPSFirstTenPricesLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Price> pricesList) initial,
    required TResult Function(List<Price> pricesList) firstTenPricesLoading,
    required TResult Function(List<Price> pricesList) firstTenPricesCompleted,
    required TResult Function(List<Price> pricesList) nextTenPricesLoading,
    required TResult Function(List<Price> pricesList) nextTenPricesCompleted,
    required TResult Function(List<Price> pricesList, Failure failure)
        pricesError,
  }) {
    return firstTenPricesLoading(pricesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Price> pricesList)? initial,
    TResult Function(List<Price> pricesList)? firstTenPricesLoading,
    TResult Function(List<Price> pricesList)? firstTenPricesCompleted,
    TResult Function(List<Price> pricesList)? nextTenPricesLoading,
    TResult Function(List<Price> pricesList)? nextTenPricesCompleted,
    TResult Function(List<Price> pricesList, Failure failure)? pricesError,
  }) {
    return firstTenPricesLoading?.call(pricesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Price> pricesList)? initial,
    TResult Function(List<Price> pricesList)? firstTenPricesLoading,
    TResult Function(List<Price> pricesList)? firstTenPricesCompleted,
    TResult Function(List<Price> pricesList)? nextTenPricesLoading,
    TResult Function(List<Price> pricesList)? nextTenPricesCompleted,
    TResult Function(List<Price> pricesList, Failure failure)? pricesError,
    required TResult orElse(),
  }) {
    if (firstTenPricesLoading != null) {
      return firstTenPricesLoading(pricesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PPSInitial value) initial,
    required TResult Function(PPSFirstTenPricesLoading value)
        firstTenPricesLoading,
    required TResult Function(PPSFirstTenPricesCompleted value)
        firstTenPricesCompleted,
    required TResult Function(PPSNextTenPricesLoading value)
        nextTenPricesLoading,
    required TResult Function(PPSNextTenPricesCompleted value)
        nextTenPricesCompleted,
    required TResult Function(PPSPricesError value) pricesError,
  }) {
    return firstTenPricesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PPSInitial value)? initial,
    TResult Function(PPSFirstTenPricesLoading value)? firstTenPricesLoading,
    TResult Function(PPSFirstTenPricesCompleted value)? firstTenPricesCompleted,
    TResult Function(PPSNextTenPricesLoading value)? nextTenPricesLoading,
    TResult Function(PPSNextTenPricesCompleted value)? nextTenPricesCompleted,
    TResult Function(PPSPricesError value)? pricesError,
  }) {
    return firstTenPricesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PPSInitial value)? initial,
    TResult Function(PPSFirstTenPricesLoading value)? firstTenPricesLoading,
    TResult Function(PPSFirstTenPricesCompleted value)? firstTenPricesCompleted,
    TResult Function(PPSNextTenPricesLoading value)? nextTenPricesLoading,
    TResult Function(PPSNextTenPricesCompleted value)? nextTenPricesCompleted,
    TResult Function(PPSPricesError value)? pricesError,
    required TResult orElse(),
  }) {
    if (firstTenPricesLoading != null) {
      return firstTenPricesLoading(this);
    }
    return orElse();
  }
}

abstract class PPSFirstTenPricesLoading implements ProducePricesState {
  const factory PPSFirstTenPricesLoading(List<Price> pricesList) =
      _$PPSFirstTenPricesLoading;

  @override
  List<Price> get pricesList;
  @override
  @JsonKey(ignore: true)
  $PPSFirstTenPricesLoadingCopyWith<PPSFirstTenPricesLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PPSFirstTenPricesCompletedCopyWith<$Res>
    implements $ProducePricesStateCopyWith<$Res> {
  factory $PPSFirstTenPricesCompletedCopyWith(PPSFirstTenPricesCompleted value,
          $Res Function(PPSFirstTenPricesCompleted) then) =
      _$PPSFirstTenPricesCompletedCopyWithImpl<$Res>;
  @override
  $Res call({List<Price> pricesList});
}

/// @nodoc
class _$PPSFirstTenPricesCompletedCopyWithImpl<$Res>
    extends _$ProducePricesStateCopyWithImpl<$Res>
    implements $PPSFirstTenPricesCompletedCopyWith<$Res> {
  _$PPSFirstTenPricesCompletedCopyWithImpl(PPSFirstTenPricesCompleted _value,
      $Res Function(PPSFirstTenPricesCompleted) _then)
      : super(_value, (v) => _then(v as PPSFirstTenPricesCompleted));

  @override
  PPSFirstTenPricesCompleted get _value =>
      super._value as PPSFirstTenPricesCompleted;

  @override
  $Res call({
    Object? pricesList = freezed,
  }) {
    return _then(PPSFirstTenPricesCompleted(
      pricesList == freezed
          ? _value.pricesList
          : pricesList // ignore: cast_nullable_to_non_nullable
              as List<Price>,
    ));
  }
}

/// @nodoc

class _$PPSFirstTenPricesCompleted implements PPSFirstTenPricesCompleted {
  const _$PPSFirstTenPricesCompleted(this.pricesList);

  @override
  final List<Price> pricesList;

  @override
  String toString() {
    return 'ProducePricesState.firstTenPricesCompleted(pricesList: $pricesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PPSFirstTenPricesCompleted &&
            const DeepCollectionEquality()
                .equals(other.pricesList, pricesList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pricesList));

  @JsonKey(ignore: true)
  @override
  $PPSFirstTenPricesCompletedCopyWith<PPSFirstTenPricesCompleted>
      get copyWith =>
          _$PPSFirstTenPricesCompletedCopyWithImpl<PPSFirstTenPricesCompleted>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Price> pricesList) initial,
    required TResult Function(List<Price> pricesList) firstTenPricesLoading,
    required TResult Function(List<Price> pricesList) firstTenPricesCompleted,
    required TResult Function(List<Price> pricesList) nextTenPricesLoading,
    required TResult Function(List<Price> pricesList) nextTenPricesCompleted,
    required TResult Function(List<Price> pricesList, Failure failure)
        pricesError,
  }) {
    return firstTenPricesCompleted(pricesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Price> pricesList)? initial,
    TResult Function(List<Price> pricesList)? firstTenPricesLoading,
    TResult Function(List<Price> pricesList)? firstTenPricesCompleted,
    TResult Function(List<Price> pricesList)? nextTenPricesLoading,
    TResult Function(List<Price> pricesList)? nextTenPricesCompleted,
    TResult Function(List<Price> pricesList, Failure failure)? pricesError,
  }) {
    return firstTenPricesCompleted?.call(pricesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Price> pricesList)? initial,
    TResult Function(List<Price> pricesList)? firstTenPricesLoading,
    TResult Function(List<Price> pricesList)? firstTenPricesCompleted,
    TResult Function(List<Price> pricesList)? nextTenPricesLoading,
    TResult Function(List<Price> pricesList)? nextTenPricesCompleted,
    TResult Function(List<Price> pricesList, Failure failure)? pricesError,
    required TResult orElse(),
  }) {
    if (firstTenPricesCompleted != null) {
      return firstTenPricesCompleted(pricesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PPSInitial value) initial,
    required TResult Function(PPSFirstTenPricesLoading value)
        firstTenPricesLoading,
    required TResult Function(PPSFirstTenPricesCompleted value)
        firstTenPricesCompleted,
    required TResult Function(PPSNextTenPricesLoading value)
        nextTenPricesLoading,
    required TResult Function(PPSNextTenPricesCompleted value)
        nextTenPricesCompleted,
    required TResult Function(PPSPricesError value) pricesError,
  }) {
    return firstTenPricesCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PPSInitial value)? initial,
    TResult Function(PPSFirstTenPricesLoading value)? firstTenPricesLoading,
    TResult Function(PPSFirstTenPricesCompleted value)? firstTenPricesCompleted,
    TResult Function(PPSNextTenPricesLoading value)? nextTenPricesLoading,
    TResult Function(PPSNextTenPricesCompleted value)? nextTenPricesCompleted,
    TResult Function(PPSPricesError value)? pricesError,
  }) {
    return firstTenPricesCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PPSInitial value)? initial,
    TResult Function(PPSFirstTenPricesLoading value)? firstTenPricesLoading,
    TResult Function(PPSFirstTenPricesCompleted value)? firstTenPricesCompleted,
    TResult Function(PPSNextTenPricesLoading value)? nextTenPricesLoading,
    TResult Function(PPSNextTenPricesCompleted value)? nextTenPricesCompleted,
    TResult Function(PPSPricesError value)? pricesError,
    required TResult orElse(),
  }) {
    if (firstTenPricesCompleted != null) {
      return firstTenPricesCompleted(this);
    }
    return orElse();
  }
}

abstract class PPSFirstTenPricesCompleted implements ProducePricesState {
  const factory PPSFirstTenPricesCompleted(List<Price> pricesList) =
      _$PPSFirstTenPricesCompleted;

  @override
  List<Price> get pricesList;
  @override
  @JsonKey(ignore: true)
  $PPSFirstTenPricesCompletedCopyWith<PPSFirstTenPricesCompleted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PPSNextTenPricesLoadingCopyWith<$Res>
    implements $ProducePricesStateCopyWith<$Res> {
  factory $PPSNextTenPricesLoadingCopyWith(PPSNextTenPricesLoading value,
          $Res Function(PPSNextTenPricesLoading) then) =
      _$PPSNextTenPricesLoadingCopyWithImpl<$Res>;
  @override
  $Res call({List<Price> pricesList});
}

/// @nodoc
class _$PPSNextTenPricesLoadingCopyWithImpl<$Res>
    extends _$ProducePricesStateCopyWithImpl<$Res>
    implements $PPSNextTenPricesLoadingCopyWith<$Res> {
  _$PPSNextTenPricesLoadingCopyWithImpl(PPSNextTenPricesLoading _value,
      $Res Function(PPSNextTenPricesLoading) _then)
      : super(_value, (v) => _then(v as PPSNextTenPricesLoading));

  @override
  PPSNextTenPricesLoading get _value => super._value as PPSNextTenPricesLoading;

  @override
  $Res call({
    Object? pricesList = freezed,
  }) {
    return _then(PPSNextTenPricesLoading(
      pricesList == freezed
          ? _value.pricesList
          : pricesList // ignore: cast_nullable_to_non_nullable
              as List<Price>,
    ));
  }
}

/// @nodoc

class _$PPSNextTenPricesLoading implements PPSNextTenPricesLoading {
  const _$PPSNextTenPricesLoading(this.pricesList);

  @override
  final List<Price> pricesList;

  @override
  String toString() {
    return 'ProducePricesState.nextTenPricesLoading(pricesList: $pricesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PPSNextTenPricesLoading &&
            const DeepCollectionEquality()
                .equals(other.pricesList, pricesList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pricesList));

  @JsonKey(ignore: true)
  @override
  $PPSNextTenPricesLoadingCopyWith<PPSNextTenPricesLoading> get copyWith =>
      _$PPSNextTenPricesLoadingCopyWithImpl<PPSNextTenPricesLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Price> pricesList) initial,
    required TResult Function(List<Price> pricesList) firstTenPricesLoading,
    required TResult Function(List<Price> pricesList) firstTenPricesCompleted,
    required TResult Function(List<Price> pricesList) nextTenPricesLoading,
    required TResult Function(List<Price> pricesList) nextTenPricesCompleted,
    required TResult Function(List<Price> pricesList, Failure failure)
        pricesError,
  }) {
    return nextTenPricesLoading(pricesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Price> pricesList)? initial,
    TResult Function(List<Price> pricesList)? firstTenPricesLoading,
    TResult Function(List<Price> pricesList)? firstTenPricesCompleted,
    TResult Function(List<Price> pricesList)? nextTenPricesLoading,
    TResult Function(List<Price> pricesList)? nextTenPricesCompleted,
    TResult Function(List<Price> pricesList, Failure failure)? pricesError,
  }) {
    return nextTenPricesLoading?.call(pricesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Price> pricesList)? initial,
    TResult Function(List<Price> pricesList)? firstTenPricesLoading,
    TResult Function(List<Price> pricesList)? firstTenPricesCompleted,
    TResult Function(List<Price> pricesList)? nextTenPricesLoading,
    TResult Function(List<Price> pricesList)? nextTenPricesCompleted,
    TResult Function(List<Price> pricesList, Failure failure)? pricesError,
    required TResult orElse(),
  }) {
    if (nextTenPricesLoading != null) {
      return nextTenPricesLoading(pricesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PPSInitial value) initial,
    required TResult Function(PPSFirstTenPricesLoading value)
        firstTenPricesLoading,
    required TResult Function(PPSFirstTenPricesCompleted value)
        firstTenPricesCompleted,
    required TResult Function(PPSNextTenPricesLoading value)
        nextTenPricesLoading,
    required TResult Function(PPSNextTenPricesCompleted value)
        nextTenPricesCompleted,
    required TResult Function(PPSPricesError value) pricesError,
  }) {
    return nextTenPricesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PPSInitial value)? initial,
    TResult Function(PPSFirstTenPricesLoading value)? firstTenPricesLoading,
    TResult Function(PPSFirstTenPricesCompleted value)? firstTenPricesCompleted,
    TResult Function(PPSNextTenPricesLoading value)? nextTenPricesLoading,
    TResult Function(PPSNextTenPricesCompleted value)? nextTenPricesCompleted,
    TResult Function(PPSPricesError value)? pricesError,
  }) {
    return nextTenPricesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PPSInitial value)? initial,
    TResult Function(PPSFirstTenPricesLoading value)? firstTenPricesLoading,
    TResult Function(PPSFirstTenPricesCompleted value)? firstTenPricesCompleted,
    TResult Function(PPSNextTenPricesLoading value)? nextTenPricesLoading,
    TResult Function(PPSNextTenPricesCompleted value)? nextTenPricesCompleted,
    TResult Function(PPSPricesError value)? pricesError,
    required TResult orElse(),
  }) {
    if (nextTenPricesLoading != null) {
      return nextTenPricesLoading(this);
    }
    return orElse();
  }
}

abstract class PPSNextTenPricesLoading implements ProducePricesState {
  const factory PPSNextTenPricesLoading(List<Price> pricesList) =
      _$PPSNextTenPricesLoading;

  @override
  List<Price> get pricesList;
  @override
  @JsonKey(ignore: true)
  $PPSNextTenPricesLoadingCopyWith<PPSNextTenPricesLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PPSNextTenPricesCompletedCopyWith<$Res>
    implements $ProducePricesStateCopyWith<$Res> {
  factory $PPSNextTenPricesCompletedCopyWith(PPSNextTenPricesCompleted value,
          $Res Function(PPSNextTenPricesCompleted) then) =
      _$PPSNextTenPricesCompletedCopyWithImpl<$Res>;
  @override
  $Res call({List<Price> pricesList});
}

/// @nodoc
class _$PPSNextTenPricesCompletedCopyWithImpl<$Res>
    extends _$ProducePricesStateCopyWithImpl<$Res>
    implements $PPSNextTenPricesCompletedCopyWith<$Res> {
  _$PPSNextTenPricesCompletedCopyWithImpl(PPSNextTenPricesCompleted _value,
      $Res Function(PPSNextTenPricesCompleted) _then)
      : super(_value, (v) => _then(v as PPSNextTenPricesCompleted));

  @override
  PPSNextTenPricesCompleted get _value =>
      super._value as PPSNextTenPricesCompleted;

  @override
  $Res call({
    Object? pricesList = freezed,
  }) {
    return _then(PPSNextTenPricesCompleted(
      pricesList == freezed
          ? _value.pricesList
          : pricesList // ignore: cast_nullable_to_non_nullable
              as List<Price>,
    ));
  }
}

/// @nodoc

class _$PPSNextTenPricesCompleted implements PPSNextTenPricesCompleted {
  const _$PPSNextTenPricesCompleted(this.pricesList);

  @override
  final List<Price> pricesList;

  @override
  String toString() {
    return 'ProducePricesState.nextTenPricesCompleted(pricesList: $pricesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PPSNextTenPricesCompleted &&
            const DeepCollectionEquality()
                .equals(other.pricesList, pricesList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pricesList));

  @JsonKey(ignore: true)
  @override
  $PPSNextTenPricesCompletedCopyWith<PPSNextTenPricesCompleted> get copyWith =>
      _$PPSNextTenPricesCompletedCopyWithImpl<PPSNextTenPricesCompleted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Price> pricesList) initial,
    required TResult Function(List<Price> pricesList) firstTenPricesLoading,
    required TResult Function(List<Price> pricesList) firstTenPricesCompleted,
    required TResult Function(List<Price> pricesList) nextTenPricesLoading,
    required TResult Function(List<Price> pricesList) nextTenPricesCompleted,
    required TResult Function(List<Price> pricesList, Failure failure)
        pricesError,
  }) {
    return nextTenPricesCompleted(pricesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Price> pricesList)? initial,
    TResult Function(List<Price> pricesList)? firstTenPricesLoading,
    TResult Function(List<Price> pricesList)? firstTenPricesCompleted,
    TResult Function(List<Price> pricesList)? nextTenPricesLoading,
    TResult Function(List<Price> pricesList)? nextTenPricesCompleted,
    TResult Function(List<Price> pricesList, Failure failure)? pricesError,
  }) {
    return nextTenPricesCompleted?.call(pricesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Price> pricesList)? initial,
    TResult Function(List<Price> pricesList)? firstTenPricesLoading,
    TResult Function(List<Price> pricesList)? firstTenPricesCompleted,
    TResult Function(List<Price> pricesList)? nextTenPricesLoading,
    TResult Function(List<Price> pricesList)? nextTenPricesCompleted,
    TResult Function(List<Price> pricesList, Failure failure)? pricesError,
    required TResult orElse(),
  }) {
    if (nextTenPricesCompleted != null) {
      return nextTenPricesCompleted(pricesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PPSInitial value) initial,
    required TResult Function(PPSFirstTenPricesLoading value)
        firstTenPricesLoading,
    required TResult Function(PPSFirstTenPricesCompleted value)
        firstTenPricesCompleted,
    required TResult Function(PPSNextTenPricesLoading value)
        nextTenPricesLoading,
    required TResult Function(PPSNextTenPricesCompleted value)
        nextTenPricesCompleted,
    required TResult Function(PPSPricesError value) pricesError,
  }) {
    return nextTenPricesCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PPSInitial value)? initial,
    TResult Function(PPSFirstTenPricesLoading value)? firstTenPricesLoading,
    TResult Function(PPSFirstTenPricesCompleted value)? firstTenPricesCompleted,
    TResult Function(PPSNextTenPricesLoading value)? nextTenPricesLoading,
    TResult Function(PPSNextTenPricesCompleted value)? nextTenPricesCompleted,
    TResult Function(PPSPricesError value)? pricesError,
  }) {
    return nextTenPricesCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PPSInitial value)? initial,
    TResult Function(PPSFirstTenPricesLoading value)? firstTenPricesLoading,
    TResult Function(PPSFirstTenPricesCompleted value)? firstTenPricesCompleted,
    TResult Function(PPSNextTenPricesLoading value)? nextTenPricesLoading,
    TResult Function(PPSNextTenPricesCompleted value)? nextTenPricesCompleted,
    TResult Function(PPSPricesError value)? pricesError,
    required TResult orElse(),
  }) {
    if (nextTenPricesCompleted != null) {
      return nextTenPricesCompleted(this);
    }
    return orElse();
  }
}

abstract class PPSNextTenPricesCompleted implements ProducePricesState {
  const factory PPSNextTenPricesCompleted(List<Price> pricesList) =
      _$PPSNextTenPricesCompleted;

  @override
  List<Price> get pricesList;
  @override
  @JsonKey(ignore: true)
  $PPSNextTenPricesCompletedCopyWith<PPSNextTenPricesCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PPSPricesErrorCopyWith<$Res>
    implements $ProducePricesStateCopyWith<$Res> {
  factory $PPSPricesErrorCopyWith(
          PPSPricesError value, $Res Function(PPSPricesError) then) =
      _$PPSPricesErrorCopyWithImpl<$Res>;
  @override
  $Res call({List<Price> pricesList, Failure failure});
}

/// @nodoc
class _$PPSPricesErrorCopyWithImpl<$Res>
    extends _$ProducePricesStateCopyWithImpl<$Res>
    implements $PPSPricesErrorCopyWith<$Res> {
  _$PPSPricesErrorCopyWithImpl(
      PPSPricesError _value, $Res Function(PPSPricesError) _then)
      : super(_value, (v) => _then(v as PPSPricesError));

  @override
  PPSPricesError get _value => super._value as PPSPricesError;

  @override
  $Res call({
    Object? pricesList = freezed,
    Object? failure = freezed,
  }) {
    return _then(PPSPricesError(
      pricesList == freezed
          ? _value.pricesList
          : pricesList // ignore: cast_nullable_to_non_nullable
              as List<Price>,
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$PPSPricesError implements PPSPricesError {
  const _$PPSPricesError(this.pricesList, this.failure);

  @override
  final List<Price> pricesList;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'ProducePricesState.pricesError(pricesList: $pricesList, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PPSPricesError &&
            const DeepCollectionEquality()
                .equals(other.pricesList, pricesList) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(pricesList), failure);

  @JsonKey(ignore: true)
  @override
  $PPSPricesErrorCopyWith<PPSPricesError> get copyWith =>
      _$PPSPricesErrorCopyWithImpl<PPSPricesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Price> pricesList) initial,
    required TResult Function(List<Price> pricesList) firstTenPricesLoading,
    required TResult Function(List<Price> pricesList) firstTenPricesCompleted,
    required TResult Function(List<Price> pricesList) nextTenPricesLoading,
    required TResult Function(List<Price> pricesList) nextTenPricesCompleted,
    required TResult Function(List<Price> pricesList, Failure failure)
        pricesError,
  }) {
    return pricesError(pricesList, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Price> pricesList)? initial,
    TResult Function(List<Price> pricesList)? firstTenPricesLoading,
    TResult Function(List<Price> pricesList)? firstTenPricesCompleted,
    TResult Function(List<Price> pricesList)? nextTenPricesLoading,
    TResult Function(List<Price> pricesList)? nextTenPricesCompleted,
    TResult Function(List<Price> pricesList, Failure failure)? pricesError,
  }) {
    return pricesError?.call(pricesList, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Price> pricesList)? initial,
    TResult Function(List<Price> pricesList)? firstTenPricesLoading,
    TResult Function(List<Price> pricesList)? firstTenPricesCompleted,
    TResult Function(List<Price> pricesList)? nextTenPricesLoading,
    TResult Function(List<Price> pricesList)? nextTenPricesCompleted,
    TResult Function(List<Price> pricesList, Failure failure)? pricesError,
    required TResult orElse(),
  }) {
    if (pricesError != null) {
      return pricesError(pricesList, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PPSInitial value) initial,
    required TResult Function(PPSFirstTenPricesLoading value)
        firstTenPricesLoading,
    required TResult Function(PPSFirstTenPricesCompleted value)
        firstTenPricesCompleted,
    required TResult Function(PPSNextTenPricesLoading value)
        nextTenPricesLoading,
    required TResult Function(PPSNextTenPricesCompleted value)
        nextTenPricesCompleted,
    required TResult Function(PPSPricesError value) pricesError,
  }) {
    return pricesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PPSInitial value)? initial,
    TResult Function(PPSFirstTenPricesLoading value)? firstTenPricesLoading,
    TResult Function(PPSFirstTenPricesCompleted value)? firstTenPricesCompleted,
    TResult Function(PPSNextTenPricesLoading value)? nextTenPricesLoading,
    TResult Function(PPSNextTenPricesCompleted value)? nextTenPricesCompleted,
    TResult Function(PPSPricesError value)? pricesError,
  }) {
    return pricesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PPSInitial value)? initial,
    TResult Function(PPSFirstTenPricesLoading value)? firstTenPricesLoading,
    TResult Function(PPSFirstTenPricesCompleted value)? firstTenPricesCompleted,
    TResult Function(PPSNextTenPricesLoading value)? nextTenPricesLoading,
    TResult Function(PPSNextTenPricesCompleted value)? nextTenPricesCompleted,
    TResult Function(PPSPricesError value)? pricesError,
    required TResult orElse(),
  }) {
    if (pricesError != null) {
      return pricesError(this);
    }
    return orElse();
  }
}

abstract class PPSPricesError implements ProducePricesState {
  const factory PPSPricesError(List<Price> pricesList, Failure failure) =
      _$PPSPricesError;

  @override
  List<Price> get pricesList;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  $PPSPricesErrorCopyWith<PPSPricesError> get copyWith =>
      throw _privateConstructorUsedError;
}
