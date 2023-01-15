// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorites_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$FSInitialCopyWith<$Res>
    implements $FavoritesScreenStateCopyWith<$Res> {
  factory _$$FSInitialCopyWith(
          _$FSInitial value, $Res Function(_$FSInitial) then) =
      __$$FSInitialCopyWithImpl<$Res>;
  @override
  $Res call({List<Produce> produceFavoritesList});
}

/// @nodoc
class __$$FSInitialCopyWithImpl<$Res>
    extends _$FavoritesScreenStateCopyWithImpl<$Res>
    implements _$$FSInitialCopyWith<$Res> {
  __$$FSInitialCopyWithImpl(
      _$FSInitial _value, $Res Function(_$FSInitial) _then)
      : super(_value, (v) => _then(v as _$FSInitial));

  @override
  _$FSInitial get _value => super._value as _$FSInitial;

  @override
  $Res call({
    Object? produceFavoritesList = freezed,
  }) {
    return _then(_$FSInitial(
      produceFavoritesList == freezed
          ? _value._produceFavoritesList
          : produceFavoritesList // ignore: cast_nullable_to_non_nullable
              as List<Produce>,
    ));
  }
}

/// @nodoc

class _$FSInitial implements FSInitial {
  const _$FSInitial(final List<Produce> produceFavoritesList)
      : _produceFavoritesList = produceFavoritesList;

  final List<Produce> _produceFavoritesList;
  @override
  List<Produce> get produceFavoritesList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_produceFavoritesList);
  }

  @override
  String toString() {
    return 'FavoritesScreenState.initial(produceFavoritesList: $produceFavoritesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FSInitial &&
            const DeepCollectionEquality()
                .equals(other._produceFavoritesList, _produceFavoritesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_produceFavoritesList));

  @JsonKey(ignore: true)
  @override
  _$$FSInitialCopyWith<_$FSInitial> get copyWith =>
      __$$FSInitialCopyWithImpl<_$FSInitial>(this, _$identity);

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
  const factory FSInitial(final List<Produce> produceFavoritesList) =
      _$FSInitial;

  @override
  List<Produce> get produceFavoritesList;
  @override
  @JsonKey(ignore: true)
  _$$FSInitialCopyWith<_$FSInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FSLoadingCopyWith<$Res>
    implements $FavoritesScreenStateCopyWith<$Res> {
  factory _$$FSLoadingCopyWith(
          _$FSLoading value, $Res Function(_$FSLoading) then) =
      __$$FSLoadingCopyWithImpl<$Res>;
  @override
  $Res call({List<Produce> produceFavoritesList});
}

/// @nodoc
class __$$FSLoadingCopyWithImpl<$Res>
    extends _$FavoritesScreenStateCopyWithImpl<$Res>
    implements _$$FSLoadingCopyWith<$Res> {
  __$$FSLoadingCopyWithImpl(
      _$FSLoading _value, $Res Function(_$FSLoading) _then)
      : super(_value, (v) => _then(v as _$FSLoading));

  @override
  _$FSLoading get _value => super._value as _$FSLoading;

  @override
  $Res call({
    Object? produceFavoritesList = freezed,
  }) {
    return _then(_$FSLoading(
      produceFavoritesList == freezed
          ? _value._produceFavoritesList
          : produceFavoritesList // ignore: cast_nullable_to_non_nullable
              as List<Produce>,
    ));
  }
}

/// @nodoc

class _$FSLoading implements FSLoading {
  const _$FSLoading(final List<Produce> produceFavoritesList)
      : _produceFavoritesList = produceFavoritesList;

  final List<Produce> _produceFavoritesList;
  @override
  List<Produce> get produceFavoritesList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_produceFavoritesList);
  }

  @override
  String toString() {
    return 'FavoritesScreenState.loading(produceFavoritesList: $produceFavoritesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FSLoading &&
            const DeepCollectionEquality()
                .equals(other._produceFavoritesList, _produceFavoritesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_produceFavoritesList));

  @JsonKey(ignore: true)
  @override
  _$$FSLoadingCopyWith<_$FSLoading> get copyWith =>
      __$$FSLoadingCopyWithImpl<_$FSLoading>(this, _$identity);

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
  const factory FSLoading(final List<Produce> produceFavoritesList) =
      _$FSLoading;

  @override
  List<Produce> get produceFavoritesList;
  @override
  @JsonKey(ignore: true)
  _$$FSLoadingCopyWith<_$FSLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FSCompleteCopyWith<$Res>
    implements $FavoritesScreenStateCopyWith<$Res> {
  factory _$$FSCompleteCopyWith(
          _$FSComplete value, $Res Function(_$FSComplete) then) =
      __$$FSCompleteCopyWithImpl<$Res>;
  @override
  $Res call({List<Produce> produceFavoritesList});
}

