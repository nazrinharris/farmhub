// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchScreenEventTearOff {
  const _$SearchScreenEventTearOff();

  _SSEStarted started() {
    return const _SSEStarted();
  }

  _SSEOnChanged onChanged({required String query}) {
    return _SSEOnChanged(
      query: query,
    );
  }

  _SSEOnSubmitted onSubmitted({required String query}) {
    return _SSEOnSubmitted(
      query: query,
    );
  }
}

/// @nodoc
const $SearchScreenEvent = _$SearchScreenEventTearOff();

/// @nodoc
mixin _$SearchScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) onChanged,
    required TResult Function(String query) onSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? onChanged,
    TResult Function(String query)? onSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? onChanged,
    TResult Function(String query)? onSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SSEStarted value) started,
    required TResult Function(_SSEOnChanged value) onChanged,
    required TResult Function(_SSEOnSubmitted value) onSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SSEStarted value)? started,
    TResult Function(_SSEOnChanged value)? onChanged,
    TResult Function(_SSEOnSubmitted value)? onSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SSEStarted value)? started,
    TResult Function(_SSEOnChanged value)? onChanged,
    TResult Function(_SSEOnSubmitted value)? onSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchScreenEventCopyWith<$Res> {
  factory $SearchScreenEventCopyWith(
          SearchScreenEvent value, $Res Function(SearchScreenEvent) then) =
      _$SearchScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchScreenEventCopyWithImpl<$Res>
    implements $SearchScreenEventCopyWith<$Res> {
  _$SearchScreenEventCopyWithImpl(this._value, this._then);

  final SearchScreenEvent _value;
  // ignore: unused_field
  final $Res Function(SearchScreenEvent) _then;
}

/// @nodoc
abstract class _$SSEStartedCopyWith<$Res> {
  factory _$SSEStartedCopyWith(
          _SSEStarted value, $Res Function(_SSEStarted) then) =
      __$SSEStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SSEStartedCopyWithImpl<$Res>
    extends _$SearchScreenEventCopyWithImpl<$Res>
    implements _$SSEStartedCopyWith<$Res> {
  __$SSEStartedCopyWithImpl(
      _SSEStarted _value, $Res Function(_SSEStarted) _then)
      : super(_value, (v) => _then(v as _SSEStarted));

  @override
  _SSEStarted get _value => super._value as _SSEStarted;
}

/// @nodoc

class _$_SSEStarted implements _SSEStarted {
  const _$_SSEStarted();

  @override
  String toString() {
    return 'SearchScreenEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SSEStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) onChanged,
    required TResult Function(String query) onSubmitted,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? onChanged,
    TResult Function(String query)? onSubmitted,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? onChanged,
    TResult Function(String query)? onSubmitted,
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
    required TResult Function(_SSEStarted value) started,
    required TResult Function(_SSEOnChanged value) onChanged,
    required TResult Function(_SSEOnSubmitted value) onSubmitted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SSEStarted value)? started,
    TResult Function(_SSEOnChanged value)? onChanged,
    TResult Function(_SSEOnSubmitted value)? onSubmitted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SSEStarted value)? started,
    TResult Function(_SSEOnChanged value)? onChanged,
    TResult Function(_SSEOnSubmitted value)? onSubmitted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _SSEStarted implements SearchScreenEvent {
  const factory _SSEStarted() = _$_SSEStarted;
}

/// @nodoc
abstract class _$SSEOnChangedCopyWith<$Res> {
  factory _$SSEOnChangedCopyWith(
          _SSEOnChanged value, $Res Function(_SSEOnChanged) then) =
      __$SSEOnChangedCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$SSEOnChangedCopyWithImpl<$Res>
    extends _$SearchScreenEventCopyWithImpl<$Res>
    implements _$SSEOnChangedCopyWith<$Res> {
  __$SSEOnChangedCopyWithImpl(
      _SSEOnChanged _value, $Res Function(_SSEOnChanged) _then)
      : super(_value, (v) => _then(v as _SSEOnChanged));

  @override
  _SSEOnChanged get _value => super._value as _SSEOnChanged;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_SSEOnChanged(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SSEOnChanged implements _SSEOnChanged {
  const _$_SSEOnChanged({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchScreenEvent.onChanged(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SSEOnChanged &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  _$SSEOnChangedCopyWith<_SSEOnChanged> get copyWith =>
      __$SSEOnChangedCopyWithImpl<_SSEOnChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) onChanged,
    required TResult Function(String query) onSubmitted,
  }) {
    return onChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? onChanged,
    TResult Function(String query)? onSubmitted,
  }) {
    return onChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? onChanged,
    TResult Function(String query)? onSubmitted,
    required TResult orElse(),
  }) {
    if (onChanged != null) {
      return onChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SSEStarted value) started,
    required TResult Function(_SSEOnChanged value) onChanged,
    required TResult Function(_SSEOnSubmitted value) onSubmitted,
  }) {
    return onChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SSEStarted value)? started,
    TResult Function(_SSEOnChanged value)? onChanged,
    TResult Function(_SSEOnSubmitted value)? onSubmitted,
  }) {
    return onChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SSEStarted value)? started,
    TResult Function(_SSEOnChanged value)? onChanged,
    TResult Function(_SSEOnSubmitted value)? onSubmitted,
    required TResult orElse(),
  }) {
    if (onChanged != null) {
      return onChanged(this);
    }
    return orElse();
  }
}

