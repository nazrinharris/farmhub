// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'global_ui_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GlobalUIStateTearOff {
  const _$GlobalUIStateTearOff();

  GInitial initial(GlobalUIProps props) {
    return GInitial(
      props,
    );
  }

  GShouldRefreshMainChanged shouldRefreshMainChanged(GlobalUIProps props) {
    return GShouldRefreshMainChanged(
      props,
    );
  }
}

/// @nodoc
const $GlobalUIState = _$GlobalUIStateTearOff();

/// @nodoc
mixin _$GlobalUIState {
  GlobalUIProps get props => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GlobalUIProps props) initial,
    required TResult Function(GlobalUIProps props) shouldRefreshMainChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GlobalUIProps props)? initial,
    TResult Function(GlobalUIProps props)? shouldRefreshMainChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GlobalUIProps props)? initial,
    TResult Function(GlobalUIProps props)? shouldRefreshMainChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GInitial value) initial,
    required TResult Function(GShouldRefreshMainChanged value)
        shouldRefreshMainChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GInitial value)? initial,
    TResult Function(GShouldRefreshMainChanged value)? shouldRefreshMainChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GInitial value)? initial,
    TResult Function(GShouldRefreshMainChanged value)? shouldRefreshMainChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GlobalUIStateCopyWith<GlobalUIState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalUIStateCopyWith<$Res> {
  factory $GlobalUIStateCopyWith(
          GlobalUIState value, $Res Function(GlobalUIState) then) =
      _$GlobalUIStateCopyWithImpl<$Res>;
  $Res call({GlobalUIProps props});

  $GlobalUIPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$GlobalUIStateCopyWithImpl<$Res>
    implements $GlobalUIStateCopyWith<$Res> {
  _$GlobalUIStateCopyWithImpl(this._value, this._then);

  final GlobalUIState _value;
  // ignore: unused_field
  final $Res Function(GlobalUIState) _then;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(_value.copyWith(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as GlobalUIProps,
    ));
  }

  @override
  $GlobalUIPropsCopyWith<$Res> get props {
    return $GlobalUIPropsCopyWith<$Res>(_value.props, (value) {
      return _then(_value.copyWith(props: value));
    });
  }
}

/// @nodoc
abstract class $GInitialCopyWith<$Res> implements $GlobalUIStateCopyWith<$Res> {
  factory $GInitialCopyWith(GInitial value, $Res Function(GInitial) then) =
      _$GInitialCopyWithImpl<$Res>;
  @override
  $Res call({GlobalUIProps props});

  @override
  $GlobalUIPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$GInitialCopyWithImpl<$Res> extends _$GlobalUIStateCopyWithImpl<$Res>
    implements $GInitialCopyWith<$Res> {
  _$GInitialCopyWithImpl(GInitial _value, $Res Function(GInitial) _then)
      : super(_value, (v) => _then(v as GInitial));

  @override
  GInitial get _value => super._value as GInitial;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(GInitial(
      props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as GlobalUIProps,
    ));
  }
}

/// @nodoc

class _$GInitial implements GInitial {
  const _$GInitial(this.props);

  @override
  final GlobalUIProps props;