/// @nodoc
class __$$FSCompleteCopyWithImpl<$Res>
    extends _$FavoritesScreenStateCopyWithImpl<$Res>
    implements _$$FSCompleteCopyWith<$Res> {
  __$$FSCompleteCopyWithImpl(
      _$FSComplete _value, $Res Function(_$FSComplete) _then)
      : super(_value, (v) => _then(v as _$FSComplete));

  @override
  _$FSComplete get _value => super._value as _$FSComplete;

  @override
  $Res call({
    Object? produceFavoritesList = freezed,
  }) {
    return _then(_$FSComplete(
      produceFavoritesList == freezed
          ? _value._produceFavoritesList
          : produceFavoritesList // ignore: cast_nullable_to_non_nullable
              as List<Produce>,
    ));
  }
}

/// @nodoc

class _$FSComplete implements FSComplete {
  const _$FSComplete(final List<Produce> produceFavoritesList)
      : _produceFavoritesList = produceFavoritesList;

  final List<Produce> _produceFavoritesList;
  @override
  List<Produce> get produceFavoritesList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_produceFavoritesList);
  }

  @override
  String toString() {
    return 'FavoritesScreenState.complete(produceFavoritesList: $produceFavoritesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FSComplete &&
            const DeepCollectionEquality()
                .equals(other._produceFavoritesList, _produceFavoritesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_produceFavoritesList));

  @JsonKey(ignore: true)
  @override
  _$$FSCompleteCopyWith<_$FSComplete> get copyWith =>
      __$$FSCompleteCopyWithImpl<_$FSComplete>(this, _$identity);

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
  const factory FSComplete(final List<Produce> produceFavoritesList) =
      _$FSComplete;

  @override
  List<Produce> get produceFavoritesList;
  @override
  @JsonKey(ignore: true)
  _$$FSCompleteCopyWith<_$FSComplete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FSErrorCopyWith<$Res>
    implements $FavoritesScreenStateCopyWith<$Res> {
  factory _$$FSErrorCopyWith(_$FSError value, $Res Function(_$FSError) then) =
      __$$FSErrorCopyWithImpl<$Res>;
  @override
  $Res call({List<Produce> produceFavoritesList, Failure failure});
}

/// @nodoc
class __$$FSErrorCopyWithImpl<$Res>
    extends _$FavoritesScreenStateCopyWithImpl<$Res>
    implements _$$FSErrorCopyWith<$Res> {
  __$$FSErrorCopyWithImpl(_$FSError _value, $Res Function(_$FSError) _then)
      : super(_value, (v) => _then(v as _$FSError));

  @override
  _$FSError get _value => super._value as _$FSError;

  @override
  $Res call({
    Object? produceFavoritesList = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$FSError(
      produceFavoritesList == freezed
          ? _value._produceFavoritesList
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
  const _$FSError(final List<Produce> produceFavoritesList, this.failure)
      : _produceFavoritesList = produceFavoritesList;

  final List<Produce> _produceFavoritesList;
  @override
  List<Produce> get produceFavoritesList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_produceFavoritesList);
  }

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
            other is _$FSError &&
            const DeepCollectionEquality()
                .equals(other._produceFavoritesList, _produceFavoritesList) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_produceFavoritesList),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$FSErrorCopyWith<_$FSError> get copyWith =>
      __$$FSErrorCopyWithImpl<_$FSError>(this, _$identity);

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
  const factory FSError(
          final List<Produce> produceFavoritesList, final Failure failure) =
      _$FSError;

  @override
  List<Produce> get produceFavoritesList;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$FSErrorCopyWith<_$FSError> get copyWith =>
      throw _privateConstructorUsedError;
}
