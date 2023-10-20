import 'package:movie_picker_app_flutter/data/data_sources/api.dart';
import 'package:movie_picker_app_flutter/domain/models/movie.dart';

class MovieRepository {
  final MovieApi _movieApi;

  MovieRepository({
    MovieApi? movieApi,
  }) : _movieApi = movieApi ?? MovieApi();

  Future<List<Movie>> getMovies(List<int> platforms, List<int> genres) async {
    try {
      return await _movieApi.getMovies(platforms, genres);
    } catch (e) {
      rethrow;
    }
  }
}
