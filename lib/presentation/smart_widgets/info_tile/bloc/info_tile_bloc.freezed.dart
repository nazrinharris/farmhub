// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'info_tile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InfoTileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleExpansion,
    required TResult Function(InfoTileProps infoTileProps) triggerStateChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? toggleExpansion,
    TResult Function(InfoTileProps infoTileProps)? triggerStateChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleExpansion,
    TResult Function(InfoTileProps infoTileProps)? triggerStateChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleExpansion value) toggleExpansion,
    required TResult Function(TriggerStateChange value) triggerStateChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToggleExpansion value)? toggleExpansion,
    TResult Function(TriggerStateChange value)? triggerStateChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleExpansion value)? toggleExpansion,
    TResult Function(TriggerStateChange value)? triggerStateChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoTileEventCopyWith<$Res> {
  factory $InfoTileEventCopyWith(
          InfoTileEvent value, $Res Function(InfoTileEvent) then) =
      _$InfoTileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InfoTileEventCopyWithImpl<$Res>
    implements $InfoTileEventCopyWith<$Res> {
  _$InfoTileEventCopyWithImpl(this._value, this._then);

  final InfoTileEvent _value;
  // ignore: unused_field
  final $Res Function(InfoTileEvent) _then;
}

/// @nodoc
abstract class _$$ToggleExpansionCopyWith<$Res> {
  factory _$$ToggleExpansionCopyWith(
          _$ToggleExpansion value, $Res Function(_$ToggleExpansion) then) =
      __$$ToggleExpansionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleExpansionCopyWithImpl<$Res>
    extends _$InfoTileEventCopyWithImpl<$Res>
    implements _$$ToggleExpansionCopyWith<$Res> {
  __$$ToggleExpansionCopyWithImpl(
      _$ToggleExpansion _value, $Res Function(_$ToggleExpansion) _then)
      : super(_value, (v) => _then(v as _$ToggleExpansion));

  @override
  _$ToggleExpansion get _value => super._value as _$ToggleExpansion;
}

/// @nodoc

class _$ToggleExpansion implements ToggleExpansion {
  const _$ToggleExpansion();

  @override
  String toString() {
    return 'InfoTileEvent.toggleExpansion()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleExpansion);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleExpansion,
    required TResult Function(InfoTileProps infoTileProps) triggerStateChange,
  }) {
    return toggleExpansion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? toggleExpansion,
    TResult Function(InfoTileProps infoTileProps)? triggerStateChange,
  }) {
    return toggleExpansion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleExpansion,
    TResult Function(InfoTileProps infoTileProps)? triggerStateChange,
    required TResult orElse(),
  }) {
    if (toggleExpansion != null) {
      return toggleExpansion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleExpansion value) toggleExpansion,
    required TResult Function(TriggerStateChange value) triggerStateChange,
  }) {
    return toggleExpansion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToggleExpansion value)? toggleExpansion,
    TResult Function(TriggerStateChange value)? triggerStateChange,
  }) {
    return toggleExpansion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleExpansion value)? toggleExpansion,
    TResult Function(TriggerStateChange value)? triggerStateChange,
    required TResult orElse(),
  }) {
    if (toggleExpansion != null) {
      return toggleExpansion(this);
    }
    return orElse();
  }
}

abstract class ToggleExpansion implements InfoTileEvent {
  const factory ToggleExpansion() = _$ToggleExpansion;
}

/// @nodoc
abstract class _$$TriggerStateChangeCopyWith<$Res> {
  factory _$$TriggerStateChangeCopyWith(_$TriggerStateChange value,
          $Res Function(_$TriggerStateChange) then) =
      __$$TriggerStateChangeCopyWithImpl<$Res>;
  $Res call({InfoTileProps infoTileProps});

  $InfoTilePropsCopyWith<$Res> get infoTileProps;
}

/// @nodoc
class __$$TriggerStateChangeCopyWithImpl<$Res>
    extends _$InfoTileEventCopyWithImpl<$Res>
    implements _$$TriggerStateChangeCopyWith<$Res> {
  __$$TriggerStateChangeCopyWithImpl(
      _$TriggerStateChange _value, $Res Function(_$TriggerStateChange) _then)
      : super(_value, (v) => _then(v as _$TriggerStateChange));

  @override
  _$TriggerStateChange get _value => super._value as _$TriggerStateChange;

  @override
  $Res call({
    Object? infoTileProps = freezed,
  }) {
    return _then(_$TriggerStateChange(
      infoTileProps == freezed
          ? _value.infoTileProps
          : infoTileProps // ignore: cast_nullable_to_non_nullable
              as InfoTileProps,
    ));
  }

  @override
  $InfoTilePropsCopyWith<$Res> get infoTileProps {
    return $InfoTilePropsCopyWith<$Res>(_value.infoTileProps, (value) {
      return _then(_value.copyWith(infoTileProps: value));
    });
  }
}

/// @nodoc

class _$TriggerStateChange implements TriggerStateChange {
  const _$TriggerStateChange(this.infoTileProps);

  @override
  final InfoTileProps infoTileProps;

