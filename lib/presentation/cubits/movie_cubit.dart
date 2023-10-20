import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_picker_app_flutter/data/data_sources/api.dart';
import 'package:movie_picker_app_flutter/data/repositories/movie_repository.dart';
import 'package:movie_picker_app_flutter/domain/models/movie.dart';

part 'movie_state.dart';

class MovieCubit extends Cubit<MovieState> {
  final MovieRepository movieRepository;

  MovieCubit({required this.movieRepository}) : super(MovieInitial());

  Future<void> getMovies(List<int> platforms, List<int> genres) async {
    try {
      emit(MovieLoading());
      final movies = await movieRepository.getMovies(platforms, genres);
      emit(MovieSuccess(movies: movies));
    } on MovieException {
      emit(MovieFailure());
    }
  }
}
