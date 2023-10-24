import "dart:math";

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:movie_picker_app_flutter/domain/models/movie.dart';

part 'movie_state.dart';

class MovieCubit extends Cubit<MovieState> {
  MovieCubit() : super(MovieInitial());

  Future<void> getMovie({required List<Movie> movies}) async {
    emit(MovieLoading());

    if (movies == []) {
      emit(MovieFailure());
    }

    emit(MovieSuccess(movie: movies[Random().nextInt(movies.length)]));
  }
}