  @override
  String toString() {
    return 'InfoTileEvent.triggerStateChange(infoTileProps: $infoTileProps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TriggerStateChange &&
            const DeepCollectionEquality()
                .equals(other.infoTileProps, infoTileProps));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(infoTileProps));

  @JsonKey(ignore: true)
  @override
  _$$TriggerStateChangeCopyWith<_$TriggerStateChange> get copyWith =>
      __$$TriggerStateChangeCopyWithImpl<_$TriggerStateChange>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleExpansion,
    required TResult Function(InfoTileProps infoTileProps) triggerStateChange,
  }) {
    return triggerStateChange(infoTileProps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? toggleExpansion,
    TResult Function(InfoTileProps infoTileProps)? triggerStateChange,
  }) {
    return triggerStateChange?.call(infoTileProps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleExpansion,
    TResult Function(InfoTileProps infoTileProps)? triggerStateChange,
    required TResult orElse(),
  }) {
    if (triggerStateChange != null) {
      return triggerStateChange(infoTileProps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleExpansion value) toggleExpansion,
    required TResult Function(TriggerStateChange value) triggerStateChange,
  }) {
    return triggerStateChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToggleExpansion value)? toggleExpansion,
    TResult Function(TriggerStateChange value)? triggerStateChange,
  }) {
    return triggerStateChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleExpansion value)? toggleExpansion,
    TResult Function(TriggerStateChange value)? triggerStateChange,
    required TResult orElse(),
  }) {
    if (triggerStateChange != null) {
      return triggerStateChange(this);
    }
    return orElse();
  }
}

abstract class TriggerStateChange implements InfoTileEvent {
  const factory TriggerStateChange(final InfoTileProps infoTileProps) =
      _$TriggerStateChange;

  InfoTileProps get infoTileProps => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TriggerStateChangeCopyWith<_$TriggerStateChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InfoTileState {
  InfoTileProps get infoTileProps => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InfoTileProps infoTileProps) invisible,
    required TResult Function(InfoTileProps infoTileProps) loading,
    required TResult Function(InfoTileProps infoTileProps) loadingExpanded,
    required TResult Function(InfoTileProps infoTileProps) success,
    required TResult Function(InfoTileProps infoTileProps) successExpanded,
    required TResult Function(InfoTileProps infoTileProps) failure,
    required TResult Function(InfoTileProps infoTileProps) failureExpanded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(InfoTileProps infoTileProps)? invisible,
    TResult Function(InfoTileProps infoTileProps)? loading,
    TResult Function(InfoTileProps infoTileProps)? loadingExpanded,
    TResult Function(InfoTileProps infoTileProps)? success,
    TResult Function(InfoTileProps infoTileProps)? successExpanded,
    TResult Function(InfoTileProps infoTileProps)? failure,
    TResult Function(InfoTileProps infoTileProps)? failureExpanded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InfoTileProps infoTileProps)? invisible,
    TResult Function(InfoTileProps infoTileProps)? loading,
    TResult Function(InfoTileProps infoTileProps)? loadingExpanded,
    TResult Function(InfoTileProps infoTileProps)? success,
    TResult Function(InfoTileProps infoTileProps)? successExpanded,
    TResult Function(InfoTileProps infoTileProps)? failure,
    TResult Function(InfoTileProps infoTileProps)? failureExpanded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Invisible value) invisible,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingExpanded value) loadingExpanded,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessExpanded value) successExpanded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureExpanded value) failureExpanded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Invisible value)? invisible,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingExpanded value)? loadingExpanded,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessExpanded value)? successExpanded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureExpanded value)? failureExpanded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Invisible value)? invisible,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingExpanded value)? loadingExpanded,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessExpanded value)? successExpanded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureExpanded value)? failureExpanded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InfoTileStateCopyWith<InfoTileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoTileStateCopyWith<$Res> {
  factory $InfoTileStateCopyWith(
          InfoTileState value, $Res Function(InfoTileState) then) =
      _$InfoTileStateCopyWithImpl<$Res>;
  $Res call({InfoTileProps infoTileProps});

  $InfoTilePropsCopyWith<$Res> get infoTileProps;
}

/// @nodoc
class _$InfoTileStateCopyWithImpl<$Res>
    implements $InfoTileStateCopyWith<$Res> {
  _$InfoTileStateCopyWithImpl(this._value, this._then);

  final InfoTileState _value;
  // ignore: unused_field
  final $Res Function(InfoTileState) _then;

  @override
  $Res call({
    Object? infoTileProps = freezed,
  }) {
    return _then(_value.copyWith(
      infoTileProps: infoTileProps == freezed
          ? _value.infoTileProps
          : infoTileProps // ignore: cast_nullable_to_non_nullable
              as InfoTileProps,
    ));
  }

  @override
  $InfoTilePropsCopyWith<$Res> get infoTileProps {
    return $InfoTilePropsCopyWith<$Res>(_value.infoTileProps, (value) {
      return _then(_value.copyWith(infoTileProps: value));
    });
  }
}

/// @nodoc
abstract class _$$_InvisibleCopyWith<$Res>
    implements $InfoTileStateCopyWith<$Res> {
  factory _$$_InvisibleCopyWith(
          _$_Invisible value, $Res Function(_$_Invisible) then) =
      __$$_InvisibleCopyWithImpl<$Res>;
  @override
  $Res call({InfoTileProps infoTileProps});

  @override
  $InfoTilePropsCopyWith<$Res> get infoTileProps;
}

