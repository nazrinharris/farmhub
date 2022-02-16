// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainScreenEventTearOff {
  const _$MainScreenEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $MainScreenEvent = _$MainScreenEventTearOff();

/// @nodoc
mixin _$MainScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenEventCopyWith<$Res> {
  factory $MainScreenEventCopyWith(
          MainScreenEvent value, $Res Function(MainScreenEvent) then) =
      _$MainScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainScreenEventCopyWithImpl<$Res>
    implements $MainScreenEventCopyWith<$Res> {
  _$MainScreenEventCopyWithImpl(this._value, this._then);

  final MainScreenEvent _value;
  // ignore: unused_field
  final $Res Function(MainScreenEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$MainScreenEventCopyWithImpl<$Res>
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
    return 'MainScreenEvent.started()';
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
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MainScreenEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$MainScreenStateTearOff {
  const _$MainScreenStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  MSSPricesLoading mainPricesLoading() {
    return const MSSPricesLoading();
  }

  MSSPricesCompleted mainPricesCompleted() {
    return const MSSPricesCompleted();
  }

  MSSPricesError mainPricesError() {
    return const MSSPricesError();
  }

  MSSSearchInitial searchInitial() {
    return const MSSSearchInitial();
  }

  MSSSearchLoading searchLoading() {
    return const MSSSearchLoading();
  }

  MSSSearchCompleted searchCompleted() {
    return const MSSSearchCompleted();
  }

  MSSSearchError searchError() {
    return const MSSSearchError();
  }
}

/// @nodoc
const $MainScreenState = _$MainScreenStateTearOff();

/// @nodoc
mixin _$MainScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mainPricesLoading,
    required TResult Function() mainPricesCompleted,
    required TResult Function() mainPricesError,
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function() searchCompleted,
    required TResult Function() searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainPricesLoading,
    TResult Function()? mainPricesCompleted,
    TResult Function()? mainPricesError,
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function()? searchCompleted,
    TResult Function()? searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainPricesLoading,
    TResult Function()? mainPricesCompleted,
    TResult Function()? mainPricesError,
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function()? searchCompleted,
    TResult Function()? searchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MSSPricesLoading value) mainPricesLoading,
    required TResult Function(MSSPricesCompleted value) mainPricesCompleted,
    required TResult Function(MSSPricesError value) mainPricesError,
    required TResult Function(MSSSearchInitial value) searchInitial,
    required TResult Function(MSSSearchLoading value) searchLoading,
    required TResult Function(MSSSearchCompleted value) searchCompleted,
    required TResult Function(MSSSearchError value) searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MSSPricesLoading value)? mainPricesLoading,
    TResult Function(MSSPricesCompleted value)? mainPricesCompleted,
    TResult Function(MSSPricesError value)? mainPricesError,
    TResult Function(MSSSearchInitial value)? searchInitial,
    TResult Function(MSSSearchLoading value)? searchLoading,
    TResult Function(MSSSearchCompleted value)? searchCompleted,
    TResult Function(MSSSearchError value)? searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MSSPricesLoading value)? mainPricesLoading,
    TResult Function(MSSPricesCompleted value)? mainPricesCompleted,
    TResult Function(MSSPricesError value)? mainPricesError,
    TResult Function(MSSSearchInitial value)? searchInitial,
    TResult Function(MSSSearchLoading value)? searchLoading,
    TResult Function(MSSSearchCompleted value)? searchCompleted,
    TResult Function(MSSSearchError value)? searchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenStateCopyWith<$Res> {
  factory $MainScreenStateCopyWith(
          MainScreenState value, $Res Function(MainScreenState) then) =
      _$MainScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainScreenStateCopyWithImpl<$Res>
    implements $MainScreenStateCopyWith<$Res> {
  _$MainScreenStateCopyWithImpl(this._value, this._then);

  final MainScreenState _value;
  // ignore: unused_field
  final $Res Function(MainScreenState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$MainScreenStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MainScreenState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mainPricesLoading,
    required TResult Function() mainPricesCompleted,
    required TResult Function() mainPricesError,
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function() searchCompleted,
    required TResult Function() searchError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainPricesLoading,
    TResult Function()? mainPricesCompleted,
    TResult Function()? mainPricesError,
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function()? searchCompleted,
    TResult Function()? searchError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainPricesLoading,
    TResult Function()? mainPricesCompleted,
    TResult Function()? mainPricesError,
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function()? searchCompleted,
    TResult Function()? searchError,
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
    required TResult Function(MSSPricesLoading value) mainPricesLoading,
    required TResult Function(MSSPricesCompleted value) mainPricesCompleted,
    required TResult Function(MSSPricesError value) mainPricesError,
    required TResult Function(MSSSearchInitial value) searchInitial,
    required TResult Function(MSSSearchLoading value) searchLoading,
    required TResult Function(MSSSearchCompleted value) searchCompleted,
    required TResult Function(MSSSearchError value) searchError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MSSPricesLoading value)? mainPricesLoading,
    TResult Function(MSSPricesCompleted value)? mainPricesCompleted,
    TResult Function(MSSPricesError value)? mainPricesError,
    TResult Function(MSSSearchInitial value)? searchInitial,
    TResult Function(MSSSearchLoading value)? searchLoading,
    TResult Function(MSSSearchCompleted value)? searchCompleted,
    TResult Function(MSSSearchError value)? searchError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MSSPricesLoading value)? mainPricesLoading,
    TResult Function(MSSPricesCompleted value)? mainPricesCompleted,
    TResult Function(MSSPricesError value)? mainPricesError,
    TResult Function(MSSSearchInitial value)? searchInitial,
    TResult Function(MSSSearchLoading value)? searchLoading,
    TResult Function(MSSSearchCompleted value)? searchCompleted,
    TResult Function(MSSSearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MainScreenState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class $MSSPricesLoadingCopyWith<$Res> {
  factory $MSSPricesLoadingCopyWith(
          MSSPricesLoading value, $Res Function(MSSPricesLoading) then) =
      _$MSSPricesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$MSSPricesLoadingCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res>
    implements $MSSPricesLoadingCopyWith<$Res> {
  _$MSSPricesLoadingCopyWithImpl(
      MSSPricesLoading _value, $Res Function(MSSPricesLoading) _then)
      : super(_value, (v) => _then(v as MSSPricesLoading));

  @override
  MSSPricesLoading get _value => super._value as MSSPricesLoading;
}

/// @nodoc

class _$MSSPricesLoading implements MSSPricesLoading {
  const _$MSSPricesLoading();

  @override
  String toString() {
    return 'MainScreenState.mainPricesLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MSSPricesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mainPricesLoading,
    required TResult Function() mainPricesCompleted,
    required TResult Function() mainPricesError,
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function() searchCompleted,
    required TResult Function() searchError,
  }) {
    return mainPricesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainPricesLoading,
    TResult Function()? mainPricesCompleted,
    TResult Function()? mainPricesError,
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function()? searchCompleted,
    TResult Function()? searchError,
  }) {
    return mainPricesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainPricesLoading,
    TResult Function()? mainPricesCompleted,
    TResult Function()? mainPricesError,
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function()? searchCompleted,
    TResult Function()? searchError,
    required TResult orElse(),
  }) {
    if (mainPricesLoading != null) {
      return mainPricesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MSSPricesLoading value) mainPricesLoading,
    required TResult Function(MSSPricesCompleted value) mainPricesCompleted,
    required TResult Function(MSSPricesError value) mainPricesError,
    required TResult Function(MSSSearchInitial value) searchInitial,
    required TResult Function(MSSSearchLoading value) searchLoading,
    required TResult Function(MSSSearchCompleted value) searchCompleted,
    required TResult Function(MSSSearchError value) searchError,
  }) {
    return mainPricesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MSSPricesLoading value)? mainPricesLoading,
    TResult Function(MSSPricesCompleted value)? mainPricesCompleted,
    TResult Function(MSSPricesError value)? mainPricesError,
    TResult Function(MSSSearchInitial value)? searchInitial,
    TResult Function(MSSSearchLoading value)? searchLoading,
    TResult Function(MSSSearchCompleted value)? searchCompleted,
    TResult Function(MSSSearchError value)? searchError,
  }) {
    return mainPricesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MSSPricesLoading value)? mainPricesLoading,
    TResult Function(MSSPricesCompleted value)? mainPricesCompleted,
    TResult Function(MSSPricesError value)? mainPricesError,
    TResult Function(MSSSearchInitial value)? searchInitial,
    TResult Function(MSSSearchLoading value)? searchLoading,
    TResult Function(MSSSearchCompleted value)? searchCompleted,
    TResult Function(MSSSearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (mainPricesLoading != null) {
      return mainPricesLoading(this);
    }
    return orElse();
  }
}

