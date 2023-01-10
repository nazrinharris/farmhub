// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterScreenEvent {
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
    required TResult Function(_RSEStarted value) started,
    required TResult Function(_RSEIdle value) idle,
    required TResult Function(_RSEContinuePressed value) continuePressed,
    required TResult Function(_RSEToggleVisible value) toggleInfoTileVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RSEStarted value)? started,
    TResult Function(_RSEIdle value)? idle,
    TResult Function(_RSEContinuePressed value)? continuePressed,
    TResult Function(_RSEToggleVisible value)? toggleInfoTileVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RSEStarted value)? started,
    TResult Function(_RSEIdle value)? idle,
    TResult Function(_RSEContinuePressed value)? continuePressed,
    TResult Function(_RSEToggleVisible value)? toggleInfoTileVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterScreenEventCopyWith<$Res> {
  factory $RegisterScreenEventCopyWith(
          RegisterScreenEvent value, $Res Function(RegisterScreenEvent) then) =
      _$RegisterScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterScreenEventCopyWithImpl<$Res>
    implements $RegisterScreenEventCopyWith<$Res> {
  _$RegisterScreenEventCopyWithImpl(this._value, this._then);

  final RegisterScreenEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterScreenEvent) _then;
}

/// @nodoc
abstract class _$$_RSEStartedCopyWith<$Res> {
  factory _$$_RSEStartedCopyWith(
          _$_RSEStarted value, $Res Function(_$_RSEStarted) then) =
      __$$_RSEStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RSEStartedCopyWithImpl<$Res>
    extends _$RegisterScreenEventCopyWithImpl<$Res>
    implements _$$_RSEStartedCopyWith<$Res> {
  __$$_RSEStartedCopyWithImpl(
      _$_RSEStarted _value, $Res Function(_$_RSEStarted) _then)
      : super(_value, (v) => _then(v as _$_RSEStarted));

  @override
  _$_RSEStarted get _value => super._value as _$_RSEStarted;
}

/// @nodoc

class _$_RSEStarted implements _RSEStarted {
  const _$_RSEStarted();

  @override
  String toString() {
    return 'RegisterScreenEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RSEStarted);
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
    required TResult Function(_RSEStarted value) started,
    required TResult Function(_RSEIdle value) idle,
    required TResult Function(_RSEContinuePressed value) continuePressed,
    required TResult Function(_RSEToggleVisible value) toggleInfoTileVisibility,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RSEStarted value)? started,
    TResult Function(_RSEIdle value)? idle,
    TResult Function(_RSEContinuePressed value)? continuePressed,
    TResult Function(_RSEToggleVisible value)? toggleInfoTileVisibility,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RSEStarted value)? started,
    TResult Function(_RSEIdle value)? idle,
    TResult Function(_RSEContinuePressed value)? continuePressed,
    TResult Function(_RSEToggleVisible value)? toggleInfoTileVisibility,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _RSEStarted implements RegisterScreenEvent {
  const factory _RSEStarted() = _$_RSEStarted;
}

/// @nodoc
abstract class _$$_RSEIdleCopyWith<$Res> {
  factory _$$_RSEIdleCopyWith(
          _$_RSEIdle value, $Res Function(_$_RSEIdle) then) =
      __$$_RSEIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RSEIdleCopyWithImpl<$Res>
    extends _$RegisterScreenEventCopyWithImpl<$Res>
    implements _$$_RSEIdleCopyWith<$Res> {
  __$$_RSEIdleCopyWithImpl(_$_RSEIdle _value, $Res Function(_$_RSEIdle) _then)
      : super(_value, (v) => _then(v as _$_RSEIdle));

  @override
  _$_RSEIdle get _value => super._value as _$_RSEIdle;
}

/// @nodoc

class _$_RSEIdle implements _RSEIdle {
  const _$_RSEIdle();