/// @nodoc
class __$$_InvisibleCopyWithImpl<$Res> extends _$InfoTileStateCopyWithImpl<$Res>
    implements _$$_InvisibleCopyWith<$Res> {
  __$$_InvisibleCopyWithImpl(
      _$_Invisible _value, $Res Function(_$_Invisible) _then)
      : super(_value, (v) => _then(v as _$_Invisible));

  @override
  _$_Invisible get _value => super._value as _$_Invisible;

  @override
  $Res call({
    Object? infoTileProps = freezed,
  }) {
    return _then(_$_Invisible(
      infoTileProps == freezed
          ? _value.infoTileProps
          : infoTileProps // ignore: cast_nullable_to_non_nullable
              as InfoTileProps,
    ));
  }
}

/// @nodoc

class _$_Invisible implements _Invisible {
  const _$_Invisible(this.infoTileProps);

  @override
  final InfoTileProps infoTileProps;

  @override
  String toString() {
    return 'InfoTileState.invisible(infoTileProps: $infoTileProps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Invisible &&
            const DeepCollectionEquality()
                .equals(other.infoTileProps, infoTileProps));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(infoTileProps));

  @JsonKey(ignore: true)
  @override
  _$$_InvisibleCopyWith<_$_Invisible> get copyWith =>
      __$$_InvisibleCopyWithImpl<_$_Invisible>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InfoTileProps infoTileProps) invisible,
    required TResult Function(InfoTileProps infoTileProps) loading,
    required TResult Function(InfoTileProps infoTileProps) loadingExpanded,
    required TResult Function(InfoTileProps infoTileProps) success,
    required TResult Function(InfoTileProps infoTileProps) successExpanded,
    required TResult Function(InfoTileProps infoTileProps) failure,
    required TResult Function(InfoTileProps infoTileProps) failureExpanded,
  }) {
    return invisible(infoTileProps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(InfoTileProps infoTileProps)? invisible,
    TResult Function(InfoTileProps infoTileProps)? loading,
    TResult Function(InfoTileProps infoTileProps)? loadingExpanded,
    TResult Function(InfoTileProps infoTileProps)? success,
    TResult Function(InfoTileProps infoTileProps)? successExpanded,
    TResult Function(InfoTileProps infoTileProps)? failure,
    TResult Function(InfoTileProps infoTileProps)? failureExpanded,
  }) {
    return invisible?.call(infoTileProps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InfoTileProps infoTileProps)? invisible,
    TResult Function(InfoTileProps infoTileProps)? loading,
    TResult Function(InfoTileProps infoTileProps)? loadingExpanded,
    TResult Function(InfoTileProps infoTileProps)? success,
    TResult Function(InfoTileProps infoTileProps)? successExpanded,
    TResult Function(InfoTileProps infoTileProps)? failure,
    TResult Function(InfoTileProps infoTileProps)? failureExpanded,
    required TResult orElse(),
  }) {
    if (invisible != null) {
      return invisible(infoTileProps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Invisible value) invisible,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingExpanded value) loadingExpanded,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessExpanded value) successExpanded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureExpanded value) failureExpanded,
  }) {
    return invisible(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Invisible value)? invisible,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingExpanded value)? loadingExpanded,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessExpanded value)? successExpanded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureExpanded value)? failureExpanded,
  }) {
    return invisible?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Invisible value)? invisible,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingExpanded value)? loadingExpanded,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessExpanded value)? successExpanded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureExpanded value)? failureExpanded,
    required TResult orElse(),
  }) {
    if (invisible != null) {
      return invisible(this);
    }
    return orElse();
  }
}

abstract class _Invisible implements InfoTileState {
  const factory _Invisible(final InfoTileProps infoTileProps) = _$_Invisible;

  @override
  InfoTileProps get infoTileProps => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InvisibleCopyWith<_$_Invisible> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $InfoTileStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  $Res call({InfoTileProps infoTileProps});

  @override
  $InfoTilePropsCopyWith<$Res> get infoTileProps;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$InfoTileStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;