  @override
  String toString() {
    return 'GlobalUIState.initial(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GInitial &&
            (identical(other.props, props) || other.props == props));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props);

  @JsonKey(ignore: true)
  @override
  $GInitialCopyWith<GInitial> get copyWith =>
      _$GInitialCopyWithImpl<GInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GlobalUIProps props) initial,
    required TResult Function(GlobalUIProps props) shouldRefreshMainChanged,
  }) {
    return initial(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GlobalUIProps props)? initial,
    TResult Function(GlobalUIProps props)? shouldRefreshMainChanged,
  }) {
    return initial?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GlobalUIProps props)? initial,
    TResult Function(GlobalUIProps props)? shouldRefreshMainChanged,
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
    required TResult Function(GInitial value) initial,
    required TResult Function(GShouldRefreshMainChanged value)
        shouldRefreshMainChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GInitial value)? initial,
    TResult Function(GShouldRefreshMainChanged value)? shouldRefreshMainChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GInitial value)? initial,
    TResult Function(GShouldRefreshMainChanged value)? shouldRefreshMainChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GInitial implements GlobalUIState {
  const factory GInitial(GlobalUIProps props) = _$GInitial;

  @override
  GlobalUIProps get props;
  @override
  @JsonKey(ignore: true)
  $GInitialCopyWith<GInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GShouldRefreshMainChangedCopyWith<$Res>
    implements $GlobalUIStateCopyWith<$Res> {
  factory $GShouldRefreshMainChangedCopyWith(GShouldRefreshMainChanged value,
          $Res Function(GShouldRefreshMainChanged) then) =
      _$GShouldRefreshMainChangedCopyWithImpl<$Res>;
  @override
  $Res call({GlobalUIProps props});

  @override
  $GlobalUIPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$GShouldRefreshMainChangedCopyWithImpl<$Res>
    extends _$GlobalUIStateCopyWithImpl<$Res>
    implements $GShouldRefreshMainChangedCopyWith<$Res> {
  _$GShouldRefreshMainChangedCopyWithImpl(GShouldRefreshMainChanged _value,
      $Res Function(GShouldRefreshMainChanged) _then)
      : super(_value, (v) => _then(v as GShouldRefreshMainChanged));

  @override
  GShouldRefreshMainChanged get _value =>
      super._value as GShouldRefreshMainChanged;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(GShouldRefreshMainChanged(
      props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as GlobalUIProps,
    ));
  }
}

/// @nodoc

class _$GShouldRefreshMainChanged implements GShouldRefreshMainChanged {
  const _$GShouldRefreshMainChanged(this.props);

  @override
  final GlobalUIProps props;

  @override
  String toString() {
    return 'GlobalUIState.shouldRefreshMainChanged(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GShouldRefreshMainChanged &&
            (identical(other.props, props) || other.props == props));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props);

  @JsonKey(ignore: true)
  @override
  $GShouldRefreshMainChangedCopyWith<GShouldRefreshMainChanged> get copyWith =>
      _$GShouldRefreshMainChangedCopyWithImpl<GShouldRefreshMainChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GlobalUIProps props) initial,
    required TResult Function(GlobalUIProps props) shouldRefreshMainChanged,
  }) {
    return shouldRefreshMainChanged(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GlobalUIProps props)? initial,
    TResult Function(GlobalUIProps props)? shouldRefreshMainChanged,
  }) {
    return shouldRefreshMainChanged?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GlobalUIProps props)? initial,
    TResult Function(GlobalUIProps props)? shouldRefreshMainChanged,
    required TResult orElse(),
  }) {
    if (shouldRefreshMainChanged != null) {
      return shouldRefreshMainChanged(props);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GInitial value) initial,
    required TResult Function(GShouldRefreshMainChanged value)
        shouldRefreshMainChanged,
  }) {
    return shouldRefreshMainChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GInitial value)? initial,
    TResult Function(GShouldRefreshMainChanged value)? shouldRefreshMainChanged,
  }) {
    return shouldRefreshMainChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GInitial value)? initial,
    TResult Function(GShouldRefreshMainChanged value)? shouldRefreshMainChanged,
    required TResult orElse(),
  }) {
    if (shouldRefreshMainChanged != null) {
      return shouldRefreshMainChanged(this);
    }
    return orElse();
  }
}

abstract class GShouldRefreshMainChanged implements GlobalUIState {
  const factory GShouldRefreshMainChanged(GlobalUIProps props) =
      _$GShouldRefreshMainChanged;

