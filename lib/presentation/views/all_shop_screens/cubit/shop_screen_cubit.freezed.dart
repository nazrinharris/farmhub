// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createShopLoading,
    required TResult Function(Shop shop) createShopSuccess,
    required TResult Function(Failure failure) createShopError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createShopLoading,
    TResult Function(Shop shop)? createShopSuccess,
    TResult Function(Failure failure)? createShopError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createShopLoading,
    TResult Function(Shop shop)? createShopSuccess,
    TResult Function(Failure failure)? createShopError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CreateShopLoading value) createShopLoading,
    required TResult Function(CreateShopSuccess value) createShopSuccess,
    required TResult Function(CreateShopError value) createShopError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateShopLoading value)? createShopLoading,
    TResult Function(CreateShopSuccess value)? createShopSuccess,
    TResult Function(CreateShopError value)? createShopError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateShopLoading value)? createShopLoading,
    TResult Function(CreateShopSuccess value)? createShopSuccess,
    TResult Function(CreateShopError value)? createShopError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopScreenStateCopyWith<$Res> {
  factory $ShopScreenStateCopyWith(
          ShopScreenState value, $Res Function(ShopScreenState) then) =
      _$ShopScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShopScreenStateCopyWithImpl<$Res>
    implements $ShopScreenStateCopyWith<$Res> {
  _$ShopScreenStateCopyWithImpl(this._value, this._then);

  final ShopScreenState _value;
  // ignore: unused_field
  final $Res Function(ShopScreenState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$ShopScreenStateCopyWithImpl<$Res>
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
    return 'ShopScreenState.initial()';
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
    required TResult Function() createShopLoading,
    required TResult Function(Shop shop) createShopSuccess,
    required TResult Function(Failure failure) createShopError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createShopLoading,
    TResult Function(Shop shop)? createShopSuccess,
    TResult Function(Failure failure)? createShopError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createShopLoading,
    TResult Function(Shop shop)? createShopSuccess,
    TResult Function(Failure failure)? createShopError,
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
    required TResult Function(CreateShopLoading value) createShopLoading,
    required TResult Function(CreateShopSuccess value) createShopSuccess,
    required TResult Function(CreateShopError value) createShopError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateShopLoading value)? createShopLoading,
    TResult Function(CreateShopSuccess value)? createShopSuccess,
    TResult Function(CreateShopError value)? createShopError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateShopLoading value)? createShopLoading,
    TResult Function(CreateShopSuccess value)? createShopSuccess,
    TResult Function(CreateShopError value)? createShopError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ShopScreenState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$CreateShopLoadingCopyWith<$Res> {
  factory _$$CreateShopLoadingCopyWith(
          _$CreateShopLoading value, $Res Function(_$CreateShopLoading) then) =
      __$$CreateShopLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateShopLoadingCopyWithImpl<$Res>
    extends _$ShopScreenStateCopyWithImpl<$Res>
    implements _$$CreateShopLoadingCopyWith<$Res> {
  __$$CreateShopLoadingCopyWithImpl(
      _$CreateShopLoading _value, $Res Function(_$CreateShopLoading) _then)
      : super(_value, (v) => _then(v as _$CreateShopLoading));

  @override
  _$CreateShopLoading get _value => super._value as _$CreateShopLoading;
}

/// @nodoc

class _$CreateShopLoading implements CreateShopLoading {
  const _$CreateShopLoading();

  @override
  String toString() {
    return 'ShopScreenState.createShopLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateShopLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createShopLoading,
    required TResult Function(Shop shop) createShopSuccess,
    required TResult Function(Failure failure) createShopError,
  }) {
    return createShopLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createShopLoading,
    TResult Function(Shop shop)? createShopSuccess,
    TResult Function(Failure failure)? createShopError,
  }) {
    return createShopLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createShopLoading,
    TResult Function(Shop shop)? createShopSuccess,
    TResult Function(Failure failure)? createShopError,
    required TResult orElse(),
  }) {
    if (createShopLoading != null) {
      return createShopLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CreateShopLoading value) createShopLoading,
    required TResult Function(CreateShopSuccess value) createShopSuccess,
    required TResult Function(CreateShopError value) createShopError,
  }) {
    return createShopLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateShopLoading value)? createShopLoading,
    TResult Function(CreateShopSuccess value)? createShopSuccess,
    TResult Function(CreateShopError value)? createShopError,
  }) {
    return createShopLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateShopLoading value)? createShopLoading,
    TResult Function(CreateShopSuccess value)? createShopSuccess,
    TResult Function(CreateShopError value)? createShopError,
    required TResult orElse(),
  }) {
    if (createShopLoading != null) {
      return createShopLoading(this);
    }
    return orElse();
  }
}

abstract class CreateShopLoading implements ShopScreenState {
  const factory CreateShopLoading() = _$CreateShopLoading;
}

/// @nodoc
abstract class _$$CreateShopSuccessCopyWith<$Res> {
  factory _$$CreateShopSuccessCopyWith(
          _$CreateShopSuccess value, $Res Function(_$CreateShopSuccess) then) =
      __$$CreateShopSuccessCopyWithImpl<$Res>;
  $Res call({Shop shop});

  $ShopCopyWith<$Res> get shop;
}

