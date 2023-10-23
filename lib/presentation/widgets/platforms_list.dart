import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_picker_app_flutter/constants/app_colors.dart';
import 'package:movie_picker_app_flutter/presentation/cubits/platforms_select_cubit.dart';

class PlatformsList extends StatelessWidget {
  const PlatformsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlatformsSelectCubit, PlatformsSelectState>(
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ActionChip(
                    onPressed: () {
                      final newState = List<int>.from(state.platforms);
                      state.platforms.contains(337)
                          ? newState.remove(337)
                          : newState.add(337);
                      final genresSelectCubit =
                          BlocProvider.of<PlatformsSelectCubit>(context);
                      genresSelectCubit.changePlatforms(newState);
                    },
                    side: BorderSide(
                      color: state.platforms.contains(337)
                          ? AppColors.disneyPlus
                          : AppColors.outlineDark,
                      width: 2.5,
                    ),
                    padding: const EdgeInsets.all(10),
                    backgroundColor: AppColors.backgroundDark,
                    label: SizedBox(
                      height: 40,
                      width: 140,
                      child: SvgPicture.asset(
                        'assets/disney_plus.svg',
                      ),
                    ),
                  ),
                  ActionChip(
                    onPressed: () {
                      final newState = List<int>.from(state.platforms);
                      state.platforms.contains(384)
                          ? newState.remove(384)
                          : newState.add(384);
                      final genresSelectCubit =
                          BlocProvider.of<PlatformsSelectCubit>(context);
                      genresSelectCubit.changePlatforms(newState);
                    },
                    side: BorderSide(
                      color: state.platforms.contains(384)
                          ? AppColors.hboMax
                          : AppColors.outlineDark,
                      width: 2.5,
                    ),
                    padding: const EdgeInsets.all(20),
                    backgroundColor: AppColors.backgroundDark,
                    label: SizedBox(
                      height: 20,
                      width: 120,
                      child: SvgPicture.asset(
                        'assets/hbo_max.svg',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ActionChip(
                  onPressed: () {
                    final newState = List<int>.from(state.platforms);
                    state.platforms.contains(8)
                        ? newState.remove(8)
                        : newState.add(8);
                    final genresSelectCubit =
                        BlocProvider.of<PlatformsSelectCubit>(context);
                    genresSelectCubit.changePlatforms(newState);
                  },
                  side: BorderSide(
                    color: state.platforms.contains(8)
                        ? AppColors.netflix
                        : AppColors.outlineDark,
                    width: 2.5,
                  ),
                  padding: const EdgeInsets.all(20),
                  backgroundColor: AppColors.backgroundDark,
                  label: SizedBox(
                    height: 20,
                    width: 120,
                    child: SvgPicture.asset(
                      'assets/netflix.svg',
                    ),
                  ),
                ),
                ActionChip(
                  onPressed: () {
                    final newState = List<int>.from(state.platforms);
                    state.platforms.contains(9)
                        ? newState.remove(9)
                        : newState.add(9);
                    final genresSelectCubit =
                        BlocProvider.of<PlatformsSelectCubit>(context);
                    genresSelectCubit.changePlatforms(newState);
                  },
                  side: BorderSide(
                    color: state.platforms.contains(9)
                        ? AppColors.primeVideo
                        : AppColors.outlineDark,
                    width: 2.5,
                  ),
                  padding: const EdgeInsets.all(5),
                  backgroundColor: AppColors.backgroundDark,
                  label: SizedBox(
                    height: 50,
                    width: 150,
                    child: SvgPicture.asset(
                      'assets/prime_video.svg',
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