  @override
  GlobalUIProps get props;
  @override
  @JsonKey(ignore: true)
  $GShouldRefreshMainChangedCopyWith<GShouldRefreshMainChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GlobalUIPropsTearOff {
  const _$GlobalUIPropsTearOff();

  _GlobalUIProps call(
      {required bool shouldRefreshMain,
      required bool shouldRefreshProduce,
      required bool shouldRefreshPrice,
      required bool shouldRefreshFavorites,
      required bool shouldRefreshProfile}) {
    return _GlobalUIProps(
      shouldRefreshMain: shouldRefreshMain,
      shouldRefreshProduce: shouldRefreshProduce,
      shouldRefreshPrice: shouldRefreshPrice,
      shouldRefreshFavorites: shouldRefreshFavorites,
      shouldRefreshProfile: shouldRefreshProfile,
    );
  }
}

/// @nodoc
const $GlobalUIProps = _$GlobalUIPropsTearOff();

/// @nodoc
mixin _$GlobalUIProps {
  bool get shouldRefreshMain => throw _privateConstructorUsedError;
  bool get shouldRefreshProduce => throw _privateConstructorUsedError;
  bool get shouldRefreshPrice => throw _privateConstructorUsedError;
  bool get shouldRefreshFavorites => throw _privateConstructorUsedError;
  bool get shouldRefreshProfile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GlobalUIPropsCopyWith<GlobalUIProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalUIPropsCopyWith<$Res> {
  factory $GlobalUIPropsCopyWith(
          GlobalUIProps value, $Res Function(GlobalUIProps) then) =
      _$GlobalUIPropsCopyWithImpl<$Res>;
  $Res call(
      {bool shouldRefreshMain,
      bool shouldRefreshProduce,
      bool shouldRefreshPrice,
      bool shouldRefreshFavorites,
      bool shouldRefreshProfile});
}

/// @nodoc
class _$GlobalUIPropsCopyWithImpl<$Res>
    implements $GlobalUIPropsCopyWith<$Res> {
  _$GlobalUIPropsCopyWithImpl(this._value, this._then);

  final GlobalUIProps _value;
  // ignore: unused_field
  final $Res Function(GlobalUIProps) _then;

  @override
  $Res call({
    Object? shouldRefreshMain = freezed,
    Object? shouldRefreshProduce = freezed,
    Object? shouldRefreshPrice = freezed,
    Object? shouldRefreshFavorites = freezed,
    Object? shouldRefreshProfile = freezed,
  }) {
    return _then(_value.copyWith(
      shouldRefreshMain: shouldRefreshMain == freezed
          ? _value.shouldRefreshMain
          : shouldRefreshMain // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldRefreshProduce: shouldRefreshProduce == freezed
          ? _value.shouldRefreshProduce
          : shouldRefreshProduce // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldRefreshPrice: shouldRefreshPrice == freezed
          ? _value.shouldRefreshPrice
          : shouldRefreshPrice // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldRefreshFavorites: shouldRefreshFavorites == freezed
          ? _value.shouldRefreshFavorites
          : shouldRefreshFavorites // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldRefreshProfile: shouldRefreshProfile == freezed
          ? _value.shouldRefreshProfile
          : shouldRefreshProfile // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$GlobalUIPropsCopyWith<$Res>
    implements $GlobalUIPropsCopyWith<$Res> {
  factory _$GlobalUIPropsCopyWith(
          _GlobalUIProps value, $Res Function(_GlobalUIProps) then) =
      __$GlobalUIPropsCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool shouldRefreshMain,
      bool shouldRefreshProduce,
      bool shouldRefreshPrice,
      bool shouldRefreshFavorites,
      bool shouldRefreshProfile});
}

/// @nodoc
class __$GlobalUIPropsCopyWithImpl<$Res>
    extends _$GlobalUIPropsCopyWithImpl<$Res>
    implements _$GlobalUIPropsCopyWith<$Res> {
  __$GlobalUIPropsCopyWithImpl(
      _GlobalUIProps _value, $Res Function(_GlobalUIProps) _then)
      : super(_value, (v) => _then(v as _GlobalUIProps));

  @override
  _GlobalUIProps get _value => super._value as _GlobalUIProps;

  @override
  $Res call({
    Object? shouldRefreshMain = freezed,
    Object? shouldRefreshProduce = freezed,
    Object? shouldRefreshPrice = freezed,
    Object? shouldRefreshFavorites = freezed,
    Object? shouldRefreshProfile = freezed,
  }) {
    return _then(_GlobalUIProps(
      shouldRefreshMain: shouldRefreshMain == freezed
          ? _value.shouldRefreshMain
          : shouldRefreshMain // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldRefreshProduce: shouldRefreshProduce == freezed
          ? _value.shouldRefreshProduce
          : shouldRefreshProduce // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldRefreshPrice: shouldRefreshPrice == freezed
          ? _value.shouldRefreshPrice
          : shouldRefreshPrice // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldRefreshFavorites: shouldRefreshFavorites == freezed
          ? _value.shouldRefreshFavorites
          : shouldRefreshFavorites // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldRefreshProfile: shouldRefreshProfile == freezed
          ? _value.shouldRefreshProfile
          : shouldRefreshProfile // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GlobalUIProps implements _GlobalUIProps {
  const _$_GlobalUIProps(
      {required this.shouldRefreshMain,
      required this.shouldRefreshProduce,
      required this.shouldRefreshPrice,
      required this.shouldRefreshFavorites,
      required this.shouldRefreshProfile});

  @override
  final bool shouldRefreshMain;
  @override
  final bool shouldRefreshProduce;
  @override
  final bool shouldRefreshPrice;
  @override
  final bool shouldRefreshFavorites;
  @override
  final bool shouldRefreshProfile;

  @override
  String toString() {
    return 'GlobalUIProps(shouldRefreshMain: $shouldRefreshMain, shouldRefreshProduce: $shouldRefreshProduce, shouldRefreshPrice: $shouldRefreshPrice, shouldRefreshFavorites: $shouldRefreshFavorites, shouldRefreshProfile: $shouldRefreshProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GlobalUIProps &&
            (identical(other.shouldRefreshMain, shouldRefreshMain) ||
                other.shouldRefreshMain == shouldRefreshMain) &&
            (identical(other.shouldRefreshProduce, shouldRefreshProduce) ||
                other.shouldRefreshProduce == shouldRefreshProduce) &&
            (identical(other.shouldRefreshPrice, shouldRefreshPrice) ||
                other.shouldRefreshPrice == shouldRefreshPrice) &&
            (identical(other.shouldRefreshFavorites, shouldRefreshFavorites) ||
                other.shouldRefreshFavorites == shouldRefreshFavorites) &&
            (identical(other.shouldRefreshProfile, shouldRefreshProfile) ||
                other.shouldRefreshProfile == shouldRefreshProfile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      shouldRefreshMain,
      shouldRefreshProduce,
      shouldRefreshPrice,
      shouldRefreshFavorites,
      shouldRefreshProfile);

  @JsonKey(ignore: true)
  @override
  _$GlobalUIPropsCopyWith<_GlobalUIProps> get copyWith =>
      __$GlobalUIPropsCopyWithImpl<_GlobalUIProps>(this, _$identity);
}

abstract class _GlobalUIProps implements GlobalUIProps {
  const factory _GlobalUIProps(
      {required bool shouldRefreshMain,
      required bool shouldRefreshProduce,
      required bool shouldRefreshPrice,
      required bool shouldRefreshFavorites,
      required bool shouldRefreshProfile}) = _$_GlobalUIProps;

  @override
  bool get shouldRefreshMain;
  @override
  bool get shouldRefreshProduce;
  @override
  bool get shouldRefreshPrice;
  @override
  bool get shouldRefreshFavorites;
  @override
  bool get shouldRefreshProfile;
  @override
  @JsonKey(ignore: true)
  _$GlobalUIPropsCopyWith<_GlobalUIProps> get copyWith =>
      throw _privateConstructorUsedError;
}