  @override
  $Res call({
    Object? infoTileProps = freezed,
  }) {
    return _then(_$_Loading(
      infoTileProps == freezed
          ? _value.infoTileProps
          : infoTileProps // ignore: cast_nullable_to_non_nullable
              as InfoTileProps,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(this.infoTileProps);

  @override
  final InfoTileProps infoTileProps;

  @override
  String toString() {
    return 'InfoTileState.loading(infoTileProps: $infoTileProps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality()
                .equals(other.infoTileProps, infoTileProps));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(infoTileProps));

  @JsonKey(ignore: true)
  @override
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InfoTileProps infoTileProps) invisible,
    required TResult Function(InfoTileProps infoTileProps) loading,
    required TResult Function(InfoTileProps infoTileProps) loadingExpanded,
    required TResult Function(InfoTileProps infoTileProps) success,
    required TResult Function(InfoTileProps infoTileProps) successExpanded,
    required TResult Function(InfoTileProps infoTileProps) failure,
    required TResult Function(InfoTileProps infoTileProps) failureExpanded,
  }) {
    return loading(infoTileProps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(InfoTileProps infoTileProps)? invisible,
    TResult Function(InfoTileProps infoTileProps)? loading,
    TResult Function(InfoTileProps infoTileProps)? loadingExpanded,
    TResult Function(InfoTileProps infoTileProps)? success,
    TResult Function(InfoTileProps infoTileProps)? successExpanded,
    TResult Function(InfoTileProps infoTileProps)? failure,
    TResult Function(InfoTileProps infoTileProps)? failureExpanded,
  }) {
    return loading?.call(infoTileProps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InfoTileProps infoTileProps)? invisible,
    TResult Function(InfoTileProps infoTileProps)? loading,
    TResult Function(InfoTileProps infoTileProps)? loadingExpanded,
    TResult Function(InfoTileProps infoTileProps)? success,
    TResult Function(InfoTileProps infoTileProps)? successExpanded,
    TResult Function(InfoTileProps infoTileProps)? failure,
    TResult Function(InfoTileProps infoTileProps)? failureExpanded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(infoTileProps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Invisible value) invisible,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingExpanded value) loadingExpanded,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessExpanded value) successExpanded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureExpanded value) failureExpanded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Invisible value)? invisible,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingExpanded value)? loadingExpanded,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessExpanded value)? successExpanded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureExpanded value)? failureExpanded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Invisible value)? invisible,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingExpanded value)? loadingExpanded,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessExpanded value)? successExpanded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureExpanded value)? failureExpanded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements InfoTileState {
  const factory _Loading(final InfoTileProps infoTileProps) = _$_Loading;

  @override
  InfoTileProps get infoTileProps => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingExpandedCopyWith<$Res>
    implements $InfoTileStateCopyWith<$Res> {
  factory _$$_LoadingExpandedCopyWith(
          _$_LoadingExpanded value, $Res Function(_$_LoadingExpanded) then) =
      __$$_LoadingExpandedCopyWithImpl<$Res>;
  @override
  $Res call({InfoTileProps infoTileProps});

  @override
  $InfoTilePropsCopyWith<$Res> get infoTileProps;
}

/// @nodoc
class __$$_LoadingExpandedCopyWithImpl<$Res>
    extends _$InfoTileStateCopyWithImpl<$Res>
    implements _$$_LoadingExpandedCopyWith<$Res> {
  __$$_LoadingExpandedCopyWithImpl(
      _$_LoadingExpanded _value, $Res Function(_$_LoadingExpanded) _then)
      : super(_value, (v) => _then(v as _$_LoadingExpanded));

  @override
  _$_LoadingExpanded get _value => super._value as _$_LoadingExpanded;

  @override
  $Res call({
    Object? infoTileProps = freezed,
  }) {
    return _then(_$_LoadingExpanded(
      infoTileProps == freezed
          ? _value.infoTileProps
          : infoTileProps // ignore: cast_nullable_to_non_nullable
              as InfoTileProps,
    ));
  }
}

/// @nodoc

class _$_LoadingExpanded implements _LoadingExpanded {
  const _$_LoadingExpanded(this.infoTileProps);

  @override
  final InfoTileProps infoTileProps;

  @override
  String toString() {
    return 'InfoTileState.loadingExpanded(infoTileProps: $infoTileProps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingExpanded &&
            const DeepCollectionEquality()
                .equals(other.infoTileProps, infoTileProps));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(infoTileProps));

  @JsonKey(ignore: true)
  @override
  _$$_LoadingExpandedCopyWith<_$_LoadingExpanded> get copyWith =>
      __$$_LoadingExpandedCopyWithImpl<_$_LoadingExpanded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InfoTileProps infoTileProps) invisible,
    required TResult Function(InfoTileProps infoTileProps) loading,
    required TResult Function(InfoTileProps infoTileProps) loadingExpanded,
    required TResult Function(InfoTileProps infoTileProps) success,
    required TResult Function(InfoTileProps infoTileProps) successExpanded,
    required TResult Function(InfoTileProps infoTileProps) failure,
    required TResult Function(InfoTileProps infoTileProps) failureExpanded,
  }) {
    return loadingExpanded(infoTileProps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(InfoTileProps infoTileProps)? invisible,
    TResult Function(InfoTileProps infoTileProps)? loading,
    TResult Function(InfoTileProps infoTileProps)? loadingExpanded,
    TResult Function(InfoTileProps infoTileProps)? success,
    TResult Function(InfoTileProps infoTileProps)? successExpanded,
    TResult Function(InfoTileProps infoTileProps)? failure,
    TResult Function(InfoTileProps infoTileProps)? failureExpanded,
  }) {
    return loadingExpanded?.call(infoTileProps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InfoTileProps infoTileProps)? invisible,
    TResult Function(InfoTileProps infoTileProps)? loading,
    TResult Function(InfoTileProps infoTileProps)? loadingExpanded,
    TResult Function(InfoTileProps infoTileProps)? success,
    TResult Function(InfoTileProps infoTileProps)? successExpanded,
    TResult Function(InfoTileProps infoTileProps)? failure,
    TResult Function(InfoTileProps infoTileProps)? failureExpanded,
    required TResult orElse(),
  }) {
    if (loadingExpanded != null) {
      return loadingExpanded(infoTileProps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Invisible value) invisible,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingExpanded value) loadingExpanded,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessExpanded value) successExpanded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureExpanded value) failureExpanded,
  }) {
    return loadingExpanded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Invisible value)? invisible,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingExpanded value)? loadingExpanded,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessExpanded value)? successExpanded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureExpanded value)? failureExpanded,
  }) {
    return loadingExpanded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Invisible value)? invisible,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingExpanded value)? loadingExpanded,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessExpanded value)? successExpanded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureExpanded value)? failureExpanded,
    required TResult orElse(),
  }) {
    if (loadingExpanded != null) {
      return loadingExpanded(this);
    }
    return orElse();
  }
}

abstract class _LoadingExpanded implements InfoTileState {
  const factory _LoadingExpanded(final InfoTileProps infoTileProps) =
      _$_LoadingExpanded;

  @override
  InfoTileProps get infoTileProps => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingExpandedCopyWith<_$_LoadingExpanded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res>
    implements $InfoTileStateCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @override
  $Res call({InfoTileProps infoTileProps});

