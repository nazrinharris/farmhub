// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'farm_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FarmScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createFarmLoading,
    required TResult Function(Farm farm) createFarmSuccess,
    required TResult Function(Failure failure) createFarmError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createFarmLoading,
    TResult Function(Farm farm)? createFarmSuccess,
    TResult Function(Failure failure)? createFarmError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createFarmLoading,
    TResult Function(Farm farm)? createFarmSuccess,
    TResult Function(Failure failure)? createFarmError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CreateFarmLoading value) createFarmLoading,
    required TResult Function(CreateFarmSuccess value) createFarmSuccess,
    required TResult Function(CreateFarmError value) createFarmError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateFarmLoading value)? createFarmLoading,
    TResult Function(CreateFarmSuccess value)? createFarmSuccess,
    TResult Function(CreateFarmError value)? createFarmError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateFarmLoading value)? createFarmLoading,
    TResult Function(CreateFarmSuccess value)? createFarmSuccess,
    TResult Function(CreateFarmError value)? createFarmError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmScreenStateCopyWith<$Res> {
  factory $FarmScreenStateCopyWith(
          FarmScreenState value, $Res Function(FarmScreenState) then) =
      _$FarmScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FarmScreenStateCopyWithImpl<$Res>
    implements $FarmScreenStateCopyWith<$Res> {
  _$FarmScreenStateCopyWithImpl(this._value, this._then);

  final FarmScreenState _value;
  // ignore: unused_field
  final $Res Function(FarmScreenState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$FarmScreenStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FarmScreenState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createFarmLoading,
    required TResult Function(Farm farm) createFarmSuccess,
    required TResult Function(Failure failure) createFarmError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createFarmLoading,
    TResult Function(Farm farm)? createFarmSuccess,
    TResult Function(Failure failure)? createFarmError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createFarmLoading,
    TResult Function(Farm farm)? createFarmSuccess,
    TResult Function(Failure failure)? createFarmError,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(CreateFarmLoading value) createFarmLoading,
    required TResult Function(CreateFarmSuccess value) createFarmSuccess,
    required TResult Function(CreateFarmError value) createFarmError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateFarmLoading value)? createFarmLoading,
    TResult Function(CreateFarmSuccess value)? createFarmSuccess,
    TResult Function(CreateFarmError value)? createFarmError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateFarmLoading value)? createFarmLoading,
    TResult Function(CreateFarmSuccess value)? createFarmSuccess,
    TResult Function(CreateFarmError value)? createFarmError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FarmScreenState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$CreateFarmLoadingCopyWith<$Res> {
  factory _$$CreateFarmLoadingCopyWith(
          _$CreateFarmLoading value, $Res Function(_$CreateFarmLoading) then) =
      __$$CreateFarmLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateFarmLoadingCopyWithImpl<$Res>
    extends _$FarmScreenStateCopyWithImpl<$Res>
    implements _$$CreateFarmLoadingCopyWith<$Res> {
  __$$CreateFarmLoadingCopyWithImpl(
      _$CreateFarmLoading _value, $Res Function(_$CreateFarmLoading) _then)
      : super(_value, (v) => _then(v as _$CreateFarmLoading));

  @override
  _$CreateFarmLoading get _value => super._value as _$CreateFarmLoading;
}

/// @nodoc

class _$CreateFarmLoading implements CreateFarmLoading {
  const _$CreateFarmLoading();

  @override
  String toString() {
    return 'FarmScreenState.createFarmLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateFarmLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createFarmLoading,
    required TResult Function(Farm farm) createFarmSuccess,
    required TResult Function(Failure failure) createFarmError,
  }) {
    return createFarmLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createFarmLoading,
    TResult Function(Farm farm)? createFarmSuccess,
    TResult Function(Failure failure)? createFarmError,
  }) {
    return createFarmLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createFarmLoading,
    TResult Function(Farm farm)? createFarmSuccess,
    TResult Function(Failure failure)? createFarmError,
    required TResult orElse(),
  }) {
    if (createFarmLoading != null) {
      return createFarmLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CreateFarmLoading value) createFarmLoading,
    required TResult Function(CreateFarmSuccess value) createFarmSuccess,
    required TResult Function(CreateFarmError value) createFarmError,
  }) {
    return createFarmLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateFarmLoading value)? createFarmLoading,
    TResult Function(CreateFarmSuccess value)? createFarmSuccess,
    TResult Function(CreateFarmError value)? createFarmError,
  }) {
    return createFarmLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateFarmLoading value)? createFarmLoading,
    TResult Function(CreateFarmSuccess value)? createFarmSuccess,
    TResult Function(CreateFarmError value)? createFarmError,
    required TResult orElse(),
  }) {
    if (createFarmLoading != null) {
      return createFarmLoading(this);
    }
    return orElse();
  }
}

abstract class CreateFarmLoading implements FarmScreenState {
  const factory CreateFarmLoading() = _$CreateFarmLoading;
}

/// @nodoc
abstract class _$$CreateFarmSuccessCopyWith<$Res> {
  factory _$$CreateFarmSuccessCopyWith(
          _$CreateFarmSuccess value, $Res Function(_$CreateFarmSuccess) then) =
      __$$CreateFarmSuccessCopyWithImpl<$Res>;
  $Res call({Farm farm});

  $FarmCopyWith<$Res> get farm;
}

