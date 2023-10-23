import 'package:dio/dio.dart';
import 'package:movie_picker_app_flutter/auth/secrets.dart';
import 'package:movie_picker_app_flutter/domain/models/movie.dart';

class MovieException implements Exception {}

class MovieApi {
  static const _baseUrl = 'https://api.themoviedb.org/3/discover/movie';

  Future<List<Movie>> getMovies(List<int> platforms, List<int> genres) async {
    try {
      var response = await Dio().get(_baseUrl, queryParameters: {
        'api_key': tmdbApiKey,
        'include_adult': false,
        'include_video': false,
        'language': 'en-US',
        'page': 1,
        'watch_region': 'US',
        'sort_by': 'vote_average.desc',
        'vote_count.gte': '4500',
        'with_genres': genres
            .toString()
            .replaceAll(RegExp('\\[| |\\]'), '')
            .replaceAll(',', '|'),
        'with_watch_providers': platforms.isEmpty
            ? '8|9|337|384'
            : platforms
                .toString()
                .replaceAll(RegExp('\\[| |\\]'), '')
                .replaceAll(',', '|'),
        'without_keywords': 210024,
      });

      final responseList = response.data['results'] as List;
      return responseList.map((data) => Movie.fromJson(data)).toList();
    } on DioException {
      throw MovieException();
    }
  }
}