abstract class MSSPricesLoading implements MainScreenState {
  const factory MSSPricesLoading() = _$MSSPricesLoading;
}

/// @nodoc
abstract class $MSSPricesCompletedCopyWith<$Res> {
  factory $MSSPricesCompletedCopyWith(
          MSSPricesCompleted value, $Res Function(MSSPricesCompleted) then) =
      _$MSSPricesCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class _$MSSPricesCompletedCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res>
    implements $MSSPricesCompletedCopyWith<$Res> {
  _$MSSPricesCompletedCopyWithImpl(
      MSSPricesCompleted _value, $Res Function(MSSPricesCompleted) _then)
      : super(_value, (v) => _then(v as MSSPricesCompleted));

  @override
  MSSPricesCompleted get _value => super._value as MSSPricesCompleted;
}

/// @nodoc

class _$MSSPricesCompleted implements MSSPricesCompleted {
  const _$MSSPricesCompleted();

  @override
  String toString() {
    return 'MainScreenState.mainPricesCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MSSPricesCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mainPricesLoading,
    required TResult Function() mainPricesCompleted,
    required TResult Function() mainPricesError,
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function() searchCompleted,
    required TResult Function() searchError,
  }) {
    return mainPricesCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainPricesLoading,
    TResult Function()? mainPricesCompleted,
    TResult Function()? mainPricesError,
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function()? searchCompleted,
    TResult Function()? searchError,
  }) {
    return mainPricesCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainPricesLoading,
    TResult Function()? mainPricesCompleted,
    TResult Function()? mainPricesError,
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function()? searchCompleted,
    TResult Function()? searchError,
    required TResult orElse(),
  }) {
    if (mainPricesCompleted != null) {
      return mainPricesCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MSSPricesLoading value) mainPricesLoading,
    required TResult Function(MSSPricesCompleted value) mainPricesCompleted,
    required TResult Function(MSSPricesError value) mainPricesError,
    required TResult Function(MSSSearchInitial value) searchInitial,
    required TResult Function(MSSSearchLoading value) searchLoading,
    required TResult Function(MSSSearchCompleted value) searchCompleted,
    required TResult Function(MSSSearchError value) searchError,
  }) {
    return mainPricesCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MSSPricesLoading value)? mainPricesLoading,
    TResult Function(MSSPricesCompleted value)? mainPricesCompleted,
    TResult Function(MSSPricesError value)? mainPricesError,
    TResult Function(MSSSearchInitial value)? searchInitial,
    TResult Function(MSSSearchLoading value)? searchLoading,
    TResult Function(MSSSearchCompleted value)? searchCompleted,
    TResult Function(MSSSearchError value)? searchError,
  }) {
    return mainPricesCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MSSPricesLoading value)? mainPricesLoading,
    TResult Function(MSSPricesCompleted value)? mainPricesCompleted,
    TResult Function(MSSPricesError value)? mainPricesError,
    TResult Function(MSSSearchInitial value)? searchInitial,
    TResult Function(MSSSearchLoading value)? searchLoading,
    TResult Function(MSSSearchCompleted value)? searchCompleted,
    TResult Function(MSSSearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (mainPricesCompleted != null) {
      return mainPricesCompleted(this);
    }
    return orElse();
  }
}

