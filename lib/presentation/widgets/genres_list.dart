import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_picker_app_flutter/constants/app_colors.dart';
import 'package:movie_picker_app_flutter/presentation/cubits/genres_select_cubit.dart';

class GenresList extends StatelessWidget {
  const GenresList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenresSelectCubit, GenresSelectState>(
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ActionChip(
                    onPressed: () {
                      final newState = List<int>.from(state.genres);
                      state.genres.contains(28)
                          ? newState.remove(28)
                          : newState.add(28);
                      final genresSelectCubit =
                          BlocProvider.of<GenresSelectCubit>(context);
                      genresSelectCubit.changeGenres(newState);
                    },
                    side: BorderSide(
                      color: state.genres.contains(28)
                          ? AppColors.checkedDark
                          : AppColors.outlineDark,
                      width: 2.5,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    backgroundColor: AppColors.backgroundDark,
                    label: const SizedBox(
                      height: 30,
                      width: 130,
                      child: Center(
                        child: Text(
                          'Action',
                          style: TextStyle(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ActionChip(
                    onPressed: () {
                      final newState = List<int>.from(state.genres);
                      state.genres.contains(12)
                          ? newState.remove(12)
                          : newState.add(12);
                      final genresSelectCubit =
                          BlocProvider.of<GenresSelectCubit>(context);
                      genresSelectCubit.changeGenres(newState);
                    },
                    side: BorderSide(
                      color: state.genres.contains(12)
                          ? AppColors.checkedDark
                          : AppColors.outlineDark,
                      width: 2.5,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    backgroundColor: AppColors.backgroundDark,
                    label: const SizedBox(
                      height: 30,
                      width: 130,
                      child: Center(
                        child: Text(
                          'Adventure',
                          style: TextStyle(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ActionChip(
                    onPressed: () {
                      final newState = List<int>.from(state.genres);
                      state.genres.contains(16)
                          ? newState.remove(16)
                          : newState.add(16);
                      final genresSelectCubit =
                          BlocProvider.of<GenresSelectCubit>(context);
                      genresSelectCubit.changeGenres(newState);
                    },
                    side: BorderSide(
                      color: state.genres.contains(16)
                          ? AppColors.checkedDark
                          : AppColors.outlineDark,
                      width: 2.5,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    backgroundColor: AppColors.backgroundDark,
                    label: const SizedBox(
                      height: 30,
                      width: 130,
                      child: Center(
                        child: Text(
                          'Animation',
                          style: TextStyle(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ActionChip(
                    onPressed: () {
                      final newState = List<int>.from(state.genres);
                      state.genres.contains(35)
                          ? newState.remove(35)
                          : newState.add(35);
                      final genresSelectCubit =
                          BlocProvider.of<GenresSelectCubit>(context);
                      genresSelectCubit.changeGenres(newState);
                    },
                    side: BorderSide(
                      color: state.genres.contains(35)
                          ? AppColors.checkedDark
                          : AppColors.outlineDark,
                      width: 2.5,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    backgroundColor: AppColors.backgroundDark,
                    label: const SizedBox(
                      height: 30,
                      width: 130,
                      child: Center(
                        child: Text(
                          'Comedy',
                          style: TextStyle(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ActionChip(
                    onPressed: () {
                      final newState = List<int>.from(state.genres);
                      state.genres.contains(80)
                          ? newState.remove(80)
                          : newState.add(80);
                      final genresSelectCubit =
                          BlocProvider.of<GenresSelectCubit>(context);
                      genresSelectCubit.changeGenres(newState);
                    },
                    side: BorderSide(
                      color: state.genres.contains(80)
                          ? AppColors.checkedDark
                          : AppColors.outlineDark,
                      width: 2.5,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    backgroundColor: AppColors.backgroundDark,
                    label: const SizedBox(
                      height: 30,
                      width: 130,
                      child: Center(
                        child: Text(
                          'Crime',
                          style: TextStyle(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ActionChip(
                    onPressed: () {
                      final newState = List<int>.from(state.genres);
                      state.genres.contains(99)
                          ? newState.remove(99)
                          : newState.add(99);
                      final genresSelectCubit =
                          BlocProvider.of<GenresSelectCubit>(context);
                      genresSelectCubit.changeGenres(newState);
                    },
                    side: BorderSide(
                      color: state.genres.contains(99)
                          ? AppColors.checkedDark
                          : AppColors.outlineDark,
                      width: 2.5,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    backgroundColor: AppColors.backgroundDark,
                    label: const SizedBox(
                      height: 30,
                      width: 130,
                      child: Center(
                        child: Text(
                          'Documentary',
                          style: TextStyle(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ActionChip(
                    onPressed: () {
                      final newState = List<int>.from(state.genres);
                      state.genres.contains(18)
                          ? newState.remove(18)
                          : newState.add(18);
                      final genresSelectCubit =
                          BlocProvider.of<GenresSelectCubit>(context);
                      genresSelectCubit.changeGenres(newState);
                    },
                    side: BorderSide(
                      color: state.genres.contains(18)
                          ? AppColors.checkedDark
                          : AppColors.outlineDark,
                      width: 2.5,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    backgroundColor: AppColors.backgroundDark,
                    label: const SizedBox(
                      height: 30,
                      width: 130,
                      child: Center(
                        child: Text(
                          'Drama',
                          style: TextStyle(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ActionChip(
                    onPressed: () {
                      final newState = List<int>.from(state.genres);
                      state.genres.contains(10751)
                          ? newState.remove(10751)
                          : newState.add(10751);
                      final genresSelectCubit =
                          BlocProvider.of<GenresSelectCubit>(context);
                      genresSelectCubit.changeGenres(newState);
                    },
                    side: BorderSide(
                      color: state.genres.contains(10751)
                          ? AppColors.checkedDark
                          : AppColors.outlineDark,
                      width: 2.5,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    backgroundColor: AppColors.backgroundDark,
                    label: const SizedBox(
                      height: 30,
                      width: 130,
                      child: Center(
                        child: Text(
                          'Family',
                          style: TextStyle(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ActionChip(
                    onPressed: () {
                      final newState = List<int>.from(state.genres);
                      state.genres.contains(14)
                          ? newState.remove(14)
                          : newState.add(14);
                      final genresSelectCubit =
                          BlocProvider.of<GenresSelectCubit>(context);
                      genresSelectCubit.changeGenres(newState);
                    },
                    side: BorderSide(
                      color: state.genres.contains(14)
                          ? AppColors.checkedDark
                          : AppColors.outlineDark,
                      width: 2.5,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    backgroundColor: AppColors.backgroundDark,
                    label: const SizedBox(
                      height: 30,
                      width: 130,
                      child: Center(
                        child: Text(
                          'Fantasy',
                          style: TextStyle(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ActionChip(
                    onPressed: () {
                      final newState = List<int>.from(state.genres);
                      state.genres.contains(36)
                          ? newState.remove(36)
                          : newState.add(36);
                      final genresSelectCubit =
                          BlocProvider.of<GenresSelectCubit>(context);
                      genresSelectCubit.changeGenres(newState);
                    },
                    side: BorderSide(
                      color: state.genres.contains(36)
                          ? AppColors.checkedDark
                          : AppColors.outlineDark,
                      width: 2.5,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    backgroundColor: AppColors.backgroundDark,
                    label: const SizedBox(
                      height: 30,
                      width: 130,
                      child: Center(
                        child: Text(
                          'History',
                          style: TextStyle(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ActionChip(
                    onPressed: () {
                      final newState = List<int>.from(state.genres);
                      state.genres.contains(27)
                          ? newState.remove(27)
                          : newState.add(27);
                      final genresSelectCubit =
                          BlocProvider.of<GenresSelectCubit>(context);
                      genresSelectCubit.changeGenres(newState);
                    },
                    side: BorderSide(
                      color: state.genres.contains(27)
                          ? AppColors.checkedDark
                          : AppColors.outlineDark,
                      width: 2.5,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    backgroundColor: AppColors.backgroundDark,
                    label: const SizedBox(
                      height: 30,
                      width: 130,
                      child: Center(
                        child: Text(
                          'Horror',
                          style: TextStyle(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ActionChip(
                    onPressed: () {
                      final newState = List<int>.from(state.genres);
                      state.genres.contains(10402)
                          ? newState.remove(10402)
                          : newState.add(10402);
                      final genresSelectCubit =
                          BlocProvider.of<GenresSelectCubit>(context);
                      genresSelectCubit.changeGenres(newState);
                    },
                    side: BorderSide(
                      color: state.genres.contains(10402)
                          ? AppColors.checkedDark
                          : AppColors.outlineDark,
                      width: 2.5,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    backgroundColor: AppColors.backgroundDark,
                    label: const SizedBox(
                      height: 30,
                      width: 130,
                      child: Center(
                        child: Text(
                          'Music',
                          style: TextStyle(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ActionChip(
                    onPressed: () {
                      final newState = List<int>.from(state.genres);
                      state.genres.contains(9648)
                          ? newState.remove(9648)
                          : newState.add(9648);
                      final genresSelectCubit =
                          BlocProvider.of<GenresSelectCubit>(context);
                      genresSelectCubit.changeGenres(newState);
                    },
                    side: BorderSide(
                      color: state.genres.contains(9648)
                          ? AppColors.checkedDark
                          : AppColors.outlineDark,
                      width: 2.5,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    backgroundColor: AppColors.backgroundDark,
                    label: const SizedBox(
                      height: 30,
                      width: 130,
                      child: Center(
                        child: Text(
                          'Mystery',
                          style: TextStyle(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ActionChip(
                    onPressed: () {
                      final newState = List<int>.from(state.genres);
                      state.genres.contains(10749)
                          ? newState.remove(10749)
                          : newState.add(10749);
                      final genresSelectCubit =
                          BlocProvider.of<GenresSelectCubit>(context);
                      genresSelectCubit.changeGenres(newState);
                    },
                    side: BorderSide(
                      color: state.genres.contains(10749)
                          ? AppColors.checkedDark
                          : AppColors.outlineDark,
                      width: 2.5,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    backgroundColor: AppColors.backgroundDark,
                    label: const SizedBox(
                      height: 30,
                      width: 130,
                      child: Center(
                        child: Text(
                          'Romance',
                          style: TextStyle(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ActionChip(
                    onPressed: () {
                      final newState = List<int>.from(state.genres);
                      state.genres.contains(878)
                          ? newState.remove(878)
                          : newState.add(878);
                      final genresSelectCubit =
                          BlocProvider.of<GenresSelectCubit>(context);
                      genresSelectCubit.changeGenres(newState);
                    },
                    side: BorderSide(
                      color: state.genres.contains(878)
                          ? AppColors.checkedDark
                          : AppColors.outlineDark,
                      width: 2.5,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    backgroundColor: AppColors.backgroundDark,
                    label: const SizedBox(
                      height: 30,
                      width: 130,
                      child: Center(
                        child: Text(
                          'Sci-Fi',
                          style: TextStyle(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ActionChip(
                    onPressed: () {
                      final newState = List<int>.from(state.genres);
                      state.genres.contains(53)
                          ? newState.remove(53)
                          : newState.add(53);
                      final genresSelectCubit =
                          BlocProvider.of<GenresSelectCubit>(context);
                      genresSelectCubit.changeGenres(newState);
                    },
                    side: BorderSide(
                      color: state.genres.contains(53)
                          ? AppColors.checkedDark
                          : AppColors.outlineDark,
                      width: 2.5,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    backgroundColor: AppColors.backgroundDark,
                    label: const SizedBox(
                      height: 30,
                      width: 130,
                      child: Center(
                        child: Text(
                          'Thriller',
                          style: TextStyle(
                            color: AppColors.textDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
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
                    final newState = List<int>.from(state.genres);
                    state.genres.contains(10752)
                        ? newState.remove(10752)
                        : newState.add(10752);
                    final genresSelectCubit =
                        BlocProvider.of<GenresSelectCubit>(context);
                    genresSelectCubit.changeGenres(newState);
                  },
                  side: BorderSide(
                    color: state.genres.contains(10752)
                        ? AppColors.checkedDark
                        : AppColors.outlineDark,
                    width: 2.5,
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                  backgroundColor: AppColors.backgroundDark,
                  label: const SizedBox(
                    height: 30,
                    width: 130,
                    child: Center(
                      child: Text(
                        'War',
                        style: TextStyle(
                          color: AppColors.textDark,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                ActionChip(
                  onPressed: () {
                    final newState = List<int>.from(state.genres);
                    state.genres.contains(37)
                        ? newState.remove(37)
                        : newState.add(37);
                    final genresSelectCubit =
                        BlocProvider.of<GenresSelectCubit>(context);
                    genresSelectCubit.changeGenres(newState);
                  },
                  side: BorderSide(
                    color: state.genres.contains(37)
                        ? AppColors.checkedDark
                        : AppColors.outlineDark,
                    width: 2.5,
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                  backgroundColor: AppColors.backgroundDark,
                  label: const SizedBox(
                    height: 30,
                    width: 130,
                    child: Center(
                      child: Text(
                        'Western',
                        style: TextStyle(
                          color: AppColors.textDark,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
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
