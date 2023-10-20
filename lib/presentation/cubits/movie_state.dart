part of 'movie_cubit.dart';

@immutable
sealed class MovieState {}

final class MovieInitial extends MovieState {}

final class MovieLoading extends MovieState {}

class MovieSuccess extends MovieState {
  final List<Movie> movies;

  MovieSuccess({required this.movies});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MovieSuccess && listEquals(other.movies, movies);
  }

  @override
  int get hashCode => movies.hashCode;
}

final class MovieFailure extends MovieState {}