abstract class MSSPricesCompleted implements MainScreenState {
  const factory MSSPricesCompleted() = _$MSSPricesCompleted;
}

/// @nodoc
abstract class $MSSPricesErrorCopyWith<$Res> {
  factory $MSSPricesErrorCopyWith(
          MSSPricesError value, $Res Function(MSSPricesError) then) =
      _$MSSPricesErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$MSSPricesErrorCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res>
    implements $MSSPricesErrorCopyWith<$Res> {
  _$MSSPricesErrorCopyWithImpl(
      MSSPricesError _value, $Res Function(MSSPricesError) _then)
      : super(_value, (v) => _then(v as MSSPricesError));

  @override
  MSSPricesError get _value => super._value as MSSPricesError;
}

/// @nodoc

class _$MSSPricesError implements MSSPricesError {
  const _$MSSPricesError();

  @override
  String toString() {
    return 'MainScreenState.mainPricesError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MSSPricesError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mainPricesLoading,
    required TResult Function() mainPricesCompleted,
    required TResult Function() mainPricesError,
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function() searchCompleted,
    required TResult Function() searchError,
  }) {
    return mainPricesError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainPricesLoading,
    TResult Function()? mainPricesCompleted,
    TResult Function()? mainPricesError,
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function()? searchCompleted,
    TResult Function()? searchError,
  }) {
    return mainPricesError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainPricesLoading,
    TResult Function()? mainPricesCompleted,
    TResult Function()? mainPricesError,
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function()? searchCompleted,
    TResult Function()? searchError,
    required TResult orElse(),
  }) {
    if (mainPricesError != null) {
      return mainPricesError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MSSPricesLoading value) mainPricesLoading,
    required TResult Function(MSSPricesCompleted value) mainPricesCompleted,
    required TResult Function(MSSPricesError value) mainPricesError,
    required TResult Function(MSSSearchInitial value) searchInitial,
    required TResult Function(MSSSearchLoading value) searchLoading,
    required TResult Function(MSSSearchCompleted value) searchCompleted,
    required TResult Function(MSSSearchError value) searchError,
  }) {
    return mainPricesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MSSPricesLoading value)? mainPricesLoading,
    TResult Function(MSSPricesCompleted value)? mainPricesCompleted,
    TResult Function(MSSPricesError value)? mainPricesError,
    TResult Function(MSSSearchInitial value)? searchInitial,
    TResult Function(MSSSearchLoading value)? searchLoading,
    TResult Function(MSSSearchCompleted value)? searchCompleted,
    TResult Function(MSSSearchError value)? searchError,
  }) {
    return mainPricesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MSSPricesLoading value)? mainPricesLoading,
    TResult Function(MSSPricesCompleted value)? mainPricesCompleted,
    TResult Function(MSSPricesError value)? mainPricesError,
    TResult Function(MSSSearchInitial value)? searchInitial,
    TResult Function(MSSSearchLoading value)? searchLoading,
    TResult Function(MSSSearchCompleted value)? searchCompleted,
    TResult Function(MSSSearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (mainPricesError != null) {
      return mainPricesError(this);
    }
    return orElse();
  }
}

