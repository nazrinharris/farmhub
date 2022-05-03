// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'playground_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaygroundStateTearOff {
  const _$PlaygroundStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  CreateCompleted createCompleted(Produce produce) {
    return CreateCompleted(
      produce,
    );
  }

  AddPriceCompleted addPriceCompleted(Produce produce) {
    return AddPriceCompleted(
      produce,
    );
  }

  GetPricesCompleted getPricesCompleted(List<PriceSnippet> pricesList) {
    return GetPricesCompleted(
      pricesList,
    );
  }

  Error error(Failure failure) {
    return Error(
      failure,
    );
  }
}

/// @nodoc
const $PlaygroundState = _$PlaygroundStateTearOff();

/// @nodoc
mixin _$PlaygroundState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Produce produce) createCompleted,
    required TResult Function(Produce produce) addPriceCompleted,
    required TResult Function(List<PriceSnippet> pricesList) getPricesCompleted,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Produce produce)? createCompleted,
    TResult Function(Produce produce)? addPriceCompleted,
    TResult Function(List<PriceSnippet> pricesList)? getPricesCompleted,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Produce produce)? createCompleted,
    TResult Function(Produce produce)? addPriceCompleted,
    TResult Function(List<PriceSnippet> pricesList)? getPricesCompleted,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(CreateCompleted value) createCompleted,
    required TResult Function(AddPriceCompleted value) addPriceCompleted,
    required TResult Function(GetPricesCompleted value) getPricesCompleted,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(CreateCompleted value)? createCompleted,
    TResult Function(AddPriceCompleted value)? addPriceCompleted,
    TResult Function(GetPricesCompleted value)? getPricesCompleted,
    TResult Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(CreateCompleted value)? createCompleted,
    TResult Function(AddPriceCompleted value)? addPriceCompleted,
    TResult Function(GetPricesCompleted value)? getPricesCompleted,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaygroundStateCopyWith<$Res> {
  factory $PlaygroundStateCopyWith(
          PlaygroundState value, $Res Function(PlaygroundState) then) =
      _$PlaygroundStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlaygroundStateCopyWithImpl<$Res>
    implements $PlaygroundStateCopyWith<$Res> {
  _$PlaygroundStateCopyWithImpl(this._value, this._then);

  final PlaygroundState _value;
  // ignore: unused_field
  final $Res Function(PlaygroundState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$PlaygroundStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'PlaygroundState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Produce produce) createCompleted,
    required TResult Function(Produce produce) addPriceCompleted,
    required TResult Function(List<PriceSnippet> pricesList) getPricesCompleted,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Produce produce)? createCompleted,
    TResult Function(Produce produce)? addPriceCompleted,
    TResult Function(List<PriceSnippet> pricesList)? getPricesCompleted,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Produce produce)? createCompleted,
    TResult Function(Produce produce)? addPriceCompleted,
    TResult Function(List<PriceSnippet> pricesList)? getPricesCompleted,
    TResult Function(Failure failure)? error,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(CreateCompleted value) createCompleted,
    required TResult Function(AddPriceCompleted value) addPriceCompleted,
    required TResult Function(GetPricesCompleted value) getPricesCompleted,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(CreateCompleted value)? createCompleted,
    TResult Function(AddPriceCompleted value)? addPriceCompleted,
    TResult Function(GetPricesCompleted value)? getPricesCompleted,
    TResult Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(CreateCompleted value)? createCompleted,
    TResult Function(AddPriceCompleted value)? addPriceCompleted,
    TResult Function(GetPricesCompleted value)? getPricesCompleted,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements PlaygroundState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$PlaygroundStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'PlaygroundState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Produce produce) createCompleted,
    required TResult Function(Produce produce) addPriceCompleted,
    required TResult Function(List<PriceSnippet> pricesList) getPricesCompleted,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Produce produce)? createCompleted,
    TResult Function(Produce produce)? addPriceCompleted,
    TResult Function(List<PriceSnippet> pricesList)? getPricesCompleted,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Produce produce)? createCompleted,
    TResult Function(Produce produce)? addPriceCompleted,
    TResult Function(List<PriceSnippet> pricesList)? getPricesCompleted,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(CreateCompleted value) createCompleted,
    required TResult Function(AddPriceCompleted value) addPriceCompleted,
    required TResult Function(GetPricesCompleted value) getPricesCompleted,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(CreateCompleted value)? createCompleted,
    TResult Function(AddPriceCompleted value)? addPriceCompleted,
    TResult Function(GetPricesCompleted value)? getPricesCompleted,
    TResult Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(CreateCompleted value)? createCompleted,
    TResult Function(AddPriceCompleted value)? addPriceCompleted,
    TResult Function(GetPricesCompleted value)? getPricesCompleted,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements PlaygroundState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $CreateCompletedCopyWith<$Res> {
  factory $CreateCompletedCopyWith(
          CreateCompleted value, $Res Function(CreateCompleted) then) =
      _$CreateCompletedCopyWithImpl<$Res>;
  $Res call({Produce produce});

  $ProduceCopyWith<$Res> get produce;
}