  @override
  $InfoTilePropsCopyWith<$Res> get infoTileProps;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res> extends _$InfoTileStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;

  @override
  $Res call({
    Object? infoTileProps = freezed,
  }) {
    return _then(_$_Success(
      infoTileProps == freezed
          ? _value.infoTileProps
          : infoTileProps // ignore: cast_nullable_to_non_nullable
              as InfoTileProps,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.infoTileProps);

  @override
  final InfoTileProps infoTileProps;

  @override
  String toString() {
    return 'InfoTileState.success(infoTileProps: $infoTileProps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality()
                .equals(other.infoTileProps, infoTileProps));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(infoTileProps));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InfoTileProps infoTileProps) invisible,
    required TResult Function(InfoTileProps infoTileProps) loading,
    required TResult Function(InfoTileProps infoTileProps) loadingExpanded,
    required TResult Function(InfoTileProps infoTileProps) success,
    required TResult Function(InfoTileProps infoTileProps) successExpanded,
    required TResult Function(InfoTileProps infoTileProps) failure,
    required TResult Function(InfoTileProps infoTileProps) failureExpanded,
  }) {
    return success(infoTileProps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(InfoTileProps infoTileProps)? invisible,
    TResult Function(InfoTileProps infoTileProps)? loading,
    TResult Function(InfoTileProps infoTileProps)? loadingExpanded,
    TResult Function(InfoTileProps infoTileProps)? success,
    TResult Function(InfoTileProps infoTileProps)? successExpanded,
    TResult Function(InfoTileProps infoTileProps)? failure,
    TResult Function(InfoTileProps infoTileProps)? failureExpanded,
  }) {
    return success?.call(infoTileProps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InfoTileProps infoTileProps)? invisible,
    TResult Function(InfoTileProps infoTileProps)? loading,
    TResult Function(InfoTileProps infoTileProps)? loadingExpanded,
    TResult Function(InfoTileProps infoTileProps)? success,
    TResult Function(InfoTileProps infoTileProps)? successExpanded,
    TResult Function(InfoTileProps infoTileProps)? failure,
    TResult Function(InfoTileProps infoTileProps)? failureExpanded,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(infoTileProps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Invisible value) invisible,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingExpanded value) loadingExpanded,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessExpanded value) successExpanded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureExpanded value) failureExpanded,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Invisible value)? invisible,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingExpanded value)? loadingExpanded,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessExpanded value)? successExpanded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureExpanded value)? failureExpanded,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Invisible value)? invisible,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingExpanded value)? loadingExpanded,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessExpanded value)? successExpanded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureExpanded value)? failureExpanded,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements InfoTileState {
  const factory _Success(final InfoTileProps infoTileProps) = _$_Success;

  @override
  InfoTileProps get infoTileProps => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessExpandedCopyWith<$Res>
    implements $InfoTileStateCopyWith<$Res> {
  factory _$$_SuccessExpandedCopyWith(
          _$_SuccessExpanded value, $Res Function(_$_SuccessExpanded) then) =
      __$$_SuccessExpandedCopyWithImpl<$Res>;
  @override
  $Res call({InfoTileProps infoTileProps});

  @override
  $InfoTilePropsCopyWith<$Res> get infoTileProps;
}

/// @nodoc
class __$$_SuccessExpandedCopyWithImpl<$Res>
    extends _$InfoTileStateCopyWithImpl<$Res>
    implements _$$_SuccessExpandedCopyWith<$Res> {
  __$$_SuccessExpandedCopyWithImpl(
      _$_SuccessExpanded _value, $Res Function(_$_SuccessExpanded) _then)
      : super(_value, (v) => _then(v as _$_SuccessExpanded));

  @override
  _$_SuccessExpanded get _value => super._value as _$_SuccessExpanded;

  @override
  $Res call({
    Object? infoTileProps = freezed,
  }) {
    return _then(_$_SuccessExpanded(
      infoTileProps == freezed
          ? _value.infoTileProps
          : infoTileProps // ignore: cast_nullable_to_non_nullable
              as InfoTileProps,
    ));
  }
}

/// @nodoc

class _$_SuccessExpanded implements _SuccessExpanded {
  const _$_SuccessExpanded(this.infoTileProps);

  @override
  final InfoTileProps infoTileProps;

  @override
  String toString() {
    return 'InfoTileState.successExpanded(infoTileProps: $infoTileProps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessExpanded &&
            const DeepCollectionEquality()
                .equals(other.infoTileProps, infoTileProps));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(infoTileProps));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessExpandedCopyWith<_$_SuccessExpanded> get copyWith =>
      __$$_SuccessExpandedCopyWithImpl<_$_SuccessExpanded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InfoTileProps infoTileProps) invisible,
    required TResult Function(InfoTileProps infoTileProps) loading,
    required TResult Function(InfoTileProps infoTileProps) loadingExpanded,
    required TResult Function(InfoTileProps infoTileProps) success,
    required TResult Function(InfoTileProps infoTileProps) successExpanded,
    required TResult Function(InfoTileProps infoTileProps) failure,
    required TResult Function(InfoTileProps infoTileProps) failureExpanded,
  }) {
    return successExpanded(infoTileProps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(InfoTileProps infoTileProps)? invisible,
    TResult Function(InfoTileProps infoTileProps)? loading,
    TResult Function(InfoTileProps infoTileProps)? loadingExpanded,
    TResult Function(InfoTileProps infoTileProps)? success,
    TResult Function(InfoTileProps infoTileProps)? successExpanded,
    TResult Function(InfoTileProps infoTileProps)? failure,
    TResult Function(InfoTileProps infoTileProps)? failureExpanded,
  }) {
    return successExpanded?.call(infoTileProps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InfoTileProps infoTileProps)? invisible,
    TResult Function(InfoTileProps infoTileProps)? loading,
    TResult Function(InfoTileProps infoTileProps)? loadingExpanded,
    TResult Function(InfoTileProps infoTileProps)? success,
    TResult Function(InfoTileProps infoTileProps)? successExpanded,
    TResult Function(InfoTileProps infoTileProps)? failure,
    TResult Function(InfoTileProps infoTileProps)? failureExpanded,
    required TResult orElse(),
  }) {
    if (successExpanded != null) {
      return successExpanded(infoTileProps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Invisible value) invisible,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingExpanded value) loadingExpanded,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessExpanded value) successExpanded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureExpanded value) failureExpanded,
  }) {
    return successExpanded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Invisible value)? invisible,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingExpanded value)? loadingExpanded,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessExpanded value)? successExpanded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureExpanded value)? failureExpanded,
  }) {
    return successExpanded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Invisible value)? invisible,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingExpanded value)? loadingExpanded,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessExpanded value)? successExpanded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureExpanded value)? failureExpanded,
    required TResult orElse(),
  }) {
    if (successExpanded != null) {
      return successExpanded(this);
    }
    return orElse();
  }
}

