// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'primary_button_aware_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PrimaryButtonAwareState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialPage,
    required TResult Function() secondPage,
    required TResult Function() thirdPage,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? secondPage,
    TResult Function()? thirdPage,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? secondPage,
    TResult Function()? thirdPage,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialPage,
    required TResult Function(_SecondPage value) secondPage,
    required TResult Function(_ThirdPage value) thirdPage,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_SecondPage value)? secondPage,
    TResult Function(_ThirdPage value)? thirdPage,
    TResult Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_SecondPage value)? secondPage,
    TResult Function(_ThirdPage value)? thirdPage,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimaryButtonAwareStateCopyWith<$Res> {
  factory $PrimaryButtonAwareStateCopyWith(PrimaryButtonAwareState value,
          $Res Function(PrimaryButtonAwareState) then) =
      _$PrimaryButtonAwareStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PrimaryButtonAwareStateCopyWithImpl<$Res>
    implements $PrimaryButtonAwareStateCopyWith<$Res> {
  _$PrimaryButtonAwareStateCopyWithImpl(this._value, this._then);

  final PrimaryButtonAwareState _value;
  // ignore: unused_field
  final $Res Function(PrimaryButtonAwareState) _then;
}

/// @nodoc
abstract class _$$_InitialPageCopyWith<$Res> {
  factory _$$_InitialPageCopyWith(
          _$_InitialPage value, $Res Function(_$_InitialPage) then) =
      __$$_InitialPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialPageCopyWithImpl<$Res>
    extends _$PrimaryButtonAwareStateCopyWithImpl<$Res>
    implements _$$_InitialPageCopyWith<$Res> {
  __$$_InitialPageCopyWithImpl(
      _$_InitialPage _value, $Res Function(_$_InitialPage) _then)
      : super(_value, (v) => _then(v as _$_InitialPage));

  @override
  _$_InitialPage get _value => super._value as _$_InitialPage;
}

/// @nodoc

class _$_InitialPage implements _InitialPage {
  const _$_InitialPage();

  @override
  String toString() {
    return 'PrimaryButtonAwareState.initialPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialPage,
    required TResult Function() secondPage,
    required TResult Function() thirdPage,
    required TResult Function() loading,
  }) {
    return initialPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? secondPage,
    TResult Function()? thirdPage,
    TResult Function()? loading,
  }) {
    return initialPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? secondPage,
    TResult Function()? thirdPage,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initialPage != null) {
      return initialPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialPage,
    required TResult Function(_SecondPage value) secondPage,
    required TResult Function(_ThirdPage value) thirdPage,
    required TResult Function(_Loading value) loading,
  }) {
    return initialPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_SecondPage value)? secondPage,
    TResult Function(_ThirdPage value)? thirdPage,
    TResult Function(_Loading value)? loading,
  }) {
    return initialPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_SecondPage value)? secondPage,
    TResult Function(_ThirdPage value)? thirdPage,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initialPage != null) {
      return initialPage(this);
    }
    return orElse();
  }
}

abstract class _InitialPage implements PrimaryButtonAwareState {
  const factory _InitialPage() = _$_InitialPage;
}

/// @nodoc
abstract class _$$_SecondPageCopyWith<$Res> {
  factory _$$_SecondPageCopyWith(
          _$_SecondPage value, $Res Function(_$_SecondPage) then) =
      __$$_SecondPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SecondPageCopyWithImpl<$Res>
    extends _$PrimaryButtonAwareStateCopyWithImpl<$Res>
    implements _$$_SecondPageCopyWith<$Res> {
  __$$_SecondPageCopyWithImpl(
      _$_SecondPage _value, $Res Function(_$_SecondPage) _then)
      : super(_value, (v) => _then(v as _$_SecondPage));

  @override
  _$_SecondPage get _value => super._value as _$_SecondPage;
}

/// @nodoc

class _$_SecondPage implements _SecondPage {
  const _$_SecondPage();