/// @nodoc
class _$CreateCompletedCopyWithImpl<$Res>
    extends _$PlaygroundStateCopyWithImpl<$Res>
    implements $CreateCompletedCopyWith<$Res> {
  _$CreateCompletedCopyWithImpl(
      CreateCompleted _value, $Res Function(CreateCompleted) _then)
      : super(_value, (v) => _then(v as CreateCompleted));

  @override
  CreateCompleted get _value => super._value as CreateCompleted;

  @override
  $Res call({
    Object? produce = freezed,
  }) {
    return _then(CreateCompleted(
      produce == freezed
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

class _$CreateCompleted implements CreateCompleted {
  const _$CreateCompleted(this.produce);

  @override
  final Produce produce;

  @override
  String toString() {
    return 'PlaygroundState.createCompleted(produce: $produce)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateCompleted &&
            (identical(other.produce, produce) || other.produce == produce));
  }

  @override
  int get hashCode => Object.hash(runtimeType, produce);

  @JsonKey(ignore: true)
  @override
  $CreateCompletedCopyWith<CreateCompleted> get copyWith =>
      _$CreateCompletedCopyWithImpl<CreateCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Produce produce) createCompleted,
    required TResult Function(Produce produce) addPriceCompleted,
    required TResult Function(List<PriceSnippet> pricesList) getPricesCompleted,
    required TResult Function(Failure failure) error,
  }) {
    return createCompleted(produce);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Produce produce)? createCompleted,
    TResult Function(Produce produce)? addPriceCompleted,
    TResult Function(List<PriceSnippet> pricesList)? getPricesCompleted,
    TResult Function(Failure failure)? error,
  }) {
    return createCompleted?.call(produce);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Produce produce)? createCompleted,
    TResult Function(Produce produce)? addPriceCompleted,
    TResult Function(List<PriceSnippet> pricesList)? getPricesCompleted,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (createCompleted != null) {
      return createCompleted(produce);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(CreateCompleted value) createCompleted,
    required TResult Function(AddPriceCompleted value) addPriceCompleted,
    required TResult Function(GetPricesCompleted value) getPricesCompleted,
    required TResult Function(Error value) error,
  }) {
    return createCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(CreateCompleted value)? createCompleted,
    TResult Function(AddPriceCompleted value)? addPriceCompleted,
    TResult Function(GetPricesCompleted value)? getPricesCompleted,
    TResult Function(Error value)? error,
  }) {
    return createCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(CreateCompleted value)? createCompleted,
    TResult Function(AddPriceCompleted value)? addPriceCompleted,
    TResult Function(GetPricesCompleted value)? getPricesCompleted,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (createCompleted != null) {
      return createCompleted(this);
    }
    return orElse();
  }
}

abstract class CreateCompleted implements PlaygroundState {
  const factory CreateCompleted(Produce produce) = _$CreateCompleted;