abstract class _SuccessExpanded implements InfoTileState {
  const factory _SuccessExpanded(final InfoTileProps infoTileProps) =
      _$_SuccessExpanded;

  @override
  InfoTileProps get infoTileProps => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessExpandedCopyWith<_$_SuccessExpanded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res>
    implements $InfoTileStateCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  $Res call({InfoTileProps infoTileProps});

  @override
  $InfoTilePropsCopyWith<$Res> get infoTileProps;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res> extends _$InfoTileStateCopyWithImpl<$Res>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, (v) => _then(v as _$_Failure));

  @override
  _$_Failure get _value => super._value as _$_Failure;

  @override
  $Res call({
    Object? infoTileProps = freezed,
  }) {
    return _then(_$_Failure(
      infoTileProps == freezed
          ? _value.infoTileProps
          : infoTileProps // ignore: cast_nullable_to_non_nullable
              as InfoTileProps,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.infoTileProps);

  @override
  final InfoTileProps infoTileProps;

  @override
  String toString() {
    return 'InfoTileState.failure(infoTileProps: $infoTileProps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            const DeepCollectionEquality()
                .equals(other.infoTileProps, infoTileProps));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(infoTileProps));

  @JsonKey(ignore: true)
  @override
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InfoTileProps infoTileProps) invisible,
    required TResult Function(InfoTileProps infoTileProps) loading,
    required TResult Function(InfoTileProps infoTileProps) loadingExpanded,
    required TResult Function(InfoTileProps infoTileProps) success,
    required TResult Function(InfoTileProps infoTileProps) successExpanded,
    required TResult Function(InfoTileProps infoTileProps) failure,
    required TResult Function(InfoTileProps infoTileProps) failureExpanded,
  }) {
    return failure(infoTileProps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(InfoTileProps infoTileProps)? invisible,
    TResult Function(InfoTileProps infoTileProps)? loading,
    TResult Function(InfoTileProps infoTileProps)? loadingExpanded,
    TResult Function(InfoTileProps infoTileProps)? success,
    TResult Function(InfoTileProps infoTileProps)? successExpanded,
    TResult Function(InfoTileProps infoTileProps)? failure,
    TResult Function(InfoTileProps infoTileProps)? failureExpanded,
  }) {
    return failure?.call(infoTileProps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InfoTileProps infoTileProps)? invisible,
    TResult Function(InfoTileProps infoTileProps)? loading,
    TResult Function(InfoTileProps infoTileProps)? loadingExpanded,
    TResult Function(InfoTileProps infoTileProps)? success,
    TResult Function(InfoTileProps infoTileProps)? successExpanded,
    TResult Function(InfoTileProps infoTileProps)? failure,
    TResult Function(InfoTileProps infoTileProps)? failureExpanded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(infoTileProps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Invisible value) invisible,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingExpanded value) loadingExpanded,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessExpanded value) successExpanded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureExpanded value) failureExpanded,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Invisible value)? invisible,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingExpanded value)? loadingExpanded,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessExpanded value)? successExpanded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureExpanded value)? failureExpanded,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Invisible value)? invisible,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingExpanded value)? loadingExpanded,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessExpanded value)? successExpanded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureExpanded value)? failureExpanded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements InfoTileState {
  const factory _Failure(final InfoTileProps infoTileProps) = _$_Failure;

  @override
  InfoTileProps get infoTileProps => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureExpandedCopyWith<$Res>
    implements $InfoTileStateCopyWith<$Res> {
  factory _$$_FailureExpandedCopyWith(
          _$_FailureExpanded value, $Res Function(_$_FailureExpanded) then) =
      __$$_FailureExpandedCopyWithImpl<$Res>;
  @override
  $Res call({InfoTileProps infoTileProps});

  @override
  $InfoTilePropsCopyWith<$Res> get infoTileProps;
}

/// @nodoc
class __$$_FailureExpandedCopyWithImpl<$Res>
    extends _$InfoTileStateCopyWithImpl<$Res>
    implements _$$_FailureExpandedCopyWith<$Res> {
  __$$_FailureExpandedCopyWithImpl(
      _$_FailureExpanded _value, $Res Function(_$_FailureExpanded) _then)
      : super(_value, (v) => _then(v as _$_FailureExpanded));

  @override
  _$_FailureExpanded get _value => super._value as _$_FailureExpanded;

  @override
  $Res call({
    Object? infoTileProps = freezed,
  }) {
    return _then(_$_FailureExpanded(
      infoTileProps == freezed
          ? _value.infoTileProps
          : infoTileProps // ignore: cast_nullable_to_non_nullable
              as InfoTileProps,
    ));
  }
}

/// @nodoc

class _$_FailureExpanded implements _FailureExpanded {
  const _$_FailureExpanded(this.infoTileProps);

  @override
  final InfoTileProps infoTileProps;

  @override
  String toString() {
    return 'InfoTileState.failureExpanded(infoTileProps: $infoTileProps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureExpanded &&
            const DeepCollectionEquality()
                .equals(other.infoTileProps, infoTileProps));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(infoTileProps));

  @JsonKey(ignore: true)
  @override
  _$$_FailureExpandedCopyWith<_$_FailureExpanded> get copyWith =>
      __$$_FailureExpandedCopyWithImpl<_$_FailureExpanded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InfoTileProps infoTileProps) invisible,
    required TResult Function(InfoTileProps infoTileProps) loading,
    required TResult Function(InfoTileProps infoTileProps) loadingExpanded,
    required TResult Function(InfoTileProps infoTileProps) success,
    required TResult Function(InfoTileProps infoTileProps) successExpanded,
    required TResult Function(InfoTileProps infoTileProps) failure,
    required TResult Function(InfoTileProps infoTileProps) failureExpanded,
  }) {
    return failureExpanded(infoTileProps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(InfoTileProps infoTileProps)? invisible,
    TResult Function(InfoTileProps infoTileProps)? loading,
    TResult Function(InfoTileProps infoTileProps)? loadingExpanded,
    TResult Function(InfoTileProps infoTileProps)? success,
    TResult Function(InfoTileProps infoTileProps)? successExpanded,
    TResult Function(InfoTileProps infoTileProps)? failure,
    TResult Function(InfoTileProps infoTileProps)? failureExpanded,
  }) {
    return failureExpanded?.call(infoTileProps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InfoTileProps infoTileProps)? invisible,
    TResult Function(InfoTileProps infoTileProps)? loading,
    TResult Function(InfoTileProps infoTileProps)? loadingExpanded,
    TResult Function(InfoTileProps infoTileProps)? success,
    TResult Function(InfoTileProps infoTileProps)? successExpanded,
    TResult Function(InfoTileProps infoTileProps)? failure,
    TResult Function(InfoTileProps infoTileProps)? failureExpanded,
    required TResult orElse(),
  }) {
    if (failureExpanded != null) {
      return failureExpanded(infoTileProps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Invisible value) invisible,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingExpanded value) loadingExpanded,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessExpanded value) successExpanded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureExpanded value) failureExpanded,
  }) {
    return failureExpanded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Invisible value)? invisible,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingExpanded value)? loadingExpanded,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessExpanded value)? successExpanded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureExpanded value)? failureExpanded,
  }) {
    return failureExpanded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Invisible value)? invisible,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingExpanded value)? loadingExpanded,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessExpanded value)? successExpanded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureExpanded value)? failureExpanded,
    required TResult orElse(),
  }) {
    if (failureExpanded != null) {
      return failureExpanded(this);
    }
    return orElse();
  }
}

