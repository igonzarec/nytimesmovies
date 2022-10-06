// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MoviesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Movie> movies) successs,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Movie> movies)? successs,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movie> movies)? successs,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) successs,
    required TResult Function(Error value) error,
    required TResult Function(Loading value) loading,
    required TResult Function(Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success value)? successs,
    TResult Function(Error value)? error,
    TResult Function(Loading value)? loading,
    TResult Function(Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? successs,
    TResult Function(Error value)? error,
    TResult Function(Loading value)? loading,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesStateCopyWith<$Res> {
  factory $MoviesStateCopyWith(
          MoviesState value, $Res Function(MoviesState) then) =
      _$MoviesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoviesStateCopyWithImpl<$Res> implements $MoviesStateCopyWith<$Res> {
  _$MoviesStateCopyWithImpl(this._value, this._then);

  final MoviesState _value;
  // ignore: unused_field
  final $Res Function(MoviesState) _then;
}

/// @nodoc
abstract class _$$SuccessCopyWith<$Res> {
  factory _$$SuccessCopyWith(_$Success value, $Res Function(_$Success) then) =
      __$$SuccessCopyWithImpl<$Res>;
  $Res call({List<Movie> movies});
}

/// @nodoc
class __$$SuccessCopyWithImpl<$Res> extends _$MoviesStateCopyWithImpl<$Res>
    implements _$$SuccessCopyWith<$Res> {
  __$$SuccessCopyWithImpl(_$Success _value, $Res Function(_$Success) _then)
      : super(_value, (v) => _then(v as _$Success));

  @override
  _$Success get _value => super._value as _$Success;

  @override
  $Res call({
    Object? movies = freezed,
  }) {
    return _then(_$Success(
      movies: movies == freezed
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$Success implements Success {
  const _$Success({required final List<Movie> movies}) : _movies = movies;

  final List<Movie> _movies;
  @override
  List<Movie> get movies {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  String toString() {
    return 'MoviesState.successs(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Success &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_movies));

  @JsonKey(ignore: true)
  @override
  _$$SuccessCopyWith<_$Success> get copyWith =>
      __$$SuccessCopyWithImpl<_$Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Movie> movies) successs,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return successs(movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Movie> movies)? successs,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? initial,
  }) {
    return successs?.call(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movie> movies)? successs,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (successs != null) {
      return successs(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) successs,
    required TResult Function(Error value) error,
    required TResult Function(Loading value) loading,
    required TResult Function(Initial value) initial,
  }) {
    return successs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success value)? successs,
    TResult Function(Error value)? error,
    TResult Function(Loading value)? loading,
    TResult Function(Initial value)? initial,
  }) {
    return successs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? successs,
    TResult Function(Error value)? error,
    TResult Function(Loading value)? loading,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (successs != null) {
      return successs(this);
    }
    return orElse();
  }
}

abstract class Success implements MoviesState {
  const factory Success({required final List<Movie> movies}) = _$Success;

  List<Movie> get movies;
  @JsonKey(ignore: true)
  _$$SuccessCopyWith<_$Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res> extends _$MoviesStateCopyWithImpl<$Res>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, (v) => _then(v as _$Error));

  @override
  _$Error get _value => super._value as _$Error;
}

/// @nodoc

class _$Error implements Error {
  const _$Error();

  @override
  String toString() {
    return 'MoviesState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Movie> movies) successs,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Movie> movies)? successs,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? initial,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movie> movies)? successs,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) successs,
    required TResult Function(Error value) error,
    required TResult Function(Loading value) loading,
    required TResult Function(Initial value) initial,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success value)? successs,
    TResult Function(Error value)? error,
    TResult Function(Loading value)? loading,
    TResult Function(Initial value)? initial,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? successs,
    TResult Function(Error value)? error,
    TResult Function(Loading value)? loading,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements MoviesState {
  const factory Error() = _$Error;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$MoviesStateCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'MoviesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Movie> movies) successs,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Movie> movies)? successs,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? initial,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movie> movies)? successs,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? initial,
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
    required TResult Function(Success value) successs,
    required TResult Function(Error value) error,
    required TResult Function(Loading value) loading,
    required TResult Function(Initial value) initial,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success value)? successs,
    TResult Function(Error value)? error,
    TResult Function(Loading value)? loading,
    TResult Function(Initial value)? initial,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? successs,
    TResult Function(Error value)? error,
    TResult Function(Loading value)? loading,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements MoviesState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$MoviesStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'MoviesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Movie> movies) successs,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Movie> movies)? successs,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movie> movies)? successs,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? initial,
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
    required TResult Function(Success value) successs,
    required TResult Function(Error value) error,
    required TResult Function(Loading value) loading,
    required TResult Function(Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success value)? successs,
    TResult Function(Error value)? error,
    TResult Function(Loading value)? loading,
    TResult Function(Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? successs,
    TResult Function(Error value)? error,
    TResult Function(Loading value)? loading,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements MoviesState {
  const factory Initial() = _$Initial;
}