abstract class _SSEOnChanged implements SearchScreenEvent {
  const factory _SSEOnChanged({required String query}) = _$_SSEOnChanged;

  String get query;
  @JsonKey(ignore: true)
  _$SSEOnChangedCopyWith<_SSEOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SSEOnSubmittedCopyWith<$Res> {
  factory _$SSEOnSubmittedCopyWith(
          _SSEOnSubmitted value, $Res Function(_SSEOnSubmitted) then) =
      __$SSEOnSubmittedCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$SSEOnSubmittedCopyWithImpl<$Res>
    extends _$SearchScreenEventCopyWithImpl<$Res>
    implements _$SSEOnSubmittedCopyWith<$Res> {
  __$SSEOnSubmittedCopyWithImpl(
      _SSEOnSubmitted _value, $Res Function(_SSEOnSubmitted) _then)
      : super(_value, (v) => _then(v as _SSEOnSubmitted));

  @override
  _SSEOnSubmitted get _value => super._value as _SSEOnSubmitted;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_SSEOnSubmitted(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SSEOnSubmitted implements _SSEOnSubmitted {
  const _$_SSEOnSubmitted({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchScreenEvent.onSubmitted(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SSEOnSubmitted &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  _$SSEOnSubmittedCopyWith<_SSEOnSubmitted> get copyWith =>
      __$SSEOnSubmittedCopyWithImpl<_SSEOnSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) onChanged,
    required TResult Function(String query) onSubmitted,
  }) {
    return onSubmitted(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? onChanged,
    TResult Function(String query)? onSubmitted,
  }) {
    return onSubmitted?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? onChanged,
    TResult Function(String query)? onSubmitted,
    required TResult orElse(),
  }) {
    if (onSubmitted != null) {
      return onSubmitted(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SSEStarted value) started,
    required TResult Function(_SSEOnChanged value) onChanged,
    required TResult Function(_SSEOnSubmitted value) onSubmitted,
  }) {
    return onSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SSEStarted value)? started,
    TResult Function(_SSEOnChanged value)? onChanged,
    TResult Function(_SSEOnSubmitted value)? onSubmitted,
  }) {
    return onSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SSEStarted value)? started,
    TResult Function(_SSEOnChanged value)? onChanged,
    TResult Function(_SSEOnSubmitted value)? onSubmitted,
    required TResult orElse(),
  }) {
    if (onSubmitted != null) {
      return onSubmitted(this);
    }
    return orElse();
  }
}