abstract class _FailureExpanded implements InfoTileState {
  const factory _FailureExpanded(final InfoTileProps infoTileProps) =
      _$_FailureExpanded;

  @override
  InfoTileProps get infoTileProps => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FailureExpandedCopyWith<_$_FailureExpanded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InfoTileProps {
  String get leadingText => throw _privateConstructorUsedError;
  Widget get child => throw _privateConstructorUsedError;
  bool get isAbleToExpand => throw _privateConstructorUsedError;
  bool get isExpanded => throw _privateConstructorUsedError;
  InfoTileStatus get currentStatus => throw _privateConstructorUsedError;
  AnimationController? get animationController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InfoTilePropsCopyWith<InfoTileProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoTilePropsCopyWith<$Res> {
  factory $InfoTilePropsCopyWith(
          InfoTileProps value, $Res Function(InfoTileProps) then) =
      _$InfoTilePropsCopyWithImpl<$Res>;
  $Res call(
      {String leadingText,
      Widget child,
      bool isAbleToExpand,
      bool isExpanded,
      InfoTileStatus currentStatus,
      AnimationController? animationController});
}

/// @nodoc
class _$InfoTilePropsCopyWithImpl<$Res>
    implements $InfoTilePropsCopyWith<$Res> {
  _$InfoTilePropsCopyWithImpl(this._value, this._then);

  final InfoTileProps _value;
  // ignore: unused_field
  final $Res Function(InfoTileProps) _then;

  @override
  $Res call({
    Object? leadingText = freezed,
    Object? child = freezed,
    Object? isAbleToExpand = freezed,
    Object? isExpanded = freezed,
    Object? currentStatus = freezed,
    Object? animationController = freezed,
  }) {
    return _then(_value.copyWith(
      leadingText: leadingText == freezed
          ? _value.leadingText
          : leadingText // ignore: cast_nullable_to_non_nullable
              as String,
      child: child == freezed
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Widget,
      isAbleToExpand: isAbleToExpand == freezed
          ? _value.isAbleToExpand
          : isAbleToExpand // ignore: cast_nullable_to_non_nullable
              as bool,
      isExpanded: isExpanded == freezed
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      currentStatus: currentStatus == freezed
          ? _value.currentStatus
          : currentStatus // ignore: cast_nullable_to_non_nullable
              as InfoTileStatus,
      animationController: animationController == freezed
          ? _value.animationController
          : animationController // ignore: cast_nullable_to_non_nullable
              as AnimationController?,
    ));
  }
}

/// @nodoc
abstract class _$$_InfoTilePropsCopyWith<$Res>
    implements $InfoTilePropsCopyWith<$Res> {
  factory _$$_InfoTilePropsCopyWith(
          _$_InfoTileProps value, $Res Function(_$_InfoTileProps) then) =
      __$$_InfoTilePropsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String leadingText,
      Widget child,
      bool isAbleToExpand,
      bool isExpanded,
      InfoTileStatus currentStatus,
      AnimationController? animationController});
}

