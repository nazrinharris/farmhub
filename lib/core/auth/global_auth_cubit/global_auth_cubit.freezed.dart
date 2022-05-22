// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'global_auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GlobalAuthStateTearOff {
  const _$GlobalAuthStateTearOff();

  _Initial initial({FarmhubUser? farmhubUser, bool? isAdmin}) {
    return _Initial(
      farmhubUser: farmhubUser,
      isAdmin: isAdmin,
    );
  }
}

/// @nodoc
const $GlobalAuthState = _$GlobalAuthStateTearOff();

/// @nodoc
mixin _$GlobalAuthState {
  FarmhubUser? get farmhubUser => throw _privateConstructorUsedError;
  bool? get isAdmin => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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
abstract class _$InitialCopyWith<$Res>
    implements $GlobalAuthStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({FarmhubUser? farmhubUser, bool? isAdmin});

  @override
  $FarmhubUserCopyWith<$Res>? get farmhubUser;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$GlobalAuthStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? farmhubUser = freezed,
    Object? isAdmin = freezed,
  }) {
    return _then(_Initial(
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

class _$_Initial implements _Initial {
  const _$_Initial({this.farmhubUser, this.isAdmin});

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
            other is _Initial &&
            (identical(other.farmhubUser, farmhubUser) ||
                other.farmhubUser == farmhubUser) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, farmhubUser, isAdmin);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FarmhubUser? farmhubUser, bool? isAdmin) initial,
  }) {
    return initial(farmhubUser, isAdmin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
  }) {
    return initial?.call(farmhubUser, isAdmin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FarmhubUser? farmhubUser, bool? isAdmin)? initial,
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
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GlobalAuthState {
  const factory _Initial({FarmhubUser? farmhubUser, bool? isAdmin}) =
      _$_Initial;

  @override
  FarmhubUser? get farmhubUser;
  @override
  bool? get isAdmin;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}