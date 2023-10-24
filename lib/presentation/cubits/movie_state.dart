part of 'movie_cubit.dart';

@immutable
sealed class MovieState {}

final class MovieInitial extends MovieState {}

final class MovieLoading extends MovieState {}

final class MovieSuccess extends MovieState {
  final Movie movie;

  MovieSuccess({required this.movie});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MovieSuccess && other.movie == movie;
  }

  @override
  int get hashCode => movie.hashCode;
}

final class MovieFailure extends MovieState {}
