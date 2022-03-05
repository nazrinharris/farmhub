// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'produce_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProduceScreenEventTearOff {
  const _$ProduceScreenEventTearOff();

  _PSEStarted started() {
    return const _PSEStarted();
  }

  _PSETabChanged tabChanged() {
    return const _PSETabChanged();
  }
}

/// @nodoc
const $ProduceScreenEvent = _$ProduceScreenEventTearOff();

/// @nodoc
mixin _$ProduceScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PSEStarted value) started,
    required TResult Function(_PSETabChanged value) tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProduceScreenEventCopyWith<$Res> {
  factory $ProduceScreenEventCopyWith(
          ProduceScreenEvent value, $Res Function(ProduceScreenEvent) then) =
      _$ProduceScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProduceScreenEventCopyWithImpl<$Res>
    implements $ProduceScreenEventCopyWith<$Res> {
  _$ProduceScreenEventCopyWithImpl(this._value, this._then);

  final ProduceScreenEvent _value;
  // ignore: unused_field
  final $Res Function(ProduceScreenEvent) _then;
}

/// @nodoc
abstract class _$PSEStartedCopyWith<$Res> {
  factory _$PSEStartedCopyWith(
          _PSEStarted value, $Res Function(_PSEStarted) then) =
      __$PSEStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PSEStartedCopyWithImpl<$Res>
    extends _$ProduceScreenEventCopyWithImpl<$Res>
    implements _$PSEStartedCopyWith<$Res> {
  __$PSEStartedCopyWithImpl(
      _PSEStarted _value, $Res Function(_PSEStarted) _then)
      : super(_value, (v) => _then(v as _PSEStarted));

  @override
  _PSEStarted get _value => super._value as _PSEStarted;
}

/// @nodoc

class _$_PSEStarted implements _PSEStarted {
  const _$_PSEStarted();

  @override
  String toString() {
    return 'ProduceScreenEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PSEStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() tabChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
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
    required TResult Function(_PSEStarted value) started,
    required TResult Function(_PSETabChanged value) tabChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _PSEStarted implements ProduceScreenEvent {
  const factory _PSEStarted() = _$_PSEStarted;
}

/// @nodoc
abstract class _$PSETabChangedCopyWith<$Res> {
  factory _$PSETabChangedCopyWith(
          _PSETabChanged value, $Res Function(_PSETabChanged) then) =
      __$PSETabChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PSETabChangedCopyWithImpl<$Res>
    extends _$ProduceScreenEventCopyWithImpl<$Res>
    implements _$PSETabChangedCopyWith<$Res> {
  __$PSETabChangedCopyWithImpl(
      _PSETabChanged _value, $Res Function(_PSETabChanged) _then)
      : super(_value, (v) => _then(v as _PSETabChanged));

  @override
  _PSETabChanged get _value => super._value as _PSETabChanged;
}

/// @nodoc

class _$_PSETabChanged implements _PSETabChanged {
  const _$_PSETabChanged();

  @override
  String toString() {
    return 'ProduceScreenEvent.tabChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PSETabChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() tabChanged,
  }) {
    return tabChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
  }) {
    return tabChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? tabChanged,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PSEStarted value) started,
    required TResult Function(_PSETabChanged value) tabChanged,
  }) {
    return tabChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
  }) {
    return tabChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PSEStarted value)? started,
    TResult Function(_PSETabChanged value)? tabChanged,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(this);
    }
    return orElse();
  }
}

abstract class _PSETabChanged implements ProduceScreenEvent {
  const factory _PSETabChanged() = _$_PSETabChanged;
}

/// @nodoc
class _$ProduceScreenStateTearOff {
  const _$ProduceScreenStateTearOff();

  _PSSInitial initial({required ProduceScreenProps props}) {
    return _PSSInitial(
      props: props,
    );
  }
}

/// @nodoc
const $ProduceScreenState = _$ProduceScreenStateTearOff();

/// @nodoc
mixin _$ProduceScreenState {
  ProduceScreenProps get props => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProduceScreenProps props) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PSSInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PSSInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PSSInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProduceScreenStateCopyWith<ProduceScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProduceScreenStateCopyWith<$Res> {
  factory $ProduceScreenStateCopyWith(
          ProduceScreenState value, $Res Function(ProduceScreenState) then) =
      _$ProduceScreenStateCopyWithImpl<$Res>;
  $Res call({ProduceScreenProps props});

  $ProduceScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class _$ProduceScreenStateCopyWithImpl<$Res>
    implements $ProduceScreenStateCopyWith<$Res> {
  _$ProduceScreenStateCopyWithImpl(this._value, this._then);

  final ProduceScreenState _value;
  // ignore: unused_field
  final $Res Function(ProduceScreenState) _then;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(_value.copyWith(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as ProduceScreenProps,
    ));
  }

  @override
  $ProduceScreenPropsCopyWith<$Res> get props {
    return $ProduceScreenPropsCopyWith<$Res>(_value.props, (value) {
      return _then(_value.copyWith(props: value));
    });
  }
}

/// @nodoc
abstract class _$PSSInitialCopyWith<$Res>
    implements $ProduceScreenStateCopyWith<$Res> {
  factory _$PSSInitialCopyWith(
          _PSSInitial value, $Res Function(_PSSInitial) then) =
      __$PSSInitialCopyWithImpl<$Res>;
  @override
  $Res call({ProduceScreenProps props});

  @override
  $ProduceScreenPropsCopyWith<$Res> get props;
}

