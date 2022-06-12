// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorites_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoritesScreenStateTearOff {
  const _$FavoritesScreenStateTearOff();

  FSInitial initial(List<Produce> produceFavoritesList) {
    return FSInitial(
      produceFavoritesList,
    );
  }

  FSLoading loading(List<Produce> produceFavoritesList) {
    return FSLoading(
      produceFavoritesList,
    );
  }

  FSComplete complete(List<Produce> produceFavoritesList) {
    return FSComplete(
      produceFavoritesList,
    );
  }

  FSError error(List<Produce> produceFavoritesList, Failure failure) {
    return FSError(
      produceFavoritesList,
      failure,
    );
  }
}

/// @nodoc
const $FavoritesScreenState = _$FavoritesScreenStateTearOff();

/// @nodoc
mixin _$FavoritesScreenState {
  List<Produce> get produceFavoritesList => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Produce> produceFavoritesList) initial,
    required TResult Function(List<Produce> produceFavoritesList) loading,
    required TResult Function(List<Produce> produceFavoritesList) complete,
    required TResult Function(
            List<Produce> produceFavoritesList, Failure failure)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Produce> produceFavoritesList)? initial,
    TResult Function(List<Produce> produceFavoritesList)? loading,
    TResult Function(List<Produce> produceFavoritesList)? complete,
    TResult Function(List<Produce> produceFavoritesList, Failure failure)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Produce> produceFavoritesList)? initial,
    TResult Function(List<Produce> produceFavoritesList)? loading,
    TResult Function(List<Produce> produceFavoritesList)? complete,
    TResult Function(List<Produce> produceFavoritesList, Failure failure)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FSInitial value) initial,
    required TResult Function(FSLoading value) loading,
    required TResult Function(FSComplete value) complete,
    required TResult Function(FSError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FSInitial value)? initial,
    TResult Function(FSLoading value)? loading,
    TResult Function(FSComplete value)? complete,
    TResult Function(FSError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FSInitial value)? initial,
    TResult Function(FSLoading value)? loading,
    TResult Function(FSComplete value)? complete,
    TResult Function(FSError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoritesScreenStateCopyWith<FavoritesScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesScreenStateCopyWith<$Res> {
  factory $FavoritesScreenStateCopyWith(FavoritesScreenState value,
          $Res Function(FavoritesScreenState) then) =
      _$FavoritesScreenStateCopyWithImpl<$Res>;
  $Res call({List<Produce> produceFavoritesList});
}

/// @nodoc
class _$FavoritesScreenStateCopyWithImpl<$Res>
    implements $FavoritesScreenStateCopyWith<$Res> {
  _$FavoritesScreenStateCopyWithImpl(this._value, this._then);

  final FavoritesScreenState _value;
  // ignore: unused_field
  final $Res Function(FavoritesScreenState) _then;

  @override
  $Res call({
    Object? produceFavoritesList = freezed,
  }) {
    return _then(_value.copyWith(
      produceFavoritesList: produceFavoritesList == freezed
          ? _value.produceFavoritesList
          : produceFavoritesList // ignore: cast_nullable_to_non_nullable
              as List<Produce>,
    ));
  }
}

/// @nodoc
abstract class $FSInitialCopyWith<$Res>
    implements $FavoritesScreenStateCopyWith<$Res> {
  factory $FSInitialCopyWith(FSInitial value, $Res Function(FSInitial) then) =
      _$FSInitialCopyWithImpl<$Res>;
  @override
  $Res call({List<Produce> produceFavoritesList});
}

/// @nodoc
class _$FSInitialCopyWithImpl<$Res>
    extends _$FavoritesScreenStateCopyWithImpl<$Res>
    implements $FSInitialCopyWith<$Res> {
  _$FSInitialCopyWithImpl(FSInitial _value, $Res Function(FSInitial) _then)
      : super(_value, (v) => _then(v as FSInitial));

  @override
  FSInitial get _value => super._value as FSInitial;

  @override
  $Res call({
    Object? produceFavoritesList = freezed,
  }) {
    return _then(FSInitial(
      produceFavoritesList == freezed
          ? _value.produceFavoritesList
          : produceFavoritesList // ignore: cast_nullable_to_non_nullable
              as List<Produce>,
    ));
  }
}

/// @nodoc

class _$FSInitial implements FSInitial {
  const _$FSInitial(this.produceFavoritesList);

  @override
  final List<Produce> produceFavoritesList;

  @override
  String toString() {
    return 'FavoritesScreenState.initial(produceFavoritesList: $produceFavoritesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FSInitial &&
            const DeepCollectionEquality()
                .equals(other.produceFavoritesList, produceFavoritesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(produceFavoritesList));

  @JsonKey(ignore: true)
  @override
  $FSInitialCopyWith<FSInitial> get copyWith =>
      _$FSInitialCopyWithImpl<FSInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Produce> produceFavoritesList) initial,
    required TResult Function(List<Produce> produceFavoritesList) loading,
    required TResult Function(List<Produce> produceFavoritesList) complete,
    required TResult Function(
            List<Produce> produceFavoritesList, Failure failure)
        error,
  }) {
    return initial(produceFavoritesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Produce> produceFavoritesList)? initial,
    TResult Function(List<Produce> produceFavoritesList)? loading,
    TResult Function(List<Produce> produceFavoritesList)? complete,
    TResult Function(List<Produce> produceFavoritesList, Failure failure)?
        error,
  }) {
    return initial?.call(produceFavoritesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Produce> produceFavoritesList)? initial,
    TResult Function(List<Produce> produceFavoritesList)? loading,
    TResult Function(List<Produce> produceFavoritesList)? complete,
    TResult Function(List<Produce> produceFavoritesList, Failure failure)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(produceFavoritesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FSInitial value) initial,
    required TResult Function(FSLoading value) loading,
    required TResult Function(FSComplete value) complete,
    required TResult Function(FSError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FSInitial value)? initial,
    TResult Function(FSLoading value)? loading,
    TResult Function(FSComplete value)? complete,
    TResult Function(FSError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FSInitial value)? initial,
    TResult Function(FSLoading value)? loading,
    TResult Function(FSComplete value)? complete,
    TResult Function(FSError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FSInitial implements FavoritesScreenState {
  const factory FSInitial(List<Produce> produceFavoritesList) = _$FSInitial;

  @override
  List<Produce> get produceFavoritesList;
  @override
  @JsonKey(ignore: true)
  $FSInitialCopyWith<FSInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FSLoadingCopyWith<$Res>
    implements $FavoritesScreenStateCopyWith<$Res> {
  factory $FSLoadingCopyWith(FSLoading value, $Res Function(FSLoading) then) =
      _$FSLoadingCopyWithImpl<$Res>;
  @override
  $Res call({List<Produce> produceFavoritesList});
}

/// @nodoc
class _$FSLoadingCopyWithImpl<$Res>
    extends _$FavoritesScreenStateCopyWithImpl<$Res>
    implements $FSLoadingCopyWith<$Res> {
  _$FSLoadingCopyWithImpl(FSLoading _value, $Res Function(FSLoading) _then)
      : super(_value, (v) => _then(v as FSLoading));

  @override
  FSLoading get _value => super._value as FSLoading;

  @override
  $Res call({
    Object? produceFavoritesList = freezed,
  }) {
    return _then(FSLoading(
      produceFavoritesList == freezed
          ? _value.produceFavoritesList
          : produceFavoritesList // ignore: cast_nullable_to_non_nullable
              as List<Produce>,
    ));
  }
}

/// @nodoc

class _$FSLoading implements FSLoading {
  const _$FSLoading(this.produceFavoritesList);

  @override
  final List<Produce> produceFavoritesList;

  @override
  String toString() {
    return 'FavoritesScreenState.loading(produceFavoritesList: $produceFavoritesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FSLoading &&
            const DeepCollectionEquality()
                .equals(other.produceFavoritesList, produceFavoritesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(produceFavoritesList));

  @JsonKey(ignore: true)
  @override
  $FSLoadingCopyWith<FSLoading> get copyWith =>
      _$FSLoadingCopyWithImpl<FSLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Produce> produceFavoritesList) initial,
    required TResult Function(List<Produce> produceFavoritesList) loading,
    required TResult Function(List<Produce> produceFavoritesList) complete,
    required TResult Function(
            List<Produce> produceFavoritesList, Failure failure)
        error,
  }) {
    return loading(produceFavoritesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Produce> produceFavoritesList)? initial,
    TResult Function(List<Produce> produceFavoritesList)? loading,
    TResult Function(List<Produce> produceFavoritesList)? complete,
    TResult Function(List<Produce> produceFavoritesList, Failure failure)?
        error,
  }) {
    return loading?.call(produceFavoritesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Produce> produceFavoritesList)? initial,
    TResult Function(List<Produce> produceFavoritesList)? loading,
    TResult Function(List<Produce> produceFavoritesList)? complete,
    TResult Function(List<Produce> produceFavoritesList, Failure failure)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(produceFavoritesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FSInitial value) initial,
    required TResult Function(FSLoading value) loading,
    required TResult Function(FSComplete value) complete,
    required TResult Function(FSError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FSInitial value)? initial,
    TResult Function(FSLoading value)? loading,
    TResult Function(FSComplete value)? complete,
    TResult Function(FSError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FSInitial value)? initial,
    TResult Function(FSLoading value)? loading,
    TResult Function(FSComplete value)? complete,
    TResult Function(FSError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FSLoading implements FavoritesScreenState {
  const factory FSLoading(List<Produce> produceFavoritesList) = _$FSLoading;

  @override
  List<Produce> get produceFavoritesList;
  @override
  @JsonKey(ignore: true)
  $FSLoadingCopyWith<FSLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FSCompleteCopyWith<$Res>
    implements $FavoritesScreenStateCopyWith<$Res> {
  factory $FSCompleteCopyWith(
          FSComplete value, $Res Function(FSComplete) then) =
      _$FSCompleteCopyWithImpl<$Res>;
  @override
  $Res call({List<Produce> produceFavoritesList});
}

/// @nodoc
class _$FSCompleteCopyWithImpl<$Res>
    extends _$FavoritesScreenStateCopyWithImpl<$Res>
    implements $FSCompleteCopyWith<$Res> {
  _$FSCompleteCopyWithImpl(FSComplete _value, $Res Function(FSComplete) _then)
      : super(_value, (v) => _then(v as FSComplete));

  @override
  FSComplete get _value => super._value as FSComplete;

  @override
  $Res call({
    Object? produceFavoritesList = freezed,
  }) {
    return _then(FSComplete(
      produceFavoritesList == freezed
          ? _value.produceFavoritesList
          : produceFavoritesList // ignore: cast_nullable_to_non_nullable
              as List<Produce>,
    ));
  }
}

/// @nodoc

class _$FSComplete implements FSComplete {
  const _$FSComplete(this.produceFavoritesList);

  @override
  final List<Produce> produceFavoritesList;

  @override
  String toString() {
    return 'FavoritesScreenState.complete(produceFavoritesList: $produceFavoritesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FSComplete &&
            const DeepCollectionEquality()
                .equals(other.produceFavoritesList, produceFavoritesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(produceFavoritesList));

  @JsonKey(ignore: true)
  @override
  $FSCompleteCopyWith<FSComplete> get copyWith =>
      _$FSCompleteCopyWithImpl<FSComplete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Produce> produceFavoritesList) initial,
    required TResult Function(List<Produce> produceFavoritesList) loading,
    required TResult Function(List<Produce> produceFavoritesList) complete,
    required TResult Function(
            List<Produce> produceFavoritesList, Failure failure)
        error,
  }) {
    return complete(produceFavoritesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Produce> produceFavoritesList)? initial,
    TResult Function(List<Produce> produceFavoritesList)? loading,
    TResult Function(List<Produce> produceFavoritesList)? complete,
    TResult Function(List<Produce> produceFavoritesList, Failure failure)?
        error,
  }) {
    return complete?.call(produceFavoritesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Produce> produceFavoritesList)? initial,
    TResult Function(List<Produce> produceFavoritesList)? loading,
    TResult Function(List<Produce> produceFavoritesList)? complete,
    TResult Function(List<Produce> produceFavoritesList, Failure failure)?
        error,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(produceFavoritesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FSInitial value) initial,
    required TResult Function(FSLoading value) loading,
    required TResult Function(FSComplete value) complete,
    required TResult Function(FSError value) error,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FSInitial value)? initial,
    TResult Function(FSLoading value)? loading,
    TResult Function(FSComplete value)? complete,
    TResult Function(FSError value)? error,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FSInitial value)? initial,
    TResult Function(FSLoading value)? loading,
    TResult Function(FSComplete value)? complete,
    TResult Function(FSError value)? error,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class FSComplete implements FavoritesScreenState {
  const factory FSComplete(List<Produce> produceFavoritesList) = _$FSComplete;

  @override
  List<Produce> get produceFavoritesList;
  @override
  @JsonKey(ignore: true)
  $FSCompleteCopyWith<FSComplete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FSErrorCopyWith<$Res>
    implements $FavoritesScreenStateCopyWith<$Res> {
  factory $FSErrorCopyWith(FSError value, $Res Function(FSError) then) =
      _$FSErrorCopyWithImpl<$Res>;
  @override
  $Res call({List<Produce> produceFavoritesList, Failure failure});
}

/// @nodoc
class _$FSErrorCopyWithImpl<$Res>
    extends _$FavoritesScreenStateCopyWithImpl<$Res>
    implements $FSErrorCopyWith<$Res> {
  _$FSErrorCopyWithImpl(FSError _value, $Res Function(FSError) _then)
      : super(_value, (v) => _then(v as FSError));

  @override
  FSError get _value => super._value as FSError;

  @override
  $Res call({
    Object? produceFavoritesList = freezed,
    Object? failure = freezed,
  }) {
    return _then(FSError(
      produceFavoritesList == freezed
          ? _value.produceFavoritesList
          : produceFavoritesList // ignore: cast_nullable_to_non_nullable
              as List<Produce>,
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$FSError implements FSError {
  const _$FSError(this.produceFavoritesList, this.failure);

  @override
  final List<Produce> produceFavoritesList;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'FavoritesScreenState.error(produceFavoritesList: $produceFavoritesList, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FSError &&
            const DeepCollectionEquality()
                .equals(other.produceFavoritesList, produceFavoritesList) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(produceFavoritesList), failure);

  @JsonKey(ignore: true)
  @override
  $FSErrorCopyWith<FSError> get copyWith =>
      _$FSErrorCopyWithImpl<FSError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Produce> produceFavoritesList) initial,
    required TResult Function(List<Produce> produceFavoritesList) loading,
    required TResult Function(List<Produce> produceFavoritesList) complete,
    required TResult Function(
            List<Produce> produceFavoritesList, Failure failure)
        error,
  }) {
    return error(produceFavoritesList, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Produce> produceFavoritesList)? initial,
    TResult Function(List<Produce> produceFavoritesList)? loading,
    TResult Function(List<Produce> produceFavoritesList)? complete,
    TResult Function(List<Produce> produceFavoritesList, Failure failure)?
        error,
  }) {
    return error?.call(produceFavoritesList, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Produce> produceFavoritesList)? initial,
    TResult Function(List<Produce> produceFavoritesList)? loading,
    TResult Function(List<Produce> produceFavoritesList)? complete,
    TResult Function(List<Produce> produceFavoritesList, Failure failure)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(produceFavoritesList, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FSInitial value) initial,
    required TResult Function(FSLoading value) loading,
    required TResult Function(FSComplete value) complete,
    required TResult Function(FSError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FSInitial value)? initial,
    TResult Function(FSLoading value)? loading,
    TResult Function(FSComplete value)? complete,
    TResult Function(FSError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FSInitial value)? initial,
    TResult Function(FSLoading value)? loading,
    TResult Function(FSComplete value)? complete,
    TResult Function(FSError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FSError implements FavoritesScreenState {
  const factory FSError(List<Produce> produceFavoritesList, Failure failure) =
      _$FSError;

  @override
  List<Produce> get produceFavoritesList;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  $FSErrorCopyWith<FSError> get copyWith => throw _privateConstructorUsedError;
}
