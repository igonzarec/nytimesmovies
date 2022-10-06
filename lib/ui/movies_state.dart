import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/movie.dart';

part 'movies_state.freezed.dart';

@freezed
class MoviesState with _$MoviesState {
  const factory MoviesState.successs({
    required List<Movie> movies,
  }) = Success;

  const factory MoviesState.error() = Error;

  const factory MoviesState.loading() = Loading;

  const factory MoviesState.initial() = Initial;
}