abstract class MSSPricesError implements MainScreenState {
  const factory MSSPricesError() = _$MSSPricesError;
}

/// @nodoc
abstract class $MSSSearchInitialCopyWith<$Res> {
  factory $MSSSearchInitialCopyWith(
          MSSSearchInitial value, $Res Function(MSSSearchInitial) then) =
      _$MSSSearchInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$MSSSearchInitialCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res>
    implements $MSSSearchInitialCopyWith<$Res> {
  _$MSSSearchInitialCopyWithImpl(
      MSSSearchInitial _value, $Res Function(MSSSearchInitial) _then)
      : super(_value, (v) => _then(v as MSSSearchInitial));

  @override
  MSSSearchInitial get _value => super._value as MSSSearchInitial;
}

/// @nodoc

class _$MSSSearchInitial implements MSSSearchInitial {
  const _$MSSSearchInitial();

  @override
  String toString() {
    return 'MainScreenState.searchInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MSSSearchInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mainPricesLoading,
    required TResult Function() mainPricesCompleted,
    required TResult Function() mainPricesError,
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function() searchCompleted,
    required TResult Function() searchError,
  }) {
    return searchInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainPricesLoading,
    TResult Function()? mainPricesCompleted,
    TResult Function()? mainPricesError,
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function()? searchCompleted,
    TResult Function()? searchError,
  }) {
    return searchInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainPricesLoading,
    TResult Function()? mainPricesCompleted,
    TResult Function()? mainPricesError,
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function()? searchCompleted,
    TResult Function()? searchError,
    required TResult orElse(),
  }) {
    if (searchInitial != null) {
      return searchInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MSSPricesLoading value) mainPricesLoading,
    required TResult Function(MSSPricesCompleted value) mainPricesCompleted,
    required TResult Function(MSSPricesError value) mainPricesError,
    required TResult Function(MSSSearchInitial value) searchInitial,
    required TResult Function(MSSSearchLoading value) searchLoading,
    required TResult Function(MSSSearchCompleted value) searchCompleted,
    required TResult Function(MSSSearchError value) searchError,
  }) {
    return searchInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MSSPricesLoading value)? mainPricesLoading,
    TResult Function(MSSPricesCompleted value)? mainPricesCompleted,
    TResult Function(MSSPricesError value)? mainPricesError,
    TResult Function(MSSSearchInitial value)? searchInitial,
    TResult Function(MSSSearchLoading value)? searchLoading,
    TResult Function(MSSSearchCompleted value)? searchCompleted,
    TResult Function(MSSSearchError value)? searchError,
  }) {
    return searchInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MSSPricesLoading value)? mainPricesLoading,
    TResult Function(MSSPricesCompleted value)? mainPricesCompleted,
    TResult Function(MSSPricesError value)? mainPricesError,
    TResult Function(MSSSearchInitial value)? searchInitial,
    TResult Function(MSSSearchLoading value)? searchLoading,
    TResult Function(MSSSearchCompleted value)? searchCompleted,
    TResult Function(MSSSearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (searchInitial != null) {
      return searchInitial(this);
    }
    return orElse();
  }
}

