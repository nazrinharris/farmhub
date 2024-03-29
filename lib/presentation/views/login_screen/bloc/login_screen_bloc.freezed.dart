// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() idle,
    required TResult Function(BuildContext context) continuePressed,
    required TResult Function() toggleInfoTileVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? idle,
    TResult Function(BuildContext context)? continuePressed,
    TResult Function()? toggleInfoTileVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? idle,
    TResult Function(BuildContext context)? continuePressed,
    TResult Function()? toggleInfoTileVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LSEStarted value) started,
    required TResult Function(_LSEIdle value) idle,
    required TResult Function(_LSEContinuePressed value) continuePressed,
    required TResult Function(_LSEToggleVisible value) toggleInfoTileVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LSEStarted value)? started,
    TResult Function(_LSEIdle value)? idle,
    TResult Function(_LSEContinuePressed value)? continuePressed,
    TResult Function(_LSEToggleVisible value)? toggleInfoTileVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LSEStarted value)? started,
    TResult Function(_LSEIdle value)? idle,
    TResult Function(_LSEContinuePressed value)? continuePressed,
    TResult Function(_LSEToggleVisible value)? toggleInfoTileVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginScreenEventCopyWith<$Res> {
  factory $LoginScreenEventCopyWith(
          LoginScreenEvent value, $Res Function(LoginScreenEvent) then) =
      _$LoginScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginScreenEventCopyWithImpl<$Res>
    implements $LoginScreenEventCopyWith<$Res> {
  _$LoginScreenEventCopyWithImpl(this._value, this._then);

  final LoginScreenEvent _value;
  // ignore: unused_field
  final $Res Function(LoginScreenEvent) _then;
}

/// @nodoc
abstract class _$$_LSEStartedCopyWith<$Res> {
  factory _$$_LSEStartedCopyWith(
          _$_LSEStarted value, $Res Function(_$_LSEStarted) then) =
      __$$_LSEStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LSEStartedCopyWithImpl<$Res>
    extends _$LoginScreenEventCopyWithImpl<$Res>
    implements _$$_LSEStartedCopyWith<$Res> {
  __$$_LSEStartedCopyWithImpl(
      _$_LSEStarted _value, $Res Function(_$_LSEStarted) _then)
      : super(_value, (v) => _then(v as _$_LSEStarted));

  @override
  _$_LSEStarted get _value => super._value as _$_LSEStarted;
}

/// @nodoc

class _$_LSEStarted implements _LSEStarted {
  const _$_LSEStarted();

  @override
  String toString() {
    return 'LoginScreenEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LSEStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() idle,
    required TResult Function(BuildContext context) continuePressed,
    required TResult Function() toggleInfoTileVisibility,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? idle,
    TResult Function(BuildContext context)? continuePressed,
    TResult Function()? toggleInfoTileVisibility,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? idle,
    TResult Function(BuildContext context)? continuePressed,
    TResult Function()? toggleInfoTileVisibility,
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
    required TResult Function(_LSEStarted value) started,
    required TResult Function(_LSEIdle value) idle,
    required TResult Function(_LSEContinuePressed value) continuePressed,
    required TResult Function(_LSEToggleVisible value) toggleInfoTileVisibility,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LSEStarted value)? started,
    TResult Function(_LSEIdle value)? idle,
    TResult Function(_LSEContinuePressed value)? continuePressed,
    TResult Function(_LSEToggleVisible value)? toggleInfoTileVisibility,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LSEStarted value)? started,
    TResult Function(_LSEIdle value)? idle,
    TResult Function(_LSEContinuePressed value)? continuePressed,
    TResult Function(_LSEToggleVisible value)? toggleInfoTileVisibility,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _LSEStarted implements LoginScreenEvent {
  const factory _LSEStarted() = _$_LSEStarted;
}

/// @nodoc
abstract class _$$_LSEIdleCopyWith<$Res> {
  factory _$$_LSEIdleCopyWith(
          _$_LSEIdle value, $Res Function(_$_LSEIdle) then) =
      __$$_LSEIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LSEIdleCopyWithImpl<$Res>
    extends _$LoginScreenEventCopyWithImpl<$Res>
    implements _$$_LSEIdleCopyWith<$Res> {
  __$$_LSEIdleCopyWithImpl(_$_LSEIdle _value, $Res Function(_$_LSEIdle) _then)
      : super(_value, (v) => _then(v as _$_LSEIdle));

  @override
  _$_LSEIdle get _value => super._value as _$_LSEIdle;
}

/// @nodoc

class _$_LSEIdle implements _LSEIdle {
  const _$_LSEIdle();

  @override
  String toString() {
    return 'LoginScreenEvent.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LSEIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() idle,
    required TResult Function(BuildContext context) continuePressed,
    required TResult Function() toggleInfoTileVisibility,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? idle,
    TResult Function(BuildContext context)? continuePressed,
    TResult Function()? toggleInfoTileVisibility,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? idle,
    TResult Function(BuildContext context)? continuePressed,
    TResult Function()? toggleInfoTileVisibility,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LSEStarted value) started,
    required TResult Function(_LSEIdle value) idle,
    required TResult Function(_LSEContinuePressed value) continuePressed,
    required TResult Function(_LSEToggleVisible value) toggleInfoTileVisibility,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LSEStarted value)? started,
    TResult Function(_LSEIdle value)? idle,
    TResult Function(_LSEContinuePressed value)? continuePressed,
    TResult Function(_LSEToggleVisible value)? toggleInfoTileVisibility,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LSEStarted value)? started,
    TResult Function(_LSEIdle value)? idle,
    TResult Function(_LSEContinuePressed value)? continuePressed,
    TResult Function(_LSEToggleVisible value)? toggleInfoTileVisibility,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _LSEIdle implements LoginScreenEvent {
  const factory _LSEIdle() = _$_LSEIdle;
}

/// @nodoc
abstract class _$$_LSEContinuePressedCopyWith<$Res> {
  factory _$$_LSEContinuePressedCopyWith(_$_LSEContinuePressed value,
          $Res Function(_$_LSEContinuePressed) then) =
      __$$_LSEContinuePressedCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_LSEContinuePressedCopyWithImpl<$Res>
    extends _$LoginScreenEventCopyWithImpl<$Res>
    implements _$$_LSEContinuePressedCopyWith<$Res> {
  __$$_LSEContinuePressedCopyWithImpl(
      _$_LSEContinuePressed _value, $Res Function(_$_LSEContinuePressed) _then)
      : super(_value, (v) => _then(v as _$_LSEContinuePressed));

  @override
  _$_LSEContinuePressed get _value => super._value as _$_LSEContinuePressed;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(_$_LSEContinuePressed(
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_LSEContinuePressed implements _LSEContinuePressed {
  const _$_LSEContinuePressed(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LoginScreenEvent.continuePressed(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LSEContinuePressed &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$_LSEContinuePressedCopyWith<_$_LSEContinuePressed> get copyWith =>
      __$$_LSEContinuePressedCopyWithImpl<_$_LSEContinuePressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() idle,
    required TResult Function(BuildContext context) continuePressed,
    required TResult Function() toggleInfoTileVisibility,
  }) {
    return continuePressed(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? idle,
    TResult Function(BuildContext context)? continuePressed,
    TResult Function()? toggleInfoTileVisibility,
  }) {
    return continuePressed?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? idle,
    TResult Function(BuildContext context)? continuePressed,
    TResult Function()? toggleInfoTileVisibility,
    required TResult orElse(),
  }) {
    if (continuePressed != null) {
      return continuePressed(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LSEStarted value) started,
    required TResult Function(_LSEIdle value) idle,
    required TResult Function(_LSEContinuePressed value) continuePressed,
    required TResult Function(_LSEToggleVisible value) toggleInfoTileVisibility,
  }) {
    return continuePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LSEStarted value)? started,
    TResult Function(_LSEIdle value)? idle,
    TResult Function(_LSEContinuePressed value)? continuePressed,
    TResult Function(_LSEToggleVisible value)? toggleInfoTileVisibility,
  }) {
    return continuePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LSEStarted value)? started,
    TResult Function(_LSEIdle value)? idle,
    TResult Function(_LSEContinuePressed value)? continuePressed,
    TResult Function(_LSEToggleVisible value)? toggleInfoTileVisibility,
    required TResult orElse(),
  }) {
    if (continuePressed != null) {
      return continuePressed(this);
    }
    return orElse();
  }
}

abstract class _LSEContinuePressed implements LoginScreenEvent {
  const factory _LSEContinuePressed(final BuildContext context) =
      _$_LSEContinuePressed;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_LSEContinuePressedCopyWith<_$_LSEContinuePressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LSEToggleVisibleCopyWith<$Res> {
  factory _$$_LSEToggleVisibleCopyWith(
          _$_LSEToggleVisible value, $Res Function(_$_LSEToggleVisible) then) =
      __$$_LSEToggleVisibleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LSEToggleVisibleCopyWithImpl<$Res>
    extends _$LoginScreenEventCopyWithImpl<$Res>
    implements _$$_LSEToggleVisibleCopyWith<$Res> {
  __$$_LSEToggleVisibleCopyWithImpl(
      _$_LSEToggleVisible _value, $Res Function(_$_LSEToggleVisible) _then)
      : super(_value, (v) => _then(v as _$_LSEToggleVisible));

  @override
  _$_LSEToggleVisible get _value => super._value as _$_LSEToggleVisible;
}

/// @nodoc

class _$_LSEToggleVisible implements _LSEToggleVisible {
  const _$_LSEToggleVisible();

  @override
  String toString() {
    return 'LoginScreenEvent.toggleInfoTileVisibility()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LSEToggleVisible);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() idle,
    required TResult Function(BuildContext context) continuePressed,
    required TResult Function() toggleInfoTileVisibility,
  }) {
    return toggleInfoTileVisibility();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? idle,
    TResult Function(BuildContext context)? continuePressed,
    TResult Function()? toggleInfoTileVisibility,
  }) {
    return toggleInfoTileVisibility?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? idle,
    TResult Function(BuildContext context)? continuePressed,
    TResult Function()? toggleInfoTileVisibility,
    required TResult orElse(),
  }) {
    if (toggleInfoTileVisibility != null) {
      return toggleInfoTileVisibility();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LSEStarted value) started,
    required TResult Function(_LSEIdle value) idle,
    required TResult Function(_LSEContinuePressed value) continuePressed,
    required TResult Function(_LSEToggleVisible value) toggleInfoTileVisibility,
  }) {
    return toggleInfoTileVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LSEStarted value)? started,
    TResult Function(_LSEIdle value)? idle,
    TResult Function(_LSEContinuePressed value)? continuePressed,
    TResult Function(_LSEToggleVisible value)? toggleInfoTileVisibility,
  }) {
    return toggleInfoTileVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LSEStarted value)? started,
    TResult Function(_LSEIdle value)? idle,
    TResult Function(_LSEContinuePressed value)? continuePressed,
    TResult Function(_LSEToggleVisible value)? toggleInfoTileVisibility,
    required TResult orElse(),
  }) {
    if (toggleInfoTileVisibility != null) {
      return toggleInfoTileVisibility(this);
    }
    return orElse();
  }
}

