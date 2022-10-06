import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ingenio_challenge/ui/movies_state.dart';
import '../data/movies_repository.dart';

class MoviesBloc extends Cubit<MoviesState> {
  final MoviesRepository _moviesRepository;

  MoviesBloc(this._moviesRepository) : super(const MoviesState.initial()) {
    getMovies();
  }

  getMovies() async {
    emit(const MoviesState.loading());

    try {
      final movies = await _moviesRepository.getMovies();
      emit(MoviesState.successs(movies: movies));
    } on DioError catch (e) {
      log(e.message);
      emit(const MoviesState.error());
    }
  }
}