abstract class MSSSearchInitial implements MainScreenState {
  const factory MSSSearchInitial() = _$MSSSearchInitial;
}

/// @nodoc
abstract class $MSSSearchLoadingCopyWith<$Res> {
  factory $MSSSearchLoadingCopyWith(
          MSSSearchLoading value, $Res Function(MSSSearchLoading) then) =
      _$MSSSearchLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$MSSSearchLoadingCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res>
    implements $MSSSearchLoadingCopyWith<$Res> {
  _$MSSSearchLoadingCopyWithImpl(
      MSSSearchLoading _value, $Res Function(MSSSearchLoading) _then)
      : super(_value, (v) => _then(v as MSSSearchLoading));

  @override
  MSSSearchLoading get _value => super._value as MSSSearchLoading;
}

/// @nodoc

class _$MSSSearchLoading implements MSSSearchLoading {
  const _$MSSSearchLoading();

  @override
  String toString() {
    return 'MainScreenState.searchLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MSSSearchLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mainPricesLoading,
    required TResult Function() mainPricesCompleted,
    required TResult Function() mainPricesError,
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function() searchCompleted,
    required TResult Function() searchError,
  }) {
    return searchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainPricesLoading,
    TResult Function()? mainPricesCompleted,
    TResult Function()? mainPricesError,
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function()? searchCompleted,
    TResult Function()? searchError,
  }) {
    return searchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainPricesLoading,
    TResult Function()? mainPricesCompleted,
    TResult Function()? mainPricesError,
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function()? searchCompleted,
    TResult Function()? searchError,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MSSPricesLoading value) mainPricesLoading,
    required TResult Function(MSSPricesCompleted value) mainPricesCompleted,
    required TResult Function(MSSPricesError value) mainPricesError,
    required TResult Function(MSSSearchInitial value) searchInitial,
    required TResult Function(MSSSearchLoading value) searchLoading,
    required TResult Function(MSSSearchCompleted value) searchCompleted,
    required TResult Function(MSSSearchError value) searchError,
  }) {
    return searchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MSSPricesLoading value)? mainPricesLoading,
    TResult Function(MSSPricesCompleted value)? mainPricesCompleted,
    TResult Function(MSSPricesError value)? mainPricesError,
    TResult Function(MSSSearchInitial value)? searchInitial,
    TResult Function(MSSSearchLoading value)? searchLoading,
    TResult Function(MSSSearchCompleted value)? searchCompleted,
    TResult Function(MSSSearchError value)? searchError,
  }) {
    return searchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MSSPricesLoading value)? mainPricesLoading,
    TResult Function(MSSPricesCompleted value)? mainPricesCompleted,
    TResult Function(MSSPricesError value)? mainPricesError,
    TResult Function(MSSSearchInitial value)? searchInitial,
    TResult Function(MSSSearchLoading value)? searchLoading,
    TResult Function(MSSSearchCompleted value)? searchCompleted,
    TResult Function(MSSSearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading(this);
    }
    return orElse();
  }
}

