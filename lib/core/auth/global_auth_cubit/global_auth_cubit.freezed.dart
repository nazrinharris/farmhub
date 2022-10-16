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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) initial,
    required TResult Function() loading,
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) complete,
    required TResult Function() notLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
    TResult Function()? loading,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? complete,
    TResult Function()? notLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
    TResult Function()? loading,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? complete,
    TResult Function()? notLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Complete value) complete,
    required TResult Function(NotLoggedIn value) notLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Complete value)? complete,
    TResult Function(NotLoggedIn value)? notLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Complete value)? complete,
    TResult Function(NotLoggedIn value)? notLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalAuthStateCopyWith<$Res> {
  factory $GlobalAuthStateCopyWith(
          GlobalAuthState value, $Res Function(GlobalAuthState) then) =
      _$GlobalAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GlobalAuthStateCopyWithImpl<$Res>
    implements $GlobalAuthStateCopyWith<$Res> {
  _$GlobalAuthStateCopyWithImpl(this._value, this._then);

  final GlobalAuthState _value;
  // ignore: unused_field
  final $Res Function(GlobalAuthState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  $Res call({FarmhubUser? farmhubUser, bool? isAdmin});

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
    required TResult Function() loading,
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) complete,
    required TResult Function() notLoggedIn,
  }) {
    return initial(farmhubUser, isAdmin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
    TResult Function()? loading,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? complete,
    TResult Function()? notLoggedIn,
  }) {
    return initial?.call(farmhubUser, isAdmin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
    TResult Function()? loading,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? complete,
    TResult Function()? notLoggedIn,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Complete value) complete,
    required TResult Function(NotLoggedIn value) notLoggedIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Complete value)? complete,
    TResult Function(NotLoggedIn value)? notLoggedIn,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Complete value)? complete,
    TResult Function(NotLoggedIn value)? notLoggedIn,
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

  FarmhubUser? get farmhubUser => throw _privateConstructorUsedError;
  bool? get isAdmin => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$GlobalAuthStateCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'GlobalAuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) initial,
    required TResult Function() loading,
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) complete,
    required TResult Function() notLoggedIn,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
    TResult Function()? loading,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? complete,
    TResult Function()? notLoggedIn,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
    TResult Function()? loading,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? complete,
    TResult Function()? notLoggedIn,
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
    required TResult Function(Complete value) complete,
    required TResult Function(NotLoggedIn value) notLoggedIn,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Complete value)? complete,
    TResult Function(NotLoggedIn value)? notLoggedIn,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Complete value)? complete,
    TResult Function(NotLoggedIn value)? notLoggedIn,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements GlobalAuthState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$CompleteCopyWith<$Res> {
  factory _$$CompleteCopyWith(
          _$Complete value, $Res Function(_$Complete) then) =
      __$$CompleteCopyWithImpl<$Res>;
  $Res call({FarmhubUser? farmhubUser, bool? isAdmin});

  $FarmhubUserCopyWith<$Res>? get farmhubUser;
}

/// @nodoc
class __$$CompleteCopyWithImpl<$Res> extends _$GlobalAuthStateCopyWithImpl<$Res>
    implements _$$CompleteCopyWith<$Res> {
  __$$CompleteCopyWithImpl(_$Complete _value, $Res Function(_$Complete) _then)
      : super(_value, (v) => _then(v as _$Complete));

  @override
  _$Complete get _value => super._value as _$Complete;

  @override
  $Res call({
    Object? farmhubUser = freezed,
    Object? isAdmin = freezed,
  }) {
    return _then(_$Complete(
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

class _$Complete implements Complete {
  const _$Complete({this.farmhubUser, this.isAdmin});

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
            other is _$Complete &&
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
  _$$CompleteCopyWith<_$Complete> get copyWith =>
      __$$CompleteCopyWithImpl<_$Complete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) initial,
    required TResult Function() loading,
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) complete,
    required TResult Function() notLoggedIn,
  }) {
    return complete(farmhubUser, isAdmin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
    TResult Function()? loading,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? complete,
    TResult Function()? notLoggedIn,
  }) {
    return complete?.call(farmhubUser, isAdmin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
    TResult Function()? loading,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? complete,
    TResult Function()? notLoggedIn,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Complete value) complete,
    required TResult Function(NotLoggedIn value) notLoggedIn,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Complete value)? complete,
    TResult Function(NotLoggedIn value)? notLoggedIn,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Complete value)? complete,
    TResult Function(NotLoggedIn value)? notLoggedIn,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class Complete implements GlobalAuthState {
  const factory Complete(
      {final FarmhubUser? farmhubUser, final bool? isAdmin}) = _$Complete;

  FarmhubUser? get farmhubUser => throw _privateConstructorUsedError;
  bool? get isAdmin => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CompleteCopyWith<_$Complete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotLoggedInCopyWith<$Res> {
  factory _$$NotLoggedInCopyWith(
          _$NotLoggedIn value, $Res Function(_$NotLoggedIn) then) =
      __$$NotLoggedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotLoggedInCopyWithImpl<$Res>
    extends _$GlobalAuthStateCopyWithImpl<$Res>
    implements _$$NotLoggedInCopyWith<$Res> {
  __$$NotLoggedInCopyWithImpl(
      _$NotLoggedIn _value, $Res Function(_$NotLoggedIn) _then)
      : super(_value, (v) => _then(v as _$NotLoggedIn));

  @override
  _$NotLoggedIn get _value => super._value as _$NotLoggedIn;
}

/// @nodoc

class _$NotLoggedIn implements NotLoggedIn {
  const _$NotLoggedIn();

  @override
  String toString() {
    return 'GlobalAuthState.notLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotLoggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) initial,
    required TResult Function() loading,
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) complete,
    required TResult Function() notLoggedIn,
  }) {
    return notLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
    TResult Function()? loading,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? complete,
    TResult Function()? notLoggedIn,
  }) {
    return notLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
    TResult Function()? loading,
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? complete,
    TResult Function()? notLoggedIn,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Complete value) complete,
    required TResult Function(NotLoggedIn value) notLoggedIn,
  }) {
    return notLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Complete value)? complete,
    TResult Function(NotLoggedIn value)? notLoggedIn,
  }) {
    return notLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Complete value)? complete,
    TResult Function(NotLoggedIn value)? notLoggedIn,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn(this);
    }
    return orElse();
  }
}

abstract class NotLoggedIn implements GlobalAuthState {
  const factory NotLoggedIn() = _$NotLoggedIn;
}
