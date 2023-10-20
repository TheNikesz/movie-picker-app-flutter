import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';

part 'platforms_select_state.dart';

class PlatformsSelectCubit extends Cubit<PlatformsSelectState> {
  PlatformsSelectCubit({required List<int> platforms})
      : super(PlatformsSelectState(platforms: platforms));

  Future<void> changePlatforms(List<int> newPlatforms) async {
    emit(state.copyWith(
      platforms: newPlatforms,
    ));
  }
}