  Produce get produce;
  @JsonKey(ignore: true)
  $CreateCompletedCopyWith<CreateCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPriceCompletedCopyWith<$Res> {
  factory $AddPriceCompletedCopyWith(
          AddPriceCompleted value, $Res Function(AddPriceCompleted) then) =
      _$AddPriceCompletedCopyWithImpl<$Res>;
  $Res call({Produce produce});

  $ProduceCopyWith<$Res> get produce;
}

/// @nodoc
class _$AddPriceCompletedCopyWithImpl<$Res>
    extends _$PlaygroundStateCopyWithImpl<$Res>
    implements $AddPriceCompletedCopyWith<$Res> {
  _$AddPriceCompletedCopyWithImpl(
      AddPriceCompleted _value, $Res Function(AddPriceCompleted) _then)
      : super(_value, (v) => _then(v as AddPriceCompleted));

  @override
  AddPriceCompleted get _value => super._value as AddPriceCompleted;

  @override
  $Res call({
    Object? produce = freezed,
  }) {
    return _then(AddPriceCompleted(
      produce == freezed
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

class _$AddPriceCompleted implements AddPriceCompleted {
  const _$AddPriceCompleted(this.produce);

  @override
  final Produce produce;

  @override
  String toString() {
    return 'PlaygroundState.addPriceCompleted(produce: $produce)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddPriceCompleted &&
            (identical(other.produce, produce) || other.produce == produce));
  }

  @override
  int get hashCode => Object.hash(runtimeType, produce);

  @JsonKey(ignore: true)
  @override
  $AddPriceCompletedCopyWith<AddPriceCompleted> get copyWith =>
      _$AddPriceCompletedCopyWithImpl<AddPriceCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Produce produce) createCompleted,
    required TResult Function(Produce produce) addPriceCompleted,
    required TResult Function(List<PriceSnippet> pricesList) getPricesCompleted,
    required TResult Function(Failure failure) error,
  }) {
    return addPriceCompleted(produce);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Produce produce)? createCompleted,
    TResult Function(Produce produce)? addPriceCompleted,
    TResult Function(List<PriceSnippet> pricesList)? getPricesCompleted,
    TResult Function(Failure failure)? error,
  }) {
    return addPriceCompleted?.call(produce);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Produce produce)? createCompleted,
    TResult Function(Produce produce)? addPriceCompleted,
    TResult Function(List<PriceSnippet> pricesList)? getPricesCompleted,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (addPriceCompleted != null) {
      return addPriceCompleted(produce);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(CreateCompleted value) createCompleted,
    required TResult Function(AddPriceCompleted value) addPriceCompleted,
    required TResult Function(GetPricesCompleted value) getPricesCompleted,
    required TResult Function(Error value) error,
  }) {
    return addPriceCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(CreateCompleted value)? createCompleted,
    TResult Function(AddPriceCompleted value)? addPriceCompleted,
    TResult Function(GetPricesCompleted value)? getPricesCompleted,
    TResult Function(Error value)? error,
  }) {
    return addPriceCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(CreateCompleted value)? createCompleted,
    TResult Function(AddPriceCompleted value)? addPriceCompleted,
    TResult Function(GetPricesCompleted value)? getPricesCompleted,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (addPriceCompleted != null) {
      return addPriceCompleted(this);
    }
    return orElse();
  }
}

abstract class AddPriceCompleted implements PlaygroundState {
  const factory AddPriceCompleted(Produce produce) = _$AddPriceCompleted;

  Produce get produce;
  @JsonKey(ignore: true)
  $AddPriceCompletedCopyWith<AddPriceCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPricesCompletedCopyWith<$Res> {
  factory $GetPricesCompletedCopyWith(
          GetPricesCompleted value, $Res Function(GetPricesCompleted) then) =
      _$GetPricesCompletedCopyWithImpl<$Res>;
  $Res call({List<PriceSnippet> pricesList});
}

/// @nodoc
class _$GetPricesCompletedCopyWithImpl<$Res>
    extends _$PlaygroundStateCopyWithImpl<$Res>
    implements $GetPricesCompletedCopyWith<$Res> {
  _$GetPricesCompletedCopyWithImpl(
      GetPricesCompleted _value, $Res Function(GetPricesCompleted) _then)
      : super(_value, (v) => _then(v as GetPricesCompleted));

  @override
  GetPricesCompleted get _value => super._value as GetPricesCompleted;

  @override
  $Res call({
    Object? pricesList = freezed,
  }) {
    return _then(GetPricesCompleted(
      pricesList == freezed
          ? _value.pricesList
          : pricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceSnippet>,
    ));
  }
}

/// @nodoc

class _$GetPricesCompleted implements GetPricesCompleted {
  const _$GetPricesCompleted(this.pricesList);