abstract class MSSSearchLoading implements MainScreenState {
  const factory MSSSearchLoading() = _$MSSSearchLoading;
}

/// @nodoc
abstract class $MSSSearchCompletedCopyWith<$Res> {
  factory $MSSSearchCompletedCopyWith(
          MSSSearchCompleted value, $Res Function(MSSSearchCompleted) then) =
      _$MSSSearchCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class _$MSSSearchCompletedCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res>
    implements $MSSSearchCompletedCopyWith<$Res> {
  _$MSSSearchCompletedCopyWithImpl(
      MSSSearchCompleted _value, $Res Function(MSSSearchCompleted) _then)
      : super(_value, (v) => _then(v as MSSSearchCompleted));

  @override
  MSSSearchCompleted get _value => super._value as MSSSearchCompleted;
}

/// @nodoc

class _$MSSSearchCompleted implements MSSSearchCompleted {
  const _$MSSSearchCompleted();

  @override
  String toString() {
    return 'MainScreenState.searchCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MSSSearchCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mainPricesLoading,
    required TResult Function() mainPricesCompleted,
    required TResult Function() mainPricesError,
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function() searchCompleted,
    required TResult Function() searchError,
  }) {
    return searchCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainPricesLoading,
    TResult Function()? mainPricesCompleted,
    TResult Function()? mainPricesError,
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function()? searchCompleted,
    TResult Function()? searchError,
  }) {
    return searchCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainPricesLoading,
    TResult Function()? mainPricesCompleted,
    TResult Function()? mainPricesError,
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function()? searchCompleted,
    TResult Function()? searchError,
    required TResult orElse(),
  }) {
    if (searchCompleted != null) {
      return searchCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MSSPricesLoading value) mainPricesLoading,
    required TResult Function(MSSPricesCompleted value) mainPricesCompleted,
    required TResult Function(MSSPricesError value) mainPricesError,
    required TResult Function(MSSSearchInitial value) searchInitial,
    required TResult Function(MSSSearchLoading value) searchLoading,
    required TResult Function(MSSSearchCompleted value) searchCompleted,
    required TResult Function(MSSSearchError value) searchError,
  }) {
    return searchCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MSSPricesLoading value)? mainPricesLoading,
    TResult Function(MSSPricesCompleted value)? mainPricesCompleted,
    TResult Function(MSSPricesError value)? mainPricesError,
    TResult Function(MSSSearchInitial value)? searchInitial,
    TResult Function(MSSSearchLoading value)? searchLoading,
    TResult Function(MSSSearchCompleted value)? searchCompleted,
    TResult Function(MSSSearchError value)? searchError,
  }) {
    return searchCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MSSPricesLoading value)? mainPricesLoading,
    TResult Function(MSSPricesCompleted value)? mainPricesCompleted,
    TResult Function(MSSPricesError value)? mainPricesError,
    TResult Function(MSSSearchInitial value)? searchInitial,
    TResult Function(MSSSearchLoading value)? searchLoading,
    TResult Function(MSSSearchCompleted value)? searchCompleted,
    TResult Function(MSSSearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (searchCompleted != null) {
      return searchCompleted(this);
    }
    return orElse();
  }
}