/// @nodoc
class __$$_InfoTilePropsCopyWithImpl<$Res>
    extends _$InfoTilePropsCopyWithImpl<$Res>
    implements _$$_InfoTilePropsCopyWith<$Res> {
  __$$_InfoTilePropsCopyWithImpl(
      _$_InfoTileProps _value, $Res Function(_$_InfoTileProps) _then)
      : super(_value, (v) => _then(v as _$_InfoTileProps));

  @override
  _$_InfoTileProps get _value => super._value as _$_InfoTileProps;

  @override
  $Res call({
    Object? leadingText = freezed,
    Object? child = freezed,
    Object? isAbleToExpand = freezed,
    Object? isExpanded = freezed,
    Object? currentStatus = freezed,
    Object? animationController = freezed,
  }) {
    return _then(_$_InfoTileProps(
      leadingText: leadingText == freezed
          ? _value.leadingText
          : leadingText // ignore: cast_nullable_to_non_nullable
              as String,
      child: child == freezed
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Widget,
      isAbleToExpand: isAbleToExpand == freezed
          ? _value.isAbleToExpand
          : isAbleToExpand // ignore: cast_nullable_to_non_nullable
              as bool,
      isExpanded: isExpanded == freezed
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      currentStatus: currentStatus == freezed
          ? _value.currentStatus
          : currentStatus // ignore: cast_nullable_to_non_nullable
              as InfoTileStatus,
      animationController: animationController == freezed
          ? _value.animationController
          : animationController // ignore: cast_nullable_to_non_nullable
              as AnimationController?,
    ));
  }
}

/// @nodoc

class _$_InfoTileProps implements _InfoTileProps {
  const _$_InfoTileProps(
      {required this.leadingText,
      required this.child,
      required this.isAbleToExpand,
      required this.isExpanded,
      required this.currentStatus,
      this.animationController});

  @override
  final String leadingText;
  @override
  final Widget child;
  @override
  final bool isAbleToExpand;
  @override
  final bool isExpanded;
  @override
  final InfoTileStatus currentStatus;
  @override
  final AnimationController? animationController;

  @override
  String toString() {
    return 'InfoTileProps(leadingText: $leadingText, child: $child, isAbleToExpand: $isAbleToExpand, isExpanded: $isExpanded, currentStatus: $currentStatus, animationController: $animationController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfoTileProps &&
            const DeepCollectionEquality()
                .equals(other.leadingText, leadingText) &&
            const DeepCollectionEquality().equals(other.child, child) &&
            const DeepCollectionEquality()
                .equals(other.isAbleToExpand, isAbleToExpand) &&
            const DeepCollectionEquality()
                .equals(other.isExpanded, isExpanded) &&
            const DeepCollectionEquality()
                .equals(other.currentStatus, currentStatus) &&
            const DeepCollectionEquality()
                .equals(other.animationController, animationController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(leadingText),
      const DeepCollectionEquality().hash(child),
      const DeepCollectionEquality().hash(isAbleToExpand),
      const DeepCollectionEquality().hash(isExpanded),
      const DeepCollectionEquality().hash(currentStatus),
      const DeepCollectionEquality().hash(animationController));

  @JsonKey(ignore: true)
  @override
  _$$_InfoTilePropsCopyWith<_$_InfoTileProps> get copyWith =>
      __$$_InfoTilePropsCopyWithImpl<_$_InfoTileProps>(this, _$identity);
}

abstract class _InfoTileProps implements InfoTileProps {
  const factory _InfoTileProps(
      {required final String leadingText,
      required final Widget child,
      required final bool isAbleToExpand,
      required final bool isExpanded,
      required final InfoTileStatus currentStatus,
      final AnimationController? animationController}) = _$_InfoTileProps;

  @override
  String get leadingText => throw _privateConstructorUsedError;
  @override
  Widget get child => throw _privateConstructorUsedError;
  @override
  bool get isAbleToExpand => throw _privateConstructorUsedError;
  @override
  bool get isExpanded => throw _privateConstructorUsedError;
  @override
  InfoTileStatus get currentStatus => throw _privateConstructorUsedError;
  @override
  AnimationController? get animationController =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InfoTilePropsCopyWith<_$_InfoTileProps> get copyWith =>
      throw _privateConstructorUsedError;
}
