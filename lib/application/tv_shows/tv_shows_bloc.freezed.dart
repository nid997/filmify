// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tv_shows_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TvShowsEventTearOff {
  const _$TvShowsEventTearOff();

  GetTvShows getTvShows() {
    return const GetTvShows();
  }

  GetPopularShows getPopularShows() {
    return const GetPopularShows();
  }
}

/// @nodoc
const $TvShowsEvent = _$TvShowsEventTearOff();

/// @nodoc
mixin _$TvShowsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTvShows,
    required TResult Function() getPopularShows,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getTvShows,
    TResult Function()? getPopularShows,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTvShows,
    TResult Function()? getPopularShows,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTvShows value) getTvShows,
    required TResult Function(GetPopularShows value) getPopularShows,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetTvShows value)? getTvShows,
    TResult Function(GetPopularShows value)? getPopularShows,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTvShows value)? getTvShows,
    TResult Function(GetPopularShows value)? getPopularShows,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowsEventCopyWith<$Res> {
  factory $TvShowsEventCopyWith(
          TvShowsEvent value, $Res Function(TvShowsEvent) then) =
      _$TvShowsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TvShowsEventCopyWithImpl<$Res> implements $TvShowsEventCopyWith<$Res> {
  _$TvShowsEventCopyWithImpl(this._value, this._then);

  final TvShowsEvent _value;
  // ignore: unused_field
  final $Res Function(TvShowsEvent) _then;
}

/// @nodoc
abstract class $GetTvShowsCopyWith<$Res> {
  factory $GetTvShowsCopyWith(
          GetTvShows value, $Res Function(GetTvShows) then) =
      _$GetTvShowsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetTvShowsCopyWithImpl<$Res> extends _$TvShowsEventCopyWithImpl<$Res>
    implements $GetTvShowsCopyWith<$Res> {
  _$GetTvShowsCopyWithImpl(GetTvShows _value, $Res Function(GetTvShows) _then)
      : super(_value, (v) => _then(v as GetTvShows));

  @override
  GetTvShows get _value => super._value as GetTvShows;
}

/// @nodoc

class _$GetTvShows implements GetTvShows {
  const _$GetTvShows();

  @override
  String toString() {
    return 'TvShowsEvent.getTvShows()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetTvShows);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTvShows,
    required TResult Function() getPopularShows,
  }) {
    return getTvShows();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getTvShows,
    TResult Function()? getPopularShows,
  }) {
    return getTvShows?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTvShows,
    TResult Function()? getPopularShows,
    required TResult orElse(),
  }) {
    if (getTvShows != null) {
      return getTvShows();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTvShows value) getTvShows,
    required TResult Function(GetPopularShows value) getPopularShows,
  }) {
    return getTvShows(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetTvShows value)? getTvShows,
    TResult Function(GetPopularShows value)? getPopularShows,
  }) {
    return getTvShows?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTvShows value)? getTvShows,
    TResult Function(GetPopularShows value)? getPopularShows,
    required TResult orElse(),
  }) {
    if (getTvShows != null) {
      return getTvShows(this);
    }
    return orElse();
  }
}

abstract class GetTvShows implements TvShowsEvent {
  const factory GetTvShows() = _$GetTvShows;
}

/// @nodoc
abstract class $GetPopularShowsCopyWith<$Res> {
  factory $GetPopularShowsCopyWith(
          GetPopularShows value, $Res Function(GetPopularShows) then) =
      _$GetPopularShowsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPopularShowsCopyWithImpl<$Res>
    extends _$TvShowsEventCopyWithImpl<$Res>
    implements $GetPopularShowsCopyWith<$Res> {
  _$GetPopularShowsCopyWithImpl(
      GetPopularShows _value, $Res Function(GetPopularShows) _then)
      : super(_value, (v) => _then(v as GetPopularShows));

  @override
  GetPopularShows get _value => super._value as GetPopularShows;
}

/// @nodoc

class _$GetPopularShows implements GetPopularShows {
  const _$GetPopularShows();