  @override
  String toString() {
    return 'PrimaryButtonAwareState.secondPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SecondPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialPage,
    required TResult Function() secondPage,
    required TResult Function() thirdPage,
    required TResult Function() loading,
  }) {
    return secondPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? secondPage,
    TResult Function()? thirdPage,
    TResult Function()? loading,
  }) {
    return secondPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? secondPage,
    TResult Function()? thirdPage,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (secondPage != null) {
      return secondPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialPage,
    required TResult Function(_SecondPage value) secondPage,
    required TResult Function(_ThirdPage value) thirdPage,
    required TResult Function(_Loading value) loading,
  }) {
    return secondPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_SecondPage value)? secondPage,
    TResult Function(_ThirdPage value)? thirdPage,
    TResult Function(_Loading value)? loading,
  }) {
    return secondPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_SecondPage value)? secondPage,
    TResult Function(_ThirdPage value)? thirdPage,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (secondPage != null) {
      return secondPage(this);
    }
    return orElse();
  }
}

abstract class _SecondPage implements PrimaryButtonAwareState {
  const factory _SecondPage() = _$_SecondPage;
}

/// @nodoc
abstract class _$$_ThirdPageCopyWith<$Res> {
  factory _$$_ThirdPageCopyWith(
          _$_ThirdPage value, $Res Function(_$_ThirdPage) then) =
      __$$_ThirdPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ThirdPageCopyWithImpl<$Res>
    extends _$PrimaryButtonAwareStateCopyWithImpl<$Res>
    implements _$$_ThirdPageCopyWith<$Res> {
  __$$_ThirdPageCopyWithImpl(
      _$_ThirdPage _value, $Res Function(_$_ThirdPage) _then)
      : super(_value, (v) => _then(v as _$_ThirdPage));

  @override
  _$_ThirdPage get _value => super._value as _$_ThirdPage;
}

/// @nodoc

class _$_ThirdPage implements _ThirdPage {
  const _$_ThirdPage();

  @override
  String toString() {
    return 'PrimaryButtonAwareState.thirdPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ThirdPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialPage,
    required TResult Function() secondPage,
    required TResult Function() thirdPage,
    required TResult Function() loading,
  }) {
    return thirdPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? secondPage,
    TResult Function()? thirdPage,
    TResult Function()? loading,
  }) {
    return thirdPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? secondPage,
    TResult Function()? thirdPage,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (thirdPage != null) {
      return thirdPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialPage,
    required TResult Function(_SecondPage value) secondPage,
    required TResult Function(_ThirdPage value) thirdPage,
    required TResult Function(_Loading value) loading,
  }) {
    return thirdPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_SecondPage value)? secondPage,
    TResult Function(_ThirdPage value)? thirdPage,
    TResult Function(_Loading value)? loading,
  }) {
    return thirdPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_SecondPage value)? secondPage,
    TResult Function(_ThirdPage value)? thirdPage,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (thirdPage != null) {
      return thirdPage(this);
    }
    return orElse();
  }
}

abstract class _ThirdPage implements PrimaryButtonAwareState {
  const factory _ThirdPage() = _$_ThirdPage;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$PrimaryButtonAwareStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'PrimaryButtonAwareState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialPage,
    required TResult Function() secondPage,
    required TResult Function() thirdPage,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? secondPage,
    TResult Function()? thirdPage,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? secondPage,
    TResult Function()? thirdPage,
    TResult Function()? loading,
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
    required TResult Function(_InitialPage value) initialPage,
    required TResult Function(_SecondPage value) secondPage,
    required TResult Function(_ThirdPage value) thirdPage,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_SecondPage value)? secondPage,
    TResult Function(_ThirdPage value)? thirdPage,
    TResult Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_SecondPage value)? secondPage,
    TResult Function(_ThirdPage value)? thirdPage,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PrimaryButtonAwareState {
  const factory _Loading() = _$_Loading;
}
