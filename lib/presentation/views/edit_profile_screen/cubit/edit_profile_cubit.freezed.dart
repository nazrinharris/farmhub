// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditProfileStateTearOff {
  const _$EditProfileStateTearOff();

  EditProfileInitial initial() {
    return const EditProfileInitial();
  }

  EditProfileLoading loading() {
    return const EditProfileLoading();
  }

  EditProfileSuccess success() {
    return const EditProfileSuccess();
  }

  EditProfileError error(Failure failure) {
    return EditProfileError(
      failure,
    );
  }
}

/// @nodoc
const $EditProfileState = _$EditProfileStateTearOff();

/// @nodoc
mixin _$EditProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileInitial value) initial,
    required TResult Function(EditProfileLoading value) loading,
    required TResult Function(EditProfileSuccess value) success,
    required TResult Function(EditProfileError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileSuccess value)? success,
    TResult Function(EditProfileError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileSuccess value)? success,
    TResult Function(EditProfileError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  final EditProfileState _value;
  // ignore: unused_field
  final $Res Function(EditProfileState) _then;
}

/// @nodoc
abstract class $EditProfileInitialCopyWith<$Res> {
  factory $EditProfileInitialCopyWith(
          EditProfileInitial value, $Res Function(EditProfileInitial) then) =
      _$EditProfileInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditProfileInitialCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileInitialCopyWith<$Res> {
  _$EditProfileInitialCopyWithImpl(
      EditProfileInitial _value, $Res Function(EditProfileInitial) _then)
      : super(_value, (v) => _then(v as EditProfileInitial));

  @override
  EditProfileInitial get _value => super._value as EditProfileInitial;
}

/// @nodoc

class _$EditProfileInitial implements EditProfileInitial {
  const _$EditProfileInitial();

  @override
  String toString() {
    return 'EditProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EditProfileInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(EditProfileInitial value) initial,
    required TResult Function(EditProfileLoading value) loading,
    required TResult Function(EditProfileSuccess value) success,
    required TResult Function(EditProfileError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileSuccess value)? success,
    TResult Function(EditProfileError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileSuccess value)? success,
    TResult Function(EditProfileError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EditProfileInitial implements EditProfileState {
  const factory EditProfileInitial() = _$EditProfileInitial;
}

/// @nodoc
abstract class $EditProfileLoadingCopyWith<$Res> {
  factory $EditProfileLoadingCopyWith(
          EditProfileLoading value, $Res Function(EditProfileLoading) then) =
      _$EditProfileLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditProfileLoadingCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileLoadingCopyWith<$Res> {
  _$EditProfileLoadingCopyWithImpl(
      EditProfileLoading _value, $Res Function(EditProfileLoading) _then)
      : super(_value, (v) => _then(v as EditProfileLoading));

  @override
  EditProfileLoading get _value => super._value as EditProfileLoading;
}

/// @nodoc

class _$EditProfileLoading implements EditProfileLoading {
  const _$EditProfileLoading();

  @override
  String toString() {
    return 'EditProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EditProfileLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(EditProfileInitial value) initial,
    required TResult Function(EditProfileLoading value) loading,
    required TResult Function(EditProfileSuccess value) success,
    required TResult Function(EditProfileError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileSuccess value)? success,
    TResult Function(EditProfileError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileSuccess value)? success,
    TResult Function(EditProfileError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EditProfileLoading implements EditProfileState {
  const factory EditProfileLoading() = _$EditProfileLoading;
}

/// @nodoc
abstract class $EditProfileSuccessCopyWith<$Res> {
  factory $EditProfileSuccessCopyWith(
          EditProfileSuccess value, $Res Function(EditProfileSuccess) then) =
      _$EditProfileSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditProfileSuccessCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileSuccessCopyWith<$Res> {
  _$EditProfileSuccessCopyWithImpl(
      EditProfileSuccess _value, $Res Function(EditProfileSuccess) _then)
      : super(_value, (v) => _then(v as EditProfileSuccess));

  @override
  EditProfileSuccess get _value => super._value as EditProfileSuccess;
}

/// @nodoc

class _$EditProfileSuccess implements EditProfileSuccess {
  const _$EditProfileSuccess();

  @override
  String toString() {
    return 'EditProfileState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EditProfileSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Failure failure) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Failure failure)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileInitial value) initial,
    required TResult Function(EditProfileLoading value) loading,
    required TResult Function(EditProfileSuccess value) success,
    required TResult Function(EditProfileError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileSuccess value)? success,
    TResult Function(EditProfileError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileSuccess value)? success,
    TResult Function(EditProfileError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class EditProfileSuccess implements EditProfileState {
  const factory EditProfileSuccess() = _$EditProfileSuccess;
}

/// @nodoc
abstract class $EditProfileErrorCopyWith<$Res> {
  factory $EditProfileErrorCopyWith(
          EditProfileError value, $Res Function(EditProfileError) then) =
      _$EditProfileErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class _$EditProfileErrorCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileErrorCopyWith<$Res> {
  _$EditProfileErrorCopyWithImpl(
      EditProfileError _value, $Res Function(EditProfileError) _then)
      : super(_value, (v) => _then(v as EditProfileError));

  @override
  EditProfileError get _value => super._value as EditProfileError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(EditProfileError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$EditProfileError implements EditProfileError {
  const _$EditProfileError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'EditProfileState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditProfileError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  $EditProfileErrorCopyWith<EditProfileError> get copyWith =>
      _$EditProfileErrorCopyWithImpl<EditProfileError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(EditProfileInitial value) initial,
    required TResult Function(EditProfileLoading value) loading,
    required TResult Function(EditProfileSuccess value) success,
    required TResult Function(EditProfileError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileSuccess value)? success,
    TResult Function(EditProfileError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileSuccess value)? success,
    TResult Function(EditProfileError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EditProfileError implements EditProfileState {
  const factory EditProfileError(Failure failure) = _$EditProfileError;

  Failure get failure;
  @JsonKey(ignore: true)
  $EditProfileErrorCopyWith<EditProfileError> get copyWith =>
      throw _privateConstructorUsedError;
}