/// @nodoc
class __$$CreateFarmSuccessCopyWithImpl<$Res>
    extends _$FarmScreenStateCopyWithImpl<$Res>
    implements _$$CreateFarmSuccessCopyWith<$Res> {
  __$$CreateFarmSuccessCopyWithImpl(
      _$CreateFarmSuccess _value, $Res Function(_$CreateFarmSuccess) _then)
      : super(_value, (v) => _then(v as _$CreateFarmSuccess));

  @override
  _$CreateFarmSuccess get _value => super._value as _$CreateFarmSuccess;

  @override
  $Res call({
    Object? farm = freezed,
  }) {
    return _then(_$CreateFarmSuccess(
      farm == freezed
          ? _value.farm
          : farm // ignore: cast_nullable_to_non_nullable
              as Farm,
    ));
  }

  @override
  $FarmCopyWith<$Res> get farm {
    return $FarmCopyWith<$Res>(_value.farm, (value) {
      return _then(_value.copyWith(farm: value));
    });
  }
}

/// @nodoc

class _$CreateFarmSuccess implements CreateFarmSuccess {
  const _$CreateFarmSuccess(this.farm);

  @override
  final Farm farm;

  @override
  String toString() {
    return 'FarmScreenState.createFarmSuccess(farm: $farm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFarmSuccess &&
            const DeepCollectionEquality().equals(other.farm, farm));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(farm));

  @JsonKey(ignore: true)
  @override
  _$$CreateFarmSuccessCopyWith<_$CreateFarmSuccess> get copyWith =>
      __$$CreateFarmSuccessCopyWithImpl<_$CreateFarmSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createFarmLoading,
    required TResult Function(Farm farm) createFarmSuccess,
    required TResult Function(Failure failure) createFarmError,
  }) {
    return createFarmSuccess(farm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createFarmLoading,
    TResult Function(Farm farm)? createFarmSuccess,
    TResult Function(Failure failure)? createFarmError,
  }) {
    return createFarmSuccess?.call(farm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createFarmLoading,
    TResult Function(Farm farm)? createFarmSuccess,
    TResult Function(Failure failure)? createFarmError,
    required TResult orElse(),
  }) {
    if (createFarmSuccess != null) {
      return createFarmSuccess(farm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CreateFarmLoading value) createFarmLoading,
    required TResult Function(CreateFarmSuccess value) createFarmSuccess,
    required TResult Function(CreateFarmError value) createFarmError,
  }) {
    return createFarmSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateFarmLoading value)? createFarmLoading,
    TResult Function(CreateFarmSuccess value)? createFarmSuccess,
    TResult Function(CreateFarmError value)? createFarmError,
  }) {
    return createFarmSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateFarmLoading value)? createFarmLoading,
    TResult Function(CreateFarmSuccess value)? createFarmSuccess,
    TResult Function(CreateFarmError value)? createFarmError,
    required TResult orElse(),
  }) {
    if (createFarmSuccess != null) {
      return createFarmSuccess(this);
    }
    return orElse();
  }
}

abstract class CreateFarmSuccess implements FarmScreenState {
  const factory CreateFarmSuccess(final Farm farm) = _$CreateFarmSuccess;

  Farm get farm => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CreateFarmSuccessCopyWith<_$CreateFarmSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateFarmErrorCopyWith<$Res> {
  factory _$$CreateFarmErrorCopyWith(
          _$CreateFarmError value, $Res Function(_$CreateFarmError) then) =
      __$$CreateFarmErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$$CreateFarmErrorCopyWithImpl<$Res>
    extends _$FarmScreenStateCopyWithImpl<$Res>
    implements _$$CreateFarmErrorCopyWith<$Res> {
  __$$CreateFarmErrorCopyWithImpl(
      _$CreateFarmError _value, $Res Function(_$CreateFarmError) _then)
      : super(_value, (v) => _then(v as _$CreateFarmError));

  @override
  _$CreateFarmError get _value => super._value as _$CreateFarmError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$CreateFarmError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$CreateFarmError implements CreateFarmError {
  const _$CreateFarmError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'FarmScreenState.createFarmError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFarmError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$CreateFarmErrorCopyWith<_$CreateFarmError> get copyWith =>
      __$$CreateFarmErrorCopyWithImpl<_$CreateFarmError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createFarmLoading,
    required TResult Function(Farm farm) createFarmSuccess,
    required TResult Function(Failure failure) createFarmError,
  }) {
    return createFarmError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createFarmLoading,
    TResult Function(Farm farm)? createFarmSuccess,
    TResult Function(Failure failure)? createFarmError,
  }) {
    return createFarmError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createFarmLoading,
    TResult Function(Farm farm)? createFarmSuccess,
    TResult Function(Failure failure)? createFarmError,
    required TResult orElse(),
  }) {
    if (createFarmError != null) {
      return createFarmError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CreateFarmLoading value) createFarmLoading,
    required TResult Function(CreateFarmSuccess value) createFarmSuccess,
    required TResult Function(CreateFarmError value) createFarmError,
  }) {
    return createFarmError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateFarmLoading value)? createFarmLoading,
    TResult Function(CreateFarmSuccess value)? createFarmSuccess,
    TResult Function(CreateFarmError value)? createFarmError,
  }) {
    return createFarmError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateFarmLoading value)? createFarmLoading,
    TResult Function(CreateFarmSuccess value)? createFarmSuccess,
    TResult Function(CreateFarmError value)? createFarmError,
    required TResult orElse(),
  }) {
    if (createFarmError != null) {
      return createFarmError(this);
    }
    return orElse();
  }
}

abstract class CreateFarmError implements FarmScreenState {
  const factory CreateFarmError(final Failure failure) = _$CreateFarmError;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CreateFarmErrorCopyWith<_$CreateFarmError> get copyWith =>
      throw _privateConstructorUsedError;
}