  @override
  String toString() {
    return 'RegisterScreenEvent.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RSEIdle);
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
    required TResult Function(_RSEStarted value) started,
    required TResult Function(_RSEIdle value) idle,
    required TResult Function(_RSEContinuePressed value) continuePressed,
    required TResult Function(_RSEToggleVisible value) toggleInfoTileVisibility,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RSEStarted value)? started,
    TResult Function(_RSEIdle value)? idle,
    TResult Function(_RSEContinuePressed value)? continuePressed,
    TResult Function(_RSEToggleVisible value)? toggleInfoTileVisibility,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RSEStarted value)? started,
    TResult Function(_RSEIdle value)? idle,
    TResult Function(_RSEContinuePressed value)? continuePressed,
    TResult Function(_RSEToggleVisible value)? toggleInfoTileVisibility,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _RSEIdle implements RegisterScreenEvent {
  const factory _RSEIdle() = _$_RSEIdle;
}

/// @nodoc
abstract class _$$_RSEContinuePressedCopyWith<$Res> {
  factory _$$_RSEContinuePressedCopyWith(_$_RSEContinuePressed value,
          $Res Function(_$_RSEContinuePressed) then) =
      __$$_RSEContinuePressedCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_RSEContinuePressedCopyWithImpl<$Res>
    extends _$RegisterScreenEventCopyWithImpl<$Res>
    implements _$$_RSEContinuePressedCopyWith<$Res> {
  __$$_RSEContinuePressedCopyWithImpl(
      _$_RSEContinuePressed _value, $Res Function(_$_RSEContinuePressed) _then)
      : super(_value, (v) => _then(v as _$_RSEContinuePressed));

  @override
  _$_RSEContinuePressed get _value => super._value as _$_RSEContinuePressed;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(_$_RSEContinuePressed(
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_RSEContinuePressed implements _RSEContinuePressed {
  const _$_RSEContinuePressed(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'RegisterScreenEvent.continuePressed(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RSEContinuePressed &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$_RSEContinuePressedCopyWith<_$_RSEContinuePressed> get copyWith =>
      __$$_RSEContinuePressedCopyWithImpl<_$_RSEContinuePressed>(
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
    required TResult Function(_RSEStarted value) started,
    required TResult Function(_RSEIdle value) idle,
    required TResult Function(_RSEContinuePressed value) continuePressed,
    required TResult Function(_RSEToggleVisible value) toggleInfoTileVisibility,
  }) {
    return continuePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RSEStarted value)? started,
    TResult Function(_RSEIdle value)? idle,
    TResult Function(_RSEContinuePressed value)? continuePressed,
    TResult Function(_RSEToggleVisible value)? toggleInfoTileVisibility,
  }) {
    return continuePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RSEStarted value)? started,
    TResult Function(_RSEIdle value)? idle,
    TResult Function(_RSEContinuePressed value)? continuePressed,
    TResult Function(_RSEToggleVisible value)? toggleInfoTileVisibility,
    required TResult orElse(),
  }) {
    if (continuePressed != null) {
      return continuePressed(this);
    }
    return orElse();
  }
}

abstract class _RSEContinuePressed implements RegisterScreenEvent {
  const factory _RSEContinuePressed(final BuildContext context) =
      _$_RSEContinuePressed;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_RSEContinuePressedCopyWith<_$_RSEContinuePressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RSEToggleVisibleCopyWith<$Res> {
  factory _$$_RSEToggleVisibleCopyWith(
          _$_RSEToggleVisible value, $Res Function(_$_RSEToggleVisible) then) =
      __$$_RSEToggleVisibleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RSEToggleVisibleCopyWithImpl<$Res>
    extends _$RegisterScreenEventCopyWithImpl<$Res>
    implements _$$_RSEToggleVisibleCopyWith<$Res> {
  __$$_RSEToggleVisibleCopyWithImpl(
      _$_RSEToggleVisible _value, $Res Function(_$_RSEToggleVisible) _then)
      : super(_value, (v) => _then(v as _$_RSEToggleVisible));

  @override
  _$_RSEToggleVisible get _value => super._value as _$_RSEToggleVisible;
}

/// @nodoc

class _$_RSEToggleVisible implements _RSEToggleVisible {
  const _$_RSEToggleVisible();

  @override
  String toString() {
    return 'RegisterScreenEvent.toggleInfoTileVisibility()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RSEToggleVisible);
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
    required TResult Function(_RSEStarted value) started,
    required TResult Function(_RSEIdle value) idle,
    required TResult Function(_RSEContinuePressed value) continuePressed,
    required TResult Function(_RSEToggleVisible value) toggleInfoTileVisibility,
  }) {
    return toggleInfoTileVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RSEStarted value)? started,
    TResult Function(_RSEIdle value)? idle,
    TResult Function(_RSEContinuePressed value)? continuePressed,
    TResult Function(_RSEToggleVisible value)? toggleInfoTileVisibility,
  }) {
    return toggleInfoTileVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RSEStarted value)? started,
    TResult Function(_RSEIdle value)? idle,
    TResult Function(_RSEContinuePressed value)? continuePressed,
    TResult Function(_RSEToggleVisible value)? toggleInfoTileVisibility,
    required TResult orElse(),
  }) {
    if (toggleInfoTileVisibility != null) {
      return toggleInfoTileVisibility(this);
    }
    return orElse();
  }
}