abstract class _LSEToggleVisible implements LoginScreenEvent {
  const factory _LSEToggleVisible() = _$_LSEToggleVisible;
}

/// @nodoc
mixin _$LoginScreenState {
  LoginScreenProps get props => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginScreenProps props) initial,
    required TResult Function(LoginScreenProps props) loading,
    required TResult Function(LoginScreenProps props) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LoginScreenProps props)? initial,
    TResult Function(LoginScreenProps props)? loading,
    TResult Function(LoginScreenProps props)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginScreenProps props)? initial,
    TResult Function(LoginScreenProps props)? loading,
    TResult Function(LoginScreenProps props)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LSSInitial value) initial,
    required TResult Function(_LSSLoading value) loading,
    required TResult Function(_LSSIdle value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LSSInitial value)? initial,
    TResult Function(_LSSLoading value)? loading,
    TResult Function(_LSSIdle value)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LSSInitial value)? initial,
    TResult Function(_LSSLoading value)? loading,
    TResult Function(_LSSIdle value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginScreenStateCopyWith<LoginScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginScreenStateCopyWith<$Res> {
  factory $LoginScreenStateCopyWith(
          LoginScreenState value, $Res Function(LoginScreenState) then) =
      _$LoginScreenStateCopyWithImpl<$Res>;
  $Res call({LoginScreenProps props});

  $LoginScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$LoginScreenStateCopyWithImpl<$Res>
    implements $LoginScreenStateCopyWith<$Res> {
  _$LoginScreenStateCopyWithImpl(this._value, this._then);

  final LoginScreenState _value;
  // ignore: unused_field
  final $Res Function(LoginScreenState) _then;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(_value.copyWith(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as LoginScreenProps,
    ));
  }

  @override
  $LoginScreenPropsCopyWith<$Res> get props {
    return $LoginScreenPropsCopyWith<$Res>(_value.props, (value) {
      return _then(_value.copyWith(props: value));
    });
  }
}

/// @nodoc
abstract class _$$_LSSInitialCopyWith<$Res>
    implements $LoginScreenStateCopyWith<$Res> {
  factory _$$_LSSInitialCopyWith(
          _$_LSSInitial value, $Res Function(_$_LSSInitial) then) =
      __$$_LSSInitialCopyWithImpl<$Res>;
  @override
  $Res call({LoginScreenProps props});

  @override
  $LoginScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class __$$_LSSInitialCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res>
    implements _$$_LSSInitialCopyWith<$Res> {
  __$$_LSSInitialCopyWithImpl(
      _$_LSSInitial _value, $Res Function(_$_LSSInitial) _then)
      : super(_value, (v) => _then(v as _$_LSSInitial));

  @override
  _$_LSSInitial get _value => super._value as _$_LSSInitial;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(_$_LSSInitial(
      props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as LoginScreenProps,
    ));
  }
}

/// @nodoc

class _$_LSSInitial implements _LSSInitial {
  const _$_LSSInitial(this.props);

  @override
  final LoginScreenProps props;

  @override
  String toString() {
    return 'LoginScreenState.initial(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LSSInitial &&
            const DeepCollectionEquality().equals(other.props, props));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(props));

  @JsonKey(ignore: true)
  @override
  _$$_LSSInitialCopyWith<_$_LSSInitial> get copyWith =>
      __$$_LSSInitialCopyWithImpl<_$_LSSInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginScreenProps props) initial,
    required TResult Function(LoginScreenProps props) loading,
    required TResult Function(LoginScreenProps props) idle,
  }) {
    return initial(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LoginScreenProps props)? initial,
    TResult Function(LoginScreenProps props)? loading,
    TResult Function(LoginScreenProps props)? idle,
  }) {
    return initial?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginScreenProps props)? initial,
    TResult Function(LoginScreenProps props)? loading,
    TResult Function(LoginScreenProps props)? idle,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(props);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LSSInitial value) initial,
    required TResult Function(_LSSLoading value) loading,
    required TResult Function(_LSSIdle value) idle,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LSSInitial value)? initial,
    TResult Function(_LSSLoading value)? loading,
    TResult Function(_LSSIdle value)? idle,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LSSInitial value)? initial,
    TResult Function(_LSSLoading value)? loading,
    TResult Function(_LSSIdle value)? idle,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LSSInitial implements LoginScreenState {
  const factory _LSSInitial(final LoginScreenProps props) = _$_LSSInitial;

  @override
  LoginScreenProps get props;
  @override
  @JsonKey(ignore: true)
  _$$_LSSInitialCopyWith<_$_LSSInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LSSLoadingCopyWith<$Res>
    implements $LoginScreenStateCopyWith<$Res> {
  factory _$$_LSSLoadingCopyWith(
          _$_LSSLoading value, $Res Function(_$_LSSLoading) then) =
      __$$_LSSLoadingCopyWithImpl<$Res>;
  @override
  $Res call({LoginScreenProps props});

  @override
  $LoginScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class __$$_LSSLoadingCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res>
    implements _$$_LSSLoadingCopyWith<$Res> {
  __$$_LSSLoadingCopyWithImpl(
      _$_LSSLoading _value, $Res Function(_$_LSSLoading) _then)
      : super(_value, (v) => _then(v as _$_LSSLoading));

  @override
  _$_LSSLoading get _value => super._value as _$_LSSLoading;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(_$_LSSLoading(
      props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as LoginScreenProps,
    ));
  }
}

/// @nodoc

class _$_LSSLoading implements _LSSLoading {
  const _$_LSSLoading(this.props);

  @override
  final LoginScreenProps props;

  @override
  String toString() {
    return 'LoginScreenState.loading(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LSSLoading &&
            const DeepCollectionEquality().equals(other.props, props));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(props));

  @JsonKey(ignore: true)
  @override
  _$$_LSSLoadingCopyWith<_$_LSSLoading> get copyWith =>
      __$$_LSSLoadingCopyWithImpl<_$_LSSLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginScreenProps props) initial,
    required TResult Function(LoginScreenProps props) loading,
    required TResult Function(LoginScreenProps props) idle,
  }) {
    return loading(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LoginScreenProps props)? initial,
    TResult Function(LoginScreenProps props)? loading,
    TResult Function(LoginScreenProps props)? idle,
  }) {
    return loading?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginScreenProps props)? initial,
    TResult Function(LoginScreenProps props)? loading,
    TResult Function(LoginScreenProps props)? idle,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(props);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LSSInitial value) initial,
    required TResult Function(_LSSLoading value) loading,
    required TResult Function(_LSSIdle value) idle,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LSSInitial value)? initial,
    TResult Function(_LSSLoading value)? loading,
    TResult Function(_LSSIdle value)? idle,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LSSInitial value)? initial,
    TResult Function(_LSSLoading value)? loading,
    TResult Function(_LSSIdle value)? idle,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LSSLoading implements LoginScreenState {
  const factory _LSSLoading(final LoginScreenProps props) = _$_LSSLoading;

  @override
  LoginScreenProps get props;
  @override
  @JsonKey(ignore: true)
  _$$_LSSLoadingCopyWith<_$_LSSLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LSSIdleCopyWith<$Res>
    implements $LoginScreenStateCopyWith<$Res> {
  factory _$$_LSSIdleCopyWith(
          _$_LSSIdle value, $Res Function(_$_LSSIdle) then) =
      __$$_LSSIdleCopyWithImpl<$Res>;
  @override
  $Res call({LoginScreenProps props});

  @override
  $LoginScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class __$$_LSSIdleCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res>
    implements _$$_LSSIdleCopyWith<$Res> {
  __$$_LSSIdleCopyWithImpl(_$_LSSIdle _value, $Res Function(_$_LSSIdle) _then)
      : super(_value, (v) => _then(v as _$_LSSIdle));

  @override
  _$_LSSIdle get _value => super._value as _$_LSSIdle;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(_$_LSSIdle(
      props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as LoginScreenProps,
    ));
  }
}

/// @nodoc

class _$_LSSIdle implements _LSSIdle {
  const _$_LSSIdle(this.props);

  @override
  final LoginScreenProps props;

  @override
  String toString() {
    return 'LoginScreenState.idle(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LSSIdle &&
            const DeepCollectionEquality().equals(other.props, props));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(props));

  @JsonKey(ignore: true)
  @override
  _$$_LSSIdleCopyWith<_$_LSSIdle> get copyWith =>
      __$$_LSSIdleCopyWithImpl<_$_LSSIdle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginScreenProps props) initial,
    required TResult Function(LoginScreenProps props) loading,
    required TResult Function(LoginScreenProps props) idle,
  }) {
    return idle(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LoginScreenProps props)? initial,
    TResult Function(LoginScreenProps props)? loading,
    TResult Function(LoginScreenProps props)? idle,
  }) {
    return idle?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginScreenProps props)? initial,
    TResult Function(LoginScreenProps props)? loading,
    TResult Function(LoginScreenProps props)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(props);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LSSInitial value) initial,
    required TResult Function(_LSSLoading value) loading,
    required TResult Function(_LSSIdle value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LSSInitial value)? initial,
    TResult Function(_LSSLoading value)? loading,
    TResult Function(_LSSIdle value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LSSInitial value)? initial,
    TResult Function(_LSSLoading value)? loading,
    TResult Function(_LSSIdle value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _LSSIdle implements LoginScreenState {
  const factory _LSSIdle(final LoginScreenProps props) = _$_LSSIdle;

  @override
  LoginScreenProps get props;
  @override
  @JsonKey(ignore: true)
  _$$_LSSIdleCopyWith<_$_LSSIdle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginScreenProps {
  bool get isInfoTileVisible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginScreenPropsCopyWith<LoginScreenProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginScreenPropsCopyWith<$Res> {
  factory $LoginScreenPropsCopyWith(
          LoginScreenProps value, $Res Function(LoginScreenProps) then) =
      _$LoginScreenPropsCopyWithImpl<$Res>;
  $Res call({bool isInfoTileVisible});
}

/// @nodoc
class _$LoginScreenPropsCopyWithImpl<$Res>
    implements $LoginScreenPropsCopyWith<$Res> {
  _$LoginScreenPropsCopyWithImpl(this._value, this._then);

  final LoginScreenProps _value;
  // ignore: unused_field
  final $Res Function(LoginScreenProps) _then;

  @override
  $Res call({
    Object? isInfoTileVisible = freezed,
  }) {
    return _then(_value.copyWith(
      isInfoTileVisible: isInfoTileVisible == freezed
          ? _value.isInfoTileVisible
          : isInfoTileVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginScreenPropsCopyWith<$Res>
    implements $LoginScreenPropsCopyWith<$Res> {
  factory _$$_LoginScreenPropsCopyWith(
          _$_LoginScreenProps value, $Res Function(_$_LoginScreenProps) then) =
      __$$_LoginScreenPropsCopyWithImpl<$Res>;
  @override
  $Res call({bool isInfoTileVisible});
}

/// @nodoc
class __$$_LoginScreenPropsCopyWithImpl<$Res>
    extends _$LoginScreenPropsCopyWithImpl<$Res>
    implements _$$_LoginScreenPropsCopyWith<$Res> {
  __$$_LoginScreenPropsCopyWithImpl(
      _$_LoginScreenProps _value, $Res Function(_$_LoginScreenProps) _then)
      : super(_value, (v) => _then(v as _$_LoginScreenProps));

  @override
  _$_LoginScreenProps get _value => super._value as _$_LoginScreenProps;

  @override
  $Res call({
    Object? isInfoTileVisible = freezed,
  }) {
    return _then(_$_LoginScreenProps(
      isInfoTileVisible: isInfoTileVisible == freezed
          ? _value.isInfoTileVisible
          : isInfoTileVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginScreenProps implements _LoginScreenProps {
  const _$_LoginScreenProps({required this.isInfoTileVisible});

  @override
  final bool isInfoTileVisible;

  @override
  String toString() {
    return 'LoginScreenProps(isInfoTileVisible: $isInfoTileVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginScreenProps &&
            const DeepCollectionEquality()
                .equals(other.isInfoTileVisible, isInfoTileVisible));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isInfoTileVisible));

  @JsonKey(ignore: true)
  @override
  _$$_LoginScreenPropsCopyWith<_$_LoginScreenProps> get copyWith =>
      __$$_LoginScreenPropsCopyWithImpl<_$_LoginScreenProps>(this, _$identity);
}

abstract class _LoginScreenProps implements LoginScreenProps {
  const factory _LoginScreenProps({required final bool isInfoTileVisible}) =
      _$_LoginScreenProps;

  @override
  bool get isInfoTileVisible;
  @override
  @JsonKey(ignore: true)
  _$$_LoginScreenPropsCopyWith<_$_LoginScreenProps> get copyWith =>
      throw _privateConstructorUsedError;
}
