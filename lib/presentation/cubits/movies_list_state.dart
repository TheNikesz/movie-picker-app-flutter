part of 'movies_list_cubit.dart';

@immutable
sealed class MoviesListState {}

final class MoviesListInitial extends MoviesListState {}

final class MoviesListLoading extends MoviesListState {}

final class MoviesListSuccess extends MoviesListState {
  final List<Movie> movies;

  MoviesListSuccess({required this.movies});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MoviesListSuccess && listEquals(other.movies, movies);
  }

  @override
  int get hashCode => movies.hashCode;
}

final class MovieListFailure extends MoviesListState {}