abstract class _RSEToggleVisible implements RegisterScreenEvent {
  const factory _RSEToggleVisible() = _$_RSEToggleVisible;
}

/// @nodoc
mixin _$RegisterScreenState {
  RegisterScreenProps get props => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterScreenProps props) initial,
    required TResult Function(RegisterScreenProps props) loading,
    required TResult Function(RegisterScreenProps props) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RegisterScreenProps props)? initial,
    TResult Function(RegisterScreenProps props)? loading,
    TResult Function(RegisterScreenProps props)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterScreenProps props)? initial,
    TResult Function(RegisterScreenProps props)? loading,
    TResult Function(RegisterScreenProps props)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RSSInitial value) initial,
    required TResult Function(_RSSLoading value) loading,
    required TResult Function(_RSSIdle value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RSSInitial value)? initial,
    TResult Function(_RSSLoading value)? loading,
    TResult Function(_RSSIdle value)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RSSInitial value)? initial,
    TResult Function(_RSSLoading value)? loading,
    TResult Function(_RSSIdle value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterScreenStateCopyWith<RegisterScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterScreenStateCopyWith<$Res> {
  factory $RegisterScreenStateCopyWith(
          RegisterScreenState value, $Res Function(RegisterScreenState) then) =
      _$RegisterScreenStateCopyWithImpl<$Res>;
  $Res call({RegisterScreenProps props});

  $RegisterScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$RegisterScreenStateCopyWithImpl<$Res>
    implements $RegisterScreenStateCopyWith<$Res> {
  _$RegisterScreenStateCopyWithImpl(this._value, this._then);

  final RegisterScreenState _value;
  // ignore: unused_field
  final $Res Function(RegisterScreenState) _then;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(_value.copyWith(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as RegisterScreenProps,
    ));
  }

  @override
  $RegisterScreenPropsCopyWith<$Res> get props {
    return $RegisterScreenPropsCopyWith<$Res>(_value.props, (value) {
      return _then(_value.copyWith(props: value));
    });
  }
}

/// @nodoc
abstract class _$$_RSSInitialCopyWith<$Res>
    implements $RegisterScreenStateCopyWith<$Res> {
  factory _$$_RSSInitialCopyWith(
          _$_RSSInitial value, $Res Function(_$_RSSInitial) then) =
      __$$_RSSInitialCopyWithImpl<$Res>;
  @override
  $Res call({RegisterScreenProps props});

  @override
  $RegisterScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class __$$_RSSInitialCopyWithImpl<$Res>
    extends _$RegisterScreenStateCopyWithImpl<$Res>
    implements _$$_RSSInitialCopyWith<$Res> {
  __$$_RSSInitialCopyWithImpl(
      _$_RSSInitial _value, $Res Function(_$_RSSInitial) _then)
      : super(_value, (v) => _then(v as _$_RSSInitial));

  @override
  _$_RSSInitial get _value => super._value as _$_RSSInitial;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(_$_RSSInitial(
      props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as RegisterScreenProps,
    ));
  }
}

/// @nodoc

class _$_RSSInitial implements _RSSInitial {
  const _$_RSSInitial(this.props);

  @override
  final RegisterScreenProps props;

  @override
  String toString() {
    return 'RegisterScreenState.initial(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RSSInitial &&
            const DeepCollectionEquality().equals(other.props, props));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(props));

  @JsonKey(ignore: true)
  @override
  _$$_RSSInitialCopyWith<_$_RSSInitial> get copyWith =>
      __$$_RSSInitialCopyWithImpl<_$_RSSInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterScreenProps props) initial,
    required TResult Function(RegisterScreenProps props) loading,
    required TResult Function(RegisterScreenProps props) idle,
  }) {
    return initial(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RegisterScreenProps props)? initial,
    TResult Function(RegisterScreenProps props)? loading,
    TResult Function(RegisterScreenProps props)? idle,
  }) {
    return initial?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterScreenProps props)? initial,
    TResult Function(RegisterScreenProps props)? loading,
    TResult Function(RegisterScreenProps props)? idle,
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
    required TResult Function(_RSSInitial value) initial,
    required TResult Function(_RSSLoading value) loading,
    required TResult Function(_RSSIdle value) idle,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RSSInitial value)? initial,
    TResult Function(_RSSLoading value)? loading,
    TResult Function(_RSSIdle value)? idle,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RSSInitial value)? initial,
    TResult Function(_RSSLoading value)? loading,
    TResult Function(_RSSIdle value)? idle,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _RSSInitial implements RegisterScreenState {
  const factory _RSSInitial(final RegisterScreenProps props) = _$_RSSInitial;

  @override
  RegisterScreenProps get props;
  @override
  @JsonKey(ignore: true)
  _$$_RSSInitialCopyWith<_$_RSSInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RSSLoadingCopyWith<$Res>
    implements $RegisterScreenStateCopyWith<$Res> {
  factory _$$_RSSLoadingCopyWith(
          _$_RSSLoading value, $Res Function(_$_RSSLoading) then) =
      __$$_RSSLoadingCopyWithImpl<$Res>;
  @override
  $Res call({RegisterScreenProps props});

  @override
  $RegisterScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class __$$_RSSLoadingCopyWithImpl<$Res>
    extends _$RegisterScreenStateCopyWithImpl<$Res>
    implements _$$_RSSLoadingCopyWith<$Res> {
  __$$_RSSLoadingCopyWithImpl(
      _$_RSSLoading _value, $Res Function(_$_RSSLoading) _then)
      : super(_value, (v) => _then(v as _$_RSSLoading));

  @override
  _$_RSSLoading get _value => super._value as _$_RSSLoading;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(_$_RSSLoading(
      props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as RegisterScreenProps,
    ));
  }
}

/// @nodoc

class _$_RSSLoading implements _RSSLoading {
  const _$_RSSLoading(this.props);

  @override
  final RegisterScreenProps props;

  @override
  String toString() {
    return 'RegisterScreenState.loading(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RSSLoading &&
            const DeepCollectionEquality().equals(other.props, props));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(props));

  @JsonKey(ignore: true)
  @override
  _$$_RSSLoadingCopyWith<_$_RSSLoading> get copyWith =>
      __$$_RSSLoadingCopyWithImpl<_$_RSSLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterScreenProps props) initial,
    required TResult Function(RegisterScreenProps props) loading,
    required TResult Function(RegisterScreenProps props) idle,
  }) {
    return loading(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RegisterScreenProps props)? initial,
    TResult Function(RegisterScreenProps props)? loading,
    TResult Function(RegisterScreenProps props)? idle,
  }) {
    return loading?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterScreenProps props)? initial,
    TResult Function(RegisterScreenProps props)? loading,
    TResult Function(RegisterScreenProps props)? idle,
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
    required TResult Function(_RSSInitial value) initial,
    required TResult Function(_RSSLoading value) loading,
    required TResult Function(_RSSIdle value) idle,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RSSInitial value)? initial,
    TResult Function(_RSSLoading value)? loading,
    TResult Function(_RSSIdle value)? idle,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RSSInitial value)? initial,
    TResult Function(_RSSLoading value)? loading,
    TResult Function(_RSSIdle value)? idle,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RSSLoading implements RegisterScreenState {
  const factory _RSSLoading(final RegisterScreenProps props) = _$_RSSLoading;

  @override
  RegisterScreenProps get props;
  @override
  @JsonKey(ignore: true)
  _$$_RSSLoadingCopyWith<_$_RSSLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RSSIdleCopyWith<$Res>
    implements $RegisterScreenStateCopyWith<$Res> {
  factory _$$_RSSIdleCopyWith(
          _$_RSSIdle value, $Res Function(_$_RSSIdle) then) =
      __$$_RSSIdleCopyWithImpl<$Res>;
  @override
  $Res call({RegisterScreenProps props});

  @override
  $RegisterScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class __$$_RSSIdleCopyWithImpl<$Res>
    extends _$RegisterScreenStateCopyWithImpl<$Res>
    implements _$$_RSSIdleCopyWith<$Res> {
  __$$_RSSIdleCopyWithImpl(_$_RSSIdle _value, $Res Function(_$_RSSIdle) _then)
      : super(_value, (v) => _then(v as _$_RSSIdle));

  @override
  _$_RSSIdle get _value => super._value as _$_RSSIdle;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(_$_RSSIdle(
      props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as RegisterScreenProps,
    ));
  }
}

/// @nodoc

class _$_RSSIdle implements _RSSIdle {
  const _$_RSSIdle(this.props);

  @override
  final RegisterScreenProps props;

  @override
  String toString() {
    return 'RegisterScreenState.idle(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RSSIdle &&
            const DeepCollectionEquality().equals(other.props, props));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(props));

  @JsonKey(ignore: true)
  @override
  _$$_RSSIdleCopyWith<_$_RSSIdle> get copyWith =>
      __$$_RSSIdleCopyWithImpl<_$_RSSIdle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterScreenProps props) initial,
    required TResult Function(RegisterScreenProps props) loading,
    required TResult Function(RegisterScreenProps props) idle,
  }) {
    return idle(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RegisterScreenProps props)? initial,
    TResult Function(RegisterScreenProps props)? loading,
    TResult Function(RegisterScreenProps props)? idle,
  }) {
    return idle?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterScreenProps props)? initial,
    TResult Function(RegisterScreenProps props)? loading,
    TResult Function(RegisterScreenProps props)? idle,
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
    required TResult Function(_RSSInitial value) initial,
    required TResult Function(_RSSLoading value) loading,
    required TResult Function(_RSSIdle value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RSSInitial value)? initial,
    TResult Function(_RSSLoading value)? loading,
    TResult Function(_RSSIdle value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RSSInitial value)? initial,
    TResult Function(_RSSLoading value)? loading,
    TResult Function(_RSSIdle value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _RSSIdle implements RegisterScreenState {
  const factory _RSSIdle(final RegisterScreenProps props) = _$_RSSIdle;

  @override
  RegisterScreenProps get props;
  @override
  @JsonKey(ignore: true)
  _$$_RSSIdleCopyWith<_$_RSSIdle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterScreenProps {
  bool get isInfoTileVisible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterScreenPropsCopyWith<RegisterScreenProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterScreenPropsCopyWith<$Res> {
  factory $RegisterScreenPropsCopyWith(
          RegisterScreenProps value, $Res Function(RegisterScreenProps) then) =
      _$RegisterScreenPropsCopyWithImpl<$Res>;
  $Res call({bool isInfoTileVisible});
}

/// @nodoc
class _$RegisterScreenPropsCopyWithImpl<$Res>
    implements $RegisterScreenPropsCopyWith<$Res> {
  _$RegisterScreenPropsCopyWithImpl(this._value, this._then);

  final RegisterScreenProps _value;
  // ignore: unused_field
  final $Res Function(RegisterScreenProps) _then;

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
abstract class _$$_RegisterScreenPropsCopyWith<$Res>
    implements $RegisterScreenPropsCopyWith<$Res> {
  factory _$$_RegisterScreenPropsCopyWith(_$_RegisterScreenProps value,
          $Res Function(_$_RegisterScreenProps) then) =
      __$$_RegisterScreenPropsCopyWithImpl<$Res>;
  @override
  $Res call({bool isInfoTileVisible});
}

/// @nodoc
class __$$_RegisterScreenPropsCopyWithImpl<$Res>
    extends _$RegisterScreenPropsCopyWithImpl<$Res>
    implements _$$_RegisterScreenPropsCopyWith<$Res> {
  __$$_RegisterScreenPropsCopyWithImpl(_$_RegisterScreenProps _value,
      $Res Function(_$_RegisterScreenProps) _then)
      : super(_value, (v) => _then(v as _$_RegisterScreenProps));

  @override
  _$_RegisterScreenProps get _value => super._value as _$_RegisterScreenProps;

  @override
  $Res call({
    Object? isInfoTileVisible = freezed,
  }) {
    return _then(_$_RegisterScreenProps(
      isInfoTileVisible: isInfoTileVisible == freezed
          ? _value.isInfoTileVisible
          : isInfoTileVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RegisterScreenProps implements _RegisterScreenProps {
  const _$_RegisterScreenProps({required this.isInfoTileVisible});

  @override
  final bool isInfoTileVisible;

  @override
  String toString() {
    return 'RegisterScreenProps(isInfoTileVisible: $isInfoTileVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterScreenProps &&
            const DeepCollectionEquality()
                .equals(other.isInfoTileVisible, isInfoTileVisible));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isInfoTileVisible));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterScreenPropsCopyWith<_$_RegisterScreenProps> get copyWith =>
      __$$_RegisterScreenPropsCopyWithImpl<_$_RegisterScreenProps>(
          this, _$identity);
}

abstract class _RegisterScreenProps implements RegisterScreenProps {
  const factory _RegisterScreenProps({required final bool isInfoTileVisible}) =
      _$_RegisterScreenProps;

  @override
  bool get isInfoTileVisible;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterScreenPropsCopyWith<_$_RegisterScreenProps> get copyWith =>
      throw _privateConstructorUsedError;
}