abstract class MSSSearchCompleted implements MainScreenState {
  const factory MSSSearchCompleted() = _$MSSSearchCompleted;
}

/// @nodoc
abstract class $MSSSearchErrorCopyWith<$Res> {
  factory $MSSSearchErrorCopyWith(
          MSSSearchError value, $Res Function(MSSSearchError) then) =
      _$MSSSearchErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$MSSSearchErrorCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res>
    implements $MSSSearchErrorCopyWith<$Res> {
  _$MSSSearchErrorCopyWithImpl(
      MSSSearchError _value, $Res Function(MSSSearchError) _then)
      : super(_value, (v) => _then(v as MSSSearchError));

  @override
  MSSSearchError get _value => super._value as MSSSearchError;
}

/// @nodoc

class _$MSSSearchError implements MSSSearchError {
  const _$MSSSearchError();

  @override
  String toString() {
    return 'MainScreenState.searchError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MSSSearchError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mainPricesLoading,
    required TResult Function() mainPricesCompleted,
    required TResult Function() mainPricesError,
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function() searchCompleted,
    required TResult Function() searchError,
  }) {
    return searchError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainPricesLoading,
    TResult Function()? mainPricesCompleted,
    TResult Function()? mainPricesError,
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function()? searchCompleted,
    TResult Function()? searchError,
  }) {
    return searchError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainPricesLoading,
    TResult Function()? mainPricesCompleted,
    TResult Function()? mainPricesError,
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function()? searchCompleted,
    TResult Function()? searchError,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MSSPricesLoading value) mainPricesLoading,
    required TResult Function(MSSPricesCompleted value) mainPricesCompleted,
    required TResult Function(MSSPricesError value) mainPricesError,
    required TResult Function(MSSSearchInitial value) searchInitial,
    required TResult Function(MSSSearchLoading value) searchLoading,
    required TResult Function(MSSSearchCompleted value) searchCompleted,
    required TResult Function(MSSSearchError value) searchError,
  }) {
    return searchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MSSPricesLoading value)? mainPricesLoading,
    TResult Function(MSSPricesCompleted value)? mainPricesCompleted,
    TResult Function(MSSPricesError value)? mainPricesError,
    TResult Function(MSSSearchInitial value)? searchInitial,
    TResult Function(MSSSearchLoading value)? searchLoading,
    TResult Function(MSSSearchCompleted value)? searchCompleted,
    TResult Function(MSSSearchError value)? searchError,
  }) {
    return searchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MSSPricesLoading value)? mainPricesLoading,
    TResult Function(MSSPricesCompleted value)? mainPricesCompleted,
    TResult Function(MSSPricesError value)? mainPricesError,
    TResult Function(MSSSearchInitial value)? searchInitial,
    TResult Function(MSSSearchLoading value)? searchLoading,
    TResult Function(MSSSearchCompleted value)? searchCompleted,
    TResult Function(MSSSearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(this);
    }
    return orElse();
  }
}

abstract class MSSSearchError implements MainScreenState {
  const factory MSSSearchError() = _$MSSSearchError;
}
