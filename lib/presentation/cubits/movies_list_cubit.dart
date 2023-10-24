import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_picker_app_flutter/data/data_sources/api.dart';
import 'package:movie_picker_app_flutter/data/repositories/movie_repository.dart';
import 'package:movie_picker_app_flutter/domain/models/movie.dart';

part 'movies_list_state.dart';

class MoviesListCubit extends Cubit<MoviesListState> {
  final MovieRepository movieRepository;

  MoviesListCubit({required this.movieRepository}) : super(MoviesListInitial());

  Future<void> getMovies(List<int> platforms, List<int> genres) async {
    try {
      emit(MoviesListLoading());
      final movies = await movieRepository.getMovies(platforms, genres);
      emit(MoviesListSuccess(movies: movies));
    } on MovieException {
      emit(MovieListFailure());
    }
  }
}