abstract class _SSEOnSubmitted implements SearchScreenEvent {
  const factory _SSEOnSubmitted({required String query}) = _$_SSEOnSubmitted;

  String get query;
  @JsonKey(ignore: true)
  _$SSEOnSubmittedCopyWith<_SSEOnSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchScreenStateTearOff {
  const _$SearchScreenStateTearOff();

  SSSInitial initial() {
    return const SSSInitial();
  }

  SSSLoading loading() {
    return const SSSLoading();
  }

  SSSCompleted completed(List<Produce> produceList) {
    return SSSCompleted(
      produceList,
    );
  }

  SSSError error(Failure failure) {
    return SSSError(
      failure,
    );
  }
}

/// @nodoc
const $SearchScreenState = _$SearchScreenStateTearOff();

/// @nodoc
mixin _$SearchScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Produce> produceList) completed,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Produce> produceList)? completed,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Produce> produceList)? completed,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SSSInitial value) initial,
    required TResult Function(SSSLoading value) loading,
    required TResult Function(SSSCompleted value) completed,
    required TResult Function(SSSError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SSSInitial value)? initial,
    TResult Function(SSSLoading value)? loading,
    TResult Function(SSSCompleted value)? completed,
    TResult Function(SSSError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SSSInitial value)? initial,
    TResult Function(SSSLoading value)? loading,
    TResult Function(SSSCompleted value)? completed,
    TResult Function(SSSError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchScreenStateCopyWith<$Res> {
  factory $SearchScreenStateCopyWith(
          SearchScreenState value, $Res Function(SearchScreenState) then) =
      _$SearchScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchScreenStateCopyWithImpl<$Res>
    implements $SearchScreenStateCopyWith<$Res> {
  _$SearchScreenStateCopyWithImpl(this._value, this._then);

  final SearchScreenState _value;
  // ignore: unused_field
  final $Res Function(SearchScreenState) _then;
}

/// @nodoc
abstract class $SSSInitialCopyWith<$Res> {
  factory $SSSInitialCopyWith(
          SSSInitial value, $Res Function(SSSInitial) then) =
      _$SSSInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$SSSInitialCopyWithImpl<$Res>
    extends _$SearchScreenStateCopyWithImpl<$Res>
    implements $SSSInitialCopyWith<$Res> {
  _$SSSInitialCopyWithImpl(SSSInitial _value, $Res Function(SSSInitial) _then)
      : super(_value, (v) => _then(v as SSSInitial));

  @override
  SSSInitial get _value => super._value as SSSInitial;
}

/// @nodoc

class _$SSSInitial implements SSSInitial {
  const _$SSSInitial();

  @override
  String toString() {
    return 'SearchScreenState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SSSInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Produce> produceList) completed,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Produce> produceList)? completed,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Produce> produceList)? completed,
    TResult Function(Failure failure)? error,
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
    required TResult Function(SSSInitial value) initial,
    required TResult Function(SSSLoading value) loading,
    required TResult Function(SSSCompleted value) completed,
    required TResult Function(SSSError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SSSInitial value)? initial,
    TResult Function(SSSLoading value)? loading,
    TResult Function(SSSCompleted value)? completed,
    TResult Function(SSSError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SSSInitial value)? initial,
    TResult Function(SSSLoading value)? loading,
    TResult Function(SSSCompleted value)? completed,
    TResult Function(SSSError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SSSInitial implements SearchScreenState {
  const factory SSSInitial() = _$SSSInitial;
}

/// @nodoc
abstract class $SSSLoadingCopyWith<$Res> {
  factory $SSSLoadingCopyWith(
          SSSLoading value, $Res Function(SSSLoading) then) =
      _$SSSLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$SSSLoadingCopyWithImpl<$Res>
    extends _$SearchScreenStateCopyWithImpl<$Res>
    implements $SSSLoadingCopyWith<$Res> {
  _$SSSLoadingCopyWithImpl(SSSLoading _value, $Res Function(SSSLoading) _then)
      : super(_value, (v) => _then(v as SSSLoading));

  @override
  SSSLoading get _value => super._value as SSSLoading;
}

/// @nodoc

class _$SSSLoading implements SSSLoading {
  const _$SSSLoading();

  @override
  String toString() {
    return 'SearchScreenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SSSLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Produce> produceList) completed,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Produce> produceList)? completed,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Produce> produceList)? completed,
    TResult Function(Failure failure)? error,
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
    required TResult Function(SSSInitial value) initial,
    required TResult Function(SSSLoading value) loading,
    required TResult Function(SSSCompleted value) completed,
    required TResult Function(SSSError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SSSInitial value)? initial,
    TResult Function(SSSLoading value)? loading,
    TResult Function(SSSCompleted value)? completed,
    TResult Function(SSSError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SSSInitial value)? initial,
    TResult Function(SSSLoading value)? loading,
    TResult Function(SSSCompleted value)? completed,
    TResult Function(SSSError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SSSLoading implements SearchScreenState {
  const factory SSSLoading() = _$SSSLoading;
}

/// @nodoc
abstract class $SSSCompletedCopyWith<$Res> {
  factory $SSSCompletedCopyWith(
          SSSCompleted value, $Res Function(SSSCompleted) then) =
      _$SSSCompletedCopyWithImpl<$Res>;
  $Res call({List<Produce> produceList});
}

/// @nodoc
class _$SSSCompletedCopyWithImpl<$Res>
    extends _$SearchScreenStateCopyWithImpl<$Res>
    implements $SSSCompletedCopyWith<$Res> {
  _$SSSCompletedCopyWithImpl(
      SSSCompleted _value, $Res Function(SSSCompleted) _then)
      : super(_value, (v) => _then(v as SSSCompleted));

  @override
  SSSCompleted get _value => super._value as SSSCompleted;

  @override
  $Res call({
    Object? produceList = freezed,
  }) {
    return _then(SSSCompleted(
      produceList == freezed
          ? _value.produceList
          : produceList // ignore: cast_nullable_to_non_nullable
              as List<Produce>,
    ));
  }
}

/// @nodoc

class _$SSSCompleted implements SSSCompleted {
  const _$SSSCompleted(this.produceList);

  @override
  final List<Produce> produceList;

  @override
  String toString() {
    return 'SearchScreenState.completed(produceList: $produceList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SSSCompleted &&
            const DeepCollectionEquality()
                .equals(other.produceList, produceList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(produceList));

  @JsonKey(ignore: true)
  @override
  $SSSCompletedCopyWith<SSSCompleted> get copyWith =>
      _$SSSCompletedCopyWithImpl<SSSCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Produce> produceList) completed,
    required TResult Function(Failure failure) error,
  }) {
    return completed(produceList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Produce> produceList)? completed,
    TResult Function(Failure failure)? error,
  }) {
    return completed?.call(produceList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Produce> produceList)? completed,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(produceList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SSSInitial value) initial,
    required TResult Function(SSSLoading value) loading,
    required TResult Function(SSSCompleted value) completed,
    required TResult Function(SSSError value) error,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SSSInitial value)? initial,
    TResult Function(SSSLoading value)? loading,
    TResult Function(SSSCompleted value)? completed,
    TResult Function(SSSError value)? error,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SSSInitial value)? initial,
    TResult Function(SSSLoading value)? loading,
    TResult Function(SSSCompleted value)? completed,
    TResult Function(SSSError value)? error,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class SSSCompleted implements SearchScreenState {
  const factory SSSCompleted(List<Produce> produceList) = _$SSSCompleted;

  List<Produce> get produceList;
  @JsonKey(ignore: true)
  $SSSCompletedCopyWith<SSSCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SSSErrorCopyWith<$Res> {
  factory $SSSErrorCopyWith(SSSError value, $Res Function(SSSError) then) =
      _$SSSErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class _$SSSErrorCopyWithImpl<$Res> extends _$SearchScreenStateCopyWithImpl<$Res>
    implements $SSSErrorCopyWith<$Res> {
  _$SSSErrorCopyWithImpl(SSSError _value, $Res Function(SSSError) _then)
      : super(_value, (v) => _then(v as SSSError));

  @override
  SSSError get _value => super._value as SSSError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(SSSError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$SSSError implements SSSError {
  const _$SSSError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'SearchScreenState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SSSError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  $SSSErrorCopyWith<SSSError> get copyWith =>
      _$SSSErrorCopyWithImpl<SSSError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Produce> produceList) completed,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Produce> produceList)? completed,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Produce> produceList)? completed,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SSSInitial value) initial,
    required TResult Function(SSSLoading value) loading,
    required TResult Function(SSSCompleted value) completed,
    required TResult Function(SSSError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SSSInitial value)? initial,
    TResult Function(SSSLoading value)? loading,
    TResult Function(SSSCompleted value)? completed,
    TResult Function(SSSError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SSSInitial value)? initial,
    TResult Function(SSSLoading value)? loading,
    TResult Function(SSSCompleted value)? completed,
    TResult Function(SSSError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SSSError implements SearchScreenState {
  const factory SSSError(Failure failure) = _$SSSError;

  Failure get failure;
  @JsonKey(ignore: true)
  $SSSErrorCopyWith<SSSError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchScreenPropsTearOff {
  const _$SearchScreenPropsTearOff();

  _SearchScreenProps call({required String query}) {
    return _SearchScreenProps(
      query: query,
    );
  }
}

/// @nodoc
const $SearchScreenProps = _$SearchScreenPropsTearOff();

/// @nodoc
mixin _$SearchScreenProps {
  String get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchScreenPropsCopyWith<SearchScreenProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchScreenPropsCopyWith<$Res> {
  factory $SearchScreenPropsCopyWith(
          SearchScreenProps value, $Res Function(SearchScreenProps) then) =
      _$SearchScreenPropsCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchScreenPropsCopyWithImpl<$Res>
    implements $SearchScreenPropsCopyWith<$Res> {
  _$SearchScreenPropsCopyWithImpl(this._value, this._then);

  final SearchScreenProps _value;
  // ignore: unused_field
  final $Res Function(SearchScreenProps) _then;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchScreenPropsCopyWith<$Res>
    implements $SearchScreenPropsCopyWith<$Res> {
  factory _$SearchScreenPropsCopyWith(
          _SearchScreenProps value, $Res Function(_SearchScreenProps) then) =
      __$SearchScreenPropsCopyWithImpl<$Res>;
  @override
  $Res call({String query});
}

/// @nodoc
class __$SearchScreenPropsCopyWithImpl<$Res>
    extends _$SearchScreenPropsCopyWithImpl<$Res>
    implements _$SearchScreenPropsCopyWith<$Res> {
  __$SearchScreenPropsCopyWithImpl(
      _SearchScreenProps _value, $Res Function(_SearchScreenProps) _then)
      : super(_value, (v) => _then(v as _SearchScreenProps));

  @override
  _SearchScreenProps get _value => super._value as _SearchScreenProps;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_SearchScreenProps(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchScreenProps implements _SearchScreenProps {
  const _$_SearchScreenProps({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchScreenProps(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchScreenProps &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  _$SearchScreenPropsCopyWith<_SearchScreenProps> get copyWith =>
      __$SearchScreenPropsCopyWithImpl<_SearchScreenProps>(this, _$identity);
}

abstract class _SearchScreenProps implements SearchScreenProps {
  const factory _SearchScreenProps({required String query}) =
      _$_SearchScreenProps;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$SearchScreenPropsCopyWith<_SearchScreenProps> get copyWith =>
      throw _privateConstructorUsedError;
}
