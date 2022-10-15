// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'global_auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GlobalAuthState {
  FarmhubUser? get farmhubUser => throw _privateConstructorUsedError;
  bool? get isAdmin => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) initial,
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) loading,
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) complete,
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)
        notLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? loading,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? complete,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? notLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? loading,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? complete,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? notLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GALoading value) loading,
    required TResult Function(GAComplete value) complete,
    required TResult Function(GANotLoggedIn value) notLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GALoading value)? loading,
    TResult Function(GAComplete value)? complete,
    TResult Function(GANotLoggedIn value)? notLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GALoading value)? loading,
    TResult Function(GAComplete value)? complete,
    TResult Function(GANotLoggedIn value)? notLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GlobalAuthStateCopyWith<GlobalAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalAuthStateCopyWith<$Res> {
  factory $GlobalAuthStateCopyWith(
          GlobalAuthState value, $Res Function(GlobalAuthState) then) =
      _$GlobalAuthStateCopyWithImpl<$Res>;
  $Res call({FarmhubUser? farmhubUser, bool? isAdmin});

  $FarmhubUserCopyWith<$Res>? get farmhubUser;
}

/// @nodoc
class _$GlobalAuthStateCopyWithImpl<$Res>
    implements $GlobalAuthStateCopyWith<$Res> {
  _$GlobalAuthStateCopyWithImpl(this._value, this._then);

  final GlobalAuthState _value;
  // ignore: unused_field
  final $Res Function(GlobalAuthState) _then;

  @override
  $Res call({
    Object? farmhubUser = freezed,
    Object? isAdmin = freezed,
  }) {
    return _then(_value.copyWith(
      farmhubUser: farmhubUser == freezed
          ? _value.farmhubUser
          : farmhubUser // ignore: cast_nullable_to_non_nullable
              as FarmhubUser?,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $FarmhubUserCopyWith<$Res>? get farmhubUser {
    if (_value.farmhubUser == null) {
      return null;
    }

    return $FarmhubUserCopyWith<$Res>(_value.farmhubUser!, (value) {
      return _then(_value.copyWith(farmhubUser: value));
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $GlobalAuthStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  $Res call({FarmhubUser? farmhubUser, bool? isAdmin});

  @override
  $FarmhubUserCopyWith<$Res>? get farmhubUser;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$GlobalAuthStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;

  @override
  $Res call({
    Object? farmhubUser = freezed,
    Object? isAdmin = freezed,
  }) {
    return _then(_$Initial(
      farmhubUser: farmhubUser == freezed
          ? _value.farmhubUser
          : farmhubUser // ignore: cast_nullable_to_non_nullable
              as FarmhubUser?,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.farmhubUser, this.isAdmin});

  @override
  final FarmhubUser? farmhubUser;
  @override
  final bool? isAdmin;

  @override
  String toString() {
    return 'GlobalAuthState.initial(farmhubUser: $farmhubUser, isAdmin: $isAdmin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            const DeepCollectionEquality()
                .equals(other.farmhubUser, farmhubUser) &&
            const DeepCollectionEquality().equals(other.isAdmin, isAdmin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(farmhubUser),
      const DeepCollectionEquality().hash(isAdmin));

  @JsonKey(ignore: true)
  @override
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) initial,
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) loading,
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) complete,
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)
        notLoggedIn,
  }) {
    return initial(farmhubUser, isAdmin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? loading,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? complete,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? notLoggedIn,
  }) {
    return initial?.call(farmhubUser, isAdmin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? loading,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? complete,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? notLoggedIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(farmhubUser, isAdmin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GALoading value) loading,
    required TResult Function(GAComplete value) complete,
    required TResult Function(GANotLoggedIn value) notLoggedIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GALoading value)? loading,
    TResult Function(GAComplete value)? complete,
    TResult Function(GANotLoggedIn value)? notLoggedIn,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GALoading value)? loading,
    TResult Function(GAComplete value)? complete,
    TResult Function(GANotLoggedIn value)? notLoggedIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements GlobalAuthState {
  const factory Initial({final FarmhubUser? farmhubUser, final bool? isAdmin}) =
      _$Initial;

  @override
  FarmhubUser? get farmhubUser => throw _privateConstructorUsedError;
  @override
  bool? get isAdmin => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GALoadingCopyWith<$Res>
    implements $GlobalAuthStateCopyWith<$Res> {
  factory _$$GALoadingCopyWith(
          _$GALoading value, $Res Function(_$GALoading) then) =
      __$$GALoadingCopyWithImpl<$Res>;
  @override
  $Res call({FarmhubUser? farmhubUser, bool? isAdmin});

  @override
  $FarmhubUserCopyWith<$Res>? get farmhubUser;
}

/// @nodoc
class __$$GALoadingCopyWithImpl<$Res>
    extends _$GlobalAuthStateCopyWithImpl<$Res>
    implements _$$GALoadingCopyWith<$Res> {
  __$$GALoadingCopyWithImpl(
      _$GALoading _value, $Res Function(_$GALoading) _then)
      : super(_value, (v) => _then(v as _$GALoading));

  @override
  _$GALoading get _value => super._value as _$GALoading;

  @override
  $Res call({
    Object? farmhubUser = freezed,
    Object? isAdmin = freezed,
  }) {
    return _then(_$GALoading(
      farmhubUser: farmhubUser == freezed
          ? _value.farmhubUser
          : farmhubUser // ignore: cast_nullable_to_non_nullable
              as FarmhubUser?,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$GALoading implements GALoading {
  const _$GALoading({this.farmhubUser, this.isAdmin});

  @override
  final FarmhubUser? farmhubUser;
  @override
  final bool? isAdmin;

  @override
  String toString() {
    return 'GlobalAuthState.loading(farmhubUser: $farmhubUser, isAdmin: $isAdmin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GALoading &&
            const DeepCollectionEquality()
                .equals(other.farmhubUser, farmhubUser) &&
            const DeepCollectionEquality().equals(other.isAdmin, isAdmin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(farmhubUser),
      const DeepCollectionEquality().hash(isAdmin));

  @JsonKey(ignore: true)
  @override
  _$$GALoadingCopyWith<_$GALoading> get copyWith =>
      __$$GALoadingCopyWithImpl<_$GALoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) initial,
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) loading,
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) complete,
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)
        notLoggedIn,
  }) {
    return loading(farmhubUser, isAdmin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? loading,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? complete,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? notLoggedIn,
  }) {
    return loading?.call(farmhubUser, isAdmin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? loading,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? complete,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? notLoggedIn,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(farmhubUser, isAdmin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GALoading value) loading,
    required TResult Function(GAComplete value) complete,
    required TResult Function(GANotLoggedIn value) notLoggedIn,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GALoading value)? loading,
    TResult Function(GAComplete value)? complete,
    TResult Function(GANotLoggedIn value)? notLoggedIn,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GALoading value)? loading,
    TResult Function(GAComplete value)? complete,
    TResult Function(GANotLoggedIn value)? notLoggedIn,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GALoading implements GlobalAuthState {
  const factory GALoading(
      {final FarmhubUser? farmhubUser, final bool? isAdmin}) = _$GALoading;

  @override
  FarmhubUser? get farmhubUser => throw _privateConstructorUsedError;
  @override
  bool? get isAdmin => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GALoadingCopyWith<_$GALoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GACompleteCopyWith<$Res>
    implements $GlobalAuthStateCopyWith<$Res> {
  factory _$$GACompleteCopyWith(
          _$GAComplete value, $Res Function(_$GAComplete) then) =
      __$$GACompleteCopyWithImpl<$Res>;
  @override
  $Res call({FarmhubUser? farmhubUser, bool? isAdmin});

  @override
  $FarmhubUserCopyWith<$Res>? get farmhubUser;
}

/// @nodoc
class __$$GACompleteCopyWithImpl<$Res>
    extends _$GlobalAuthStateCopyWithImpl<$Res>
    implements _$$GACompleteCopyWith<$Res> {
  __$$GACompleteCopyWithImpl(
      _$GAComplete _value, $Res Function(_$GAComplete) _then)
      : super(_value, (v) => _then(v as _$GAComplete));

  @override
  _$GAComplete get _value => super._value as _$GAComplete;

  @override
  $Res call({
    Object? farmhubUser = freezed,
    Object? isAdmin = freezed,
  }) {
    return _then(_$GAComplete(
      farmhubUser: farmhubUser == freezed
          ? _value.farmhubUser
          : farmhubUser // ignore: cast_nullable_to_non_nullable
              as FarmhubUser?,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$GAComplete implements GAComplete {
  const _$GAComplete({this.farmhubUser, this.isAdmin});

  @override
  final FarmhubUser? farmhubUser;
  @override
  final bool? isAdmin;

  @override
  String toString() {
    return 'GlobalAuthState.complete(farmhubUser: $farmhubUser, isAdmin: $isAdmin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GAComplete &&
            const DeepCollectionEquality()
                .equals(other.farmhubUser, farmhubUser) &&
            const DeepCollectionEquality().equals(other.isAdmin, isAdmin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(farmhubUser),
      const DeepCollectionEquality().hash(isAdmin));

  @JsonKey(ignore: true)
  @override
  _$$GACompleteCopyWith<_$GAComplete> get copyWith =>
      __$$GACompleteCopyWithImpl<_$GAComplete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) initial,
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) loading,
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) complete,
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)
        notLoggedIn,
  }) {
    return complete(farmhubUser, isAdmin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? loading,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? complete,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? notLoggedIn,
  }) {
    return complete?.call(farmhubUser, isAdmin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? loading,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? complete,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? notLoggedIn,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(farmhubUser, isAdmin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GALoading value) loading,
    required TResult Function(GAComplete value) complete,
    required TResult Function(GANotLoggedIn value) notLoggedIn,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GALoading value)? loading,
    TResult Function(GAComplete value)? complete,
    TResult Function(GANotLoggedIn value)? notLoggedIn,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GALoading value)? loading,
    TResult Function(GAComplete value)? complete,
    TResult Function(GANotLoggedIn value)? notLoggedIn,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class GAComplete implements GlobalAuthState {
  const factory GAComplete(
      {final FarmhubUser? farmhubUser, final bool? isAdmin}) = _$GAComplete;

  @override
  FarmhubUser? get farmhubUser => throw _privateConstructorUsedError;
  @override
  bool? get isAdmin => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GACompleteCopyWith<_$GAComplete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GANotLoggedInCopyWith<$Res>
    implements $GlobalAuthStateCopyWith<$Res> {
  factory _$$GANotLoggedInCopyWith(
          _$GANotLoggedIn value, $Res Function(_$GANotLoggedIn) then) =
      __$$GANotLoggedInCopyWithImpl<$Res>;
  @override
  $Res call({FarmhubUser? farmhubUser, bool? isAdmin});

  @override
  $FarmhubUserCopyWith<$Res>? get farmhubUser;
}

/// @nodoc
class __$$GANotLoggedInCopyWithImpl<$Res>
    extends _$GlobalAuthStateCopyWithImpl<$Res>
    implements _$$GANotLoggedInCopyWith<$Res> {
  __$$GANotLoggedInCopyWithImpl(
      _$GANotLoggedIn _value, $Res Function(_$GANotLoggedIn) _then)
      : super(_value, (v) => _then(v as _$GANotLoggedIn));

  @override
  _$GANotLoggedIn get _value => super._value as _$GANotLoggedIn;

  @override
  $Res call({
    Object? farmhubUser = freezed,
    Object? isAdmin = freezed,
  }) {
    return _then(_$GANotLoggedIn(
      farmhubUser: farmhubUser == freezed
          ? _value.farmhubUser
          : farmhubUser // ignore: cast_nullable_to_non_nullable
              as FarmhubUser?,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$GANotLoggedIn implements GANotLoggedIn {
  const _$GANotLoggedIn({this.farmhubUser, this.isAdmin});

  @override
  final FarmhubUser? farmhubUser;
  @override
  final bool? isAdmin;

  @override
  String toString() {
    return 'GlobalAuthState.notLoggedIn(farmhubUser: $farmhubUser, isAdmin: $isAdmin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GANotLoggedIn &&
            const DeepCollectionEquality()
                .equals(other.farmhubUser, farmhubUser) &&
            const DeepCollectionEquality().equals(other.isAdmin, isAdmin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(farmhubUser),
      const DeepCollectionEquality().hash(isAdmin));

  @JsonKey(ignore: true)
  @override
  _$$GANotLoggedInCopyWith<_$GANotLoggedIn> get copyWith =>
      __$$GANotLoggedInCopyWithImpl<_$GANotLoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) initial,
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) loading,
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) complete,
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)
        notLoggedIn,
  }) {
    return notLoggedIn(farmhubUser, isAdmin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? loading,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? complete,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? notLoggedIn,
  }) {
    return notLoggedIn?.call(farmhubUser, isAdmin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? loading,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? complete,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? notLoggedIn,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn(farmhubUser, isAdmin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GALoading value) loading,
    required TResult Function(GAComplete value) complete,
    required TResult Function(GANotLoggedIn value) notLoggedIn,
  }) {
    return notLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GALoading value)? loading,
    TResult Function(GAComplete value)? complete,
    TResult Function(GANotLoggedIn value)? notLoggedIn,
  }) {
    return notLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GALoading value)? loading,
    TResult Function(GAComplete value)? complete,
    TResult Function(GANotLoggedIn value)? notLoggedIn,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn(this);
    }
    return orElse();
  }
}

abstract class GANotLoggedIn implements GlobalAuthState {
  const factory GANotLoggedIn(
      {final FarmhubUser? farmhubUser, final bool? isAdmin}) = _$GANotLoggedIn;

  @override
  FarmhubUser? get farmhubUser => throw _privateConstructorUsedError;
  @override
  bool? get isAdmin => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GANotLoggedInCopyWith<_$GANotLoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}
