part of 'genres_select_cubit.dart';

@immutable
class GenresSelectState {
  final List<int> genres;

  const GenresSelectState({
    required this.genres,
  });

  GenresSelectState copyWith({
    List<int>? genres,
  }) {
    return GenresSelectState(
      genres: genres ?? this.genres,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GenresSelectState && listEquals(other.genres, genres);
  }

  @override
  int get hashCode => genres.hashCode;
}
