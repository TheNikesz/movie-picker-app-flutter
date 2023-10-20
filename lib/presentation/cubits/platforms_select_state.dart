part of 'platforms_select_cubit.dart';

@immutable
class PlatformsSelectState {
  final List<int> platforms;

  const PlatformsSelectState({
    required this.platforms,
  });

  PlatformsSelectState copyWith({
    List<int>? platforms,
  }) {
    return PlatformsSelectState(
      platforms: platforms ?? this.platforms,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PlatformsSelectState && listEquals(other.platforms, platforms);
  }

  @override
  int get hashCode => platforms.hashCode;
}