  @override
  final List<PriceSnippet> pricesList;

  @override
  String toString() {
    return 'PlaygroundState.getPricesCompleted(pricesList: $pricesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetPricesCompleted &&
            const DeepCollectionEquality()
                .equals(other.pricesList, pricesList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pricesList));

  @JsonKey(ignore: true)
  @override
  $GetPricesCompletedCopyWith<GetPricesCompleted> get copyWith =>
      _$GetPricesCompletedCopyWithImpl<GetPricesCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Produce produce) createCompleted,
    required TResult Function(Produce produce) addPriceCompleted,
    required TResult Function(List<PriceSnippet> pricesList) getPricesCompleted,
    required TResult Function(Failure failure) error,
  }) {
    return getPricesCompleted(pricesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Produce produce)? createCompleted,
    TResult Function(Produce produce)? addPriceCompleted,
    TResult Function(List<PriceSnippet> pricesList)? getPricesCompleted,
    TResult Function(Failure failure)? error,
  }) {
    return getPricesCompleted?.call(pricesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Produce produce)? createCompleted,
    TResult Function(Produce produce)? addPriceCompleted,
    TResult Function(List<PriceSnippet> pricesList)? getPricesCompleted,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (getPricesCompleted != null) {
      return getPricesCompleted(pricesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(CreateCompleted value) createCompleted,
    required TResult Function(AddPriceCompleted value) addPriceCompleted,
    required TResult Function(GetPricesCompleted value) getPricesCompleted,
    required TResult Function(Error value) error,
  }) {
    return getPricesCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(CreateCompleted value)? createCompleted,
    TResult Function(AddPriceCompleted value)? addPriceCompleted,
    TResult Function(GetPricesCompleted value)? getPricesCompleted,
    TResult Function(Error value)? error,
  }) {
    return getPricesCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(CreateCompleted value)? createCompleted,
    TResult Function(AddPriceCompleted value)? addPriceCompleted,
    TResult Function(GetPricesCompleted value)? getPricesCompleted,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (getPricesCompleted != null) {
      return getPricesCompleted(this);
    }
    return orElse();
  }
}

abstract class GetPricesCompleted implements PlaygroundState {
  const factory GetPricesCompleted(List<PriceSnippet> pricesList) =
      _$GetPricesCompleted;

  List<PriceSnippet> get pricesList;
  @JsonKey(ignore: true)
  $GetPricesCompletedCopyWith<GetPricesCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$PlaygroundStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(Error(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'PlaygroundState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Produce produce) createCompleted,
    required TResult Function(Produce produce) addPriceCompleted,
    required TResult Function(List<PriceSnippet> pricesList) getPricesCompleted,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Produce produce)? createCompleted,
    TResult Function(Produce produce)? addPriceCompleted,
    TResult Function(List<PriceSnippet> pricesList)? getPricesCompleted,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Produce produce)? createCompleted,
    TResult Function(Produce produce)? addPriceCompleted,
    TResult Function(List<PriceSnippet> pricesList)? getPricesCompleted,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(CreateCompleted value) createCompleted,
    required TResult Function(AddPriceCompleted value) addPriceCompleted,
    required TResult Function(GetPricesCompleted value) getPricesCompleted,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(CreateCompleted value)? createCompleted,
    TResult Function(AddPriceCompleted value)? addPriceCompleted,
    TResult Function(GetPricesCompleted value)? getPricesCompleted,
    TResult Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(CreateCompleted value)? createCompleted,
    TResult Function(AddPriceCompleted value)? addPriceCompleted,
    TResult Function(GetPricesCompleted value)? getPricesCompleted,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements PlaygroundState {
  const factory Error(Failure failure) = _$Error;

  Failure get failure;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
