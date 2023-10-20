import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';

part 'genres_select_state.dart';

class GenresSelectCubit extends Cubit<GenresSelectState> {
  GenresSelectCubit({required List<int> genres})
      : super(GenresSelectState(genres: genres));

  Future<void> changeGenres(List<int> newGenres) async {
    emit(state.copyWith(
      genres: newGenres,
    ));
  }
}