  @override
  String toString() {
    return 'TvShowsEvent.getPopularShows()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetPopularShows);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTvShows,
    required TResult Function() getPopularShows,
  }) {
    return getPopularShows();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getTvShows,
    TResult Function()? getPopularShows,
  }) {
    return getPopularShows?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTvShows,
    TResult Function()? getPopularShows,
    required TResult orElse(),
  }) {
    if (getPopularShows != null) {
      return getPopularShows();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTvShows value) getTvShows,
    required TResult Function(GetPopularShows value) getPopularShows,
  }) {
    return getPopularShows(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetTvShows value)? getTvShows,
    TResult Function(GetPopularShows value)? getPopularShows,
  }) {
    return getPopularShows?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTvShows value)? getTvShows,
    TResult Function(GetPopularShows value)? getPopularShows,
    required TResult orElse(),
  }) {
    if (getPopularShows != null) {
      return getPopularShows(this);
    }
    return orElse();
  }
}

abstract class GetPopularShows implements TvShowsEvent {
  const factory GetPopularShows() = _$GetPopularShows;
}

/// @nodoc
class _$TvShowStateTearOff {
  const _$TvShowStateTearOff();

  _Initial call(
      {required List<TvShowData> latestList,
      required bool isLoading,
      required bool hasError,
      required List<TvShowData> popularShows}) {
    return _Initial(
      latestList: latestList,
      isLoading: isLoading,
      hasError: hasError,
      popularShows: popularShows,
    );
  }
}

/// @nodoc
const $TvShowState = _$TvShowStateTearOff();

/// @nodoc
mixin _$TvShowState {
  List<TvShowData> get latestList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  List<TvShowData> get popularShows => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TvShowStateCopyWith<TvShowState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowStateCopyWith<$Res> {
  factory $TvShowStateCopyWith(
          TvShowState value, $Res Function(TvShowState) then) =
      _$TvShowStateCopyWithImpl<$Res>;
  $Res call(
      {List<TvShowData> latestList,
      bool isLoading,
      bool hasError,
      List<TvShowData> popularShows});
}

/// @nodoc
class _$TvShowStateCopyWithImpl<$Res> implements $TvShowStateCopyWith<$Res> {
  _$TvShowStateCopyWithImpl(this._value, this._then);

  final TvShowState _value;
  // ignore: unused_field
  final $Res Function(TvShowState) _then;

  @override
  $Res call({
    Object? latestList = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? popularShows = freezed,
  }) {
    return _then(_value.copyWith(
      latestList: latestList == freezed
          ? _value.latestList
          : latestList // ignore: cast_nullable_to_non_nullable
              as List<TvShowData>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      popularShows: popularShows == freezed
          ? _value.popularShows
          : popularShows // ignore: cast_nullable_to_non_nullable
              as List<TvShowData>,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $TvShowStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<TvShowData> latestList,
      bool isLoading,
      bool hasError,
      List<TvShowData> popularShows});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TvShowStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? latestList = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? popularShows = freezed,
  }) {
    return _then(_Initial(
      latestList: latestList == freezed
          ? _value.latestList
          : latestList // ignore: cast_nullable_to_non_nullable
              as List<TvShowData>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      popularShows: popularShows == freezed
          ? _value.popularShows
          : popularShows // ignore: cast_nullable_to_non_nullable
              as List<TvShowData>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.latestList,
      required this.isLoading,
      required this.hasError,
      required this.popularShows});

  @override
  final List<TvShowData> latestList;
  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final List<TvShowData> popularShows;

  @override
  String toString() {
    return 'TvShowState(latestList: $latestList, isLoading: $isLoading, hasError: $hasError, popularShows: $popularShows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality()
                .equals(other.latestList, latestList) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality()
                .equals(other.popularShows, popularShows));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latestList),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(popularShows));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements TvShowState {
  const factory _Initial(
      {required List<TvShowData> latestList,
      required bool isLoading,
      required bool hasError,
      required List<TvShowData> popularShows}) = _$_Initial;

  @override
  List<TvShowData> get latestList;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  List<TvShowData> get popularShows;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