/// @nodoc
class __$PSSInitialCopyWithImpl<$Res>
    extends _$ProduceScreenStateCopyWithImpl<$Res>
    implements _$PSSInitialCopyWith<$Res> {
  __$PSSInitialCopyWithImpl(
      _PSSInitial _value, $Res Function(_PSSInitial) _then)
      : super(_value, (v) => _then(v as _PSSInitial));

  @override
  _PSSInitial get _value => super._value as _PSSInitial;

  @override
  $Res call({
    Object? props = freezed,
  }) {
    return _then(_PSSInitial(
      props: props == freezed
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as ProduceScreenProps,
    ));
  }
}

/// @nodoc

class _$_PSSInitial implements _PSSInitial {
  const _$_PSSInitial({required this.props});

  @override
  final ProduceScreenProps props;

  @override
  String toString() {
    return 'ProduceScreenState.initial(props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PSSInitial &&
            (identical(other.props, props) || other.props == props));
  }

  @override
  int get hashCode => Object.hash(runtimeType, props);

  @JsonKey(ignore: true)
  @override
  _$PSSInitialCopyWith<_PSSInitial> get copyWith =>
      __$PSSInitialCopyWithImpl<_PSSInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProduceScreenProps props) initial,
  }) {
    return initial(props);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
  }) {
    return initial?.call(props);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProduceScreenProps props)? initial,
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
    required TResult Function(_PSSInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PSSInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PSSInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PSSInitial implements ProduceScreenState {
  const factory _PSSInitial({required ProduceScreenProps props}) =
      _$_PSSInitial;

  @override
  ProduceScreenProps get props;
  @override
  @JsonKey(ignore: true)
  _$PSSInitialCopyWith<_PSSInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProduceScreenPropsTearOff {
  const _$ProduceScreenPropsTearOff();

  _ProduceScreenProps call(
      {required TabController tabController, required int index}) {
    return _ProduceScreenProps(
      tabController: tabController,
      index: index,
    );
  }
}

/// @nodoc
const $ProduceScreenProps = _$ProduceScreenPropsTearOff();

/// @nodoc
mixin _$ProduceScreenProps {
  TabController get tabController => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProduceScreenPropsCopyWith<ProduceScreenProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProduceScreenPropsCopyWith<$Res> {
  factory $ProduceScreenPropsCopyWith(
          ProduceScreenProps value, $Res Function(ProduceScreenProps) then) =
      _$ProduceScreenPropsCopyWithImpl<$Res>;
  $Res call({TabController tabController, int index});
}

/// @nodoc
class _$ProduceScreenPropsCopyWithImpl<$Res>
    implements $ProduceScreenPropsCopyWith<$Res> {
  _$ProduceScreenPropsCopyWithImpl(this._value, this._then);

  final ProduceScreenProps _value;
  // ignore: unused_field
  final $Res Function(ProduceScreenProps) _then;

  @override
  $Res call({
    Object? tabController = freezed,
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      tabController: tabController == freezed
          ? _value.tabController
          : tabController // ignore: cast_nullable_to_non_nullable
              as TabController,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ProduceScreenPropsCopyWith<$Res>
    implements $ProduceScreenPropsCopyWith<$Res> {
  factory _$ProduceScreenPropsCopyWith(
          _ProduceScreenProps value, $Res Function(_ProduceScreenProps) then) =
      __$ProduceScreenPropsCopyWithImpl<$Res>;
  @override
  $Res call({TabController tabController, int index});
}

/// @nodoc
class __$ProduceScreenPropsCopyWithImpl<$Res>
    extends _$ProduceScreenPropsCopyWithImpl<$Res>
    implements _$ProduceScreenPropsCopyWith<$Res> {
  __$ProduceScreenPropsCopyWithImpl(
      _ProduceScreenProps _value, $Res Function(_ProduceScreenProps) _then)
      : super(_value, (v) => _then(v as _ProduceScreenProps));

  @override
  _ProduceScreenProps get _value => super._value as _ProduceScreenProps;

  @override
  $Res call({
    Object? tabController = freezed,
    Object? index = freezed,
  }) {
    return _then(_ProduceScreenProps(
      tabController: tabController == freezed
          ? _value.tabController
          : tabController // ignore: cast_nullable_to_non_nullable
              as TabController,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ProduceScreenProps implements _ProduceScreenProps {
  const _$_ProduceScreenProps(
      {required this.tabController, required this.index});

  @override
  final TabController tabController;
  @override
  final int index;

  @override
  String toString() {
    return 'ProduceScreenProps(tabController: $tabController, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProduceScreenProps &&
            (identical(other.tabController, tabController) ||
                other.tabController == tabController) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabController, index);

  @JsonKey(ignore: true)
  @override
  _$ProduceScreenPropsCopyWith<_ProduceScreenProps> get copyWith =>
      __$ProduceScreenPropsCopyWithImpl<_ProduceScreenProps>(this, _$identity);
}

abstract class _ProduceScreenProps implements ProduceScreenProps {
  const factory _ProduceScreenProps(
      {required TabController tabController,
      required int index}) = _$_ProduceScreenProps;

  @override
  TabController get tabController;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$ProduceScreenPropsCopyWith<_ProduceScreenProps> get copyWith =>
      throw _privateConstructorUsedError;
}