/// @nodoc
class __$$CreateShopSuccessCopyWithImpl<$Res>
    extends _$ShopScreenStateCopyWithImpl<$Res>
    implements _$$CreateShopSuccessCopyWith<$Res> {
  __$$CreateShopSuccessCopyWithImpl(
      _$CreateShopSuccess _value, $Res Function(_$CreateShopSuccess) _then)
      : super(_value, (v) => _then(v as _$CreateShopSuccess));

  @override
  _$CreateShopSuccess get _value => super._value as _$CreateShopSuccess;

  @override
  $Res call({
    Object? shop = freezed,
  }) {
    return _then(_$CreateShopSuccess(
      shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Shop,
    ));
  }

  @override
  $ShopCopyWith<$Res> get shop {
    return $ShopCopyWith<$Res>(_value.shop, (value) {
      return _then(_value.copyWith(shop: value));
    });
  }
}

/// @nodoc

class _$CreateShopSuccess implements CreateShopSuccess {
  const _$CreateShopSuccess(this.shop);

  @override
  final Shop shop;

  @override
  String toString() {
    return 'ShopScreenState.createShopSuccess(shop: $shop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateShopSuccess &&
            const DeepCollectionEquality().equals(other.shop, shop));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(shop));

  @JsonKey(ignore: true)
  @override
  _$$CreateShopSuccessCopyWith<_$CreateShopSuccess> get copyWith =>
      __$$CreateShopSuccessCopyWithImpl<_$CreateShopSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createShopLoading,
    required TResult Function(Shop shop) createShopSuccess,
    required TResult Function(Failure failure) createShopError,
  }) {
    return createShopSuccess(shop);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createShopLoading,
    TResult Function(Shop shop)? createShopSuccess,
    TResult Function(Failure failure)? createShopError,
  }) {
    return createShopSuccess?.call(shop);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createShopLoading,
    TResult Function(Shop shop)? createShopSuccess,
    TResult Function(Failure failure)? createShopError,
    required TResult orElse(),
  }) {
    if (createShopSuccess != null) {
      return createShopSuccess(shop);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CreateShopLoading value) createShopLoading,
    required TResult Function(CreateShopSuccess value) createShopSuccess,
    required TResult Function(CreateShopError value) createShopError,
  }) {
    return createShopSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateShopLoading value)? createShopLoading,
    TResult Function(CreateShopSuccess value)? createShopSuccess,
    TResult Function(CreateShopError value)? createShopError,
  }) {
    return createShopSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateShopLoading value)? createShopLoading,
    TResult Function(CreateShopSuccess value)? createShopSuccess,
    TResult Function(CreateShopError value)? createShopError,
    required TResult orElse(),
  }) {
    if (createShopSuccess != null) {
      return createShopSuccess(this);
    }
    return orElse();
  }
}

abstract class CreateShopSuccess implements ShopScreenState {
  const factory CreateShopSuccess(final Shop shop) = _$CreateShopSuccess;

  Shop get shop => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CreateShopSuccessCopyWith<_$CreateShopSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateShopErrorCopyWith<$Res> {
  factory _$$CreateShopErrorCopyWith(
          _$CreateShopError value, $Res Function(_$CreateShopError) then) =
      __$$CreateShopErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$$CreateShopErrorCopyWithImpl<$Res>
    extends _$ShopScreenStateCopyWithImpl<$Res>
    implements _$$CreateShopErrorCopyWith<$Res> {
  __$$CreateShopErrorCopyWithImpl(
      _$CreateShopError _value, $Res Function(_$CreateShopError) _then)
      : super(_value, (v) => _then(v as _$CreateShopError));

  @override
  _$CreateShopError get _value => super._value as _$CreateShopError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$CreateShopError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$CreateShopError implements CreateShopError {
  const _$CreateShopError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ShopScreenState.createShopError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateShopError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$CreateShopErrorCopyWith<_$CreateShopError> get copyWith =>
      __$$CreateShopErrorCopyWithImpl<_$CreateShopError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createShopLoading,
    required TResult Function(Shop shop) createShopSuccess,
    required TResult Function(Failure failure) createShopError,
  }) {
    return createShopError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createShopLoading,
    TResult Function(Shop shop)? createShopSuccess,
    TResult Function(Failure failure)? createShopError,
  }) {
    return createShopError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createShopLoading,
    TResult Function(Shop shop)? createShopSuccess,
    TResult Function(Failure failure)? createShopError,
    required TResult orElse(),
  }) {
    if (createShopError != null) {
      return createShopError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CreateShopLoading value) createShopLoading,
    required TResult Function(CreateShopSuccess value) createShopSuccess,
    required TResult Function(CreateShopError value) createShopError,
  }) {
    return createShopError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateShopLoading value)? createShopLoading,
    TResult Function(CreateShopSuccess value)? createShopSuccess,
    TResult Function(CreateShopError value)? createShopError,
  }) {
    return createShopError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreateShopLoading value)? createShopLoading,
    TResult Function(CreateShopSuccess value)? createShopSuccess,
    TResult Function(CreateShopError value)? createShopError,
    required TResult orElse(),
  }) {
    if (createShopError != null) {
      return createShopError(this);
    }
    return orElse();
  }
}

abstract class CreateShopError implements ShopScreenState {
  const factory CreateShopError(final Failure failure) = _$CreateShopError;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CreateShopErrorCopyWith<_$CreateShopError> get copyWith =>
      throw _privateConstructorUsedError;
}
