import 'dart:convert';

class Movie {
  int id;
  String title;
  String originalTitle;
  String originalLanguage;
  String releaseDate;
  String overview;
  double voteAverage;
  String posterPath;

  Movie({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.originalLanguage,
    required this.releaseDate,
    required this.overview,
    required this.voteAverage,
    required this.posterPath,
  });

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      originalTitle: map['original_title'] ?? '',
      originalLanguage: map['original_language'] ?? '',
      releaseDate: map['release_date'] ?? '',
      overview: map['overview'] ?? '',
      voteAverage: map['vote_average']?.toDouble() ?? 0.0,
      posterPath: map['poster_path'] ?? '',
    );
  }

  factory Movie.fromJson(String source) => Movie.fromMap(json.decode(source));
}
