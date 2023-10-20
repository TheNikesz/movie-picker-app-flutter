import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_picker_app_flutter/constants/app_colors.dart';
import 'package:movie_picker_app_flutter/presentation/cubits/genres_select_cubit.dart';
import 'package:movie_picker_app_flutter/presentation/cubits/movie_cubit.dart';
import 'package:movie_picker_app_flutter/presentation/cubits/platforms_select_cubit.dart';
import 'package:movie_picker_app_flutter/presentation/widgets/genres_list.dart';
import 'package:movie_picker_app_flutter/presentation/widgets/platforms_list.dart';

class MovieSelectPage extends StatelessWidget {
  const MovieSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Padding(
              padding: EdgeInsets.only(top: 40, bottom: 6),
              child: Text(
                'What do you want to watch today?',
                style: TextStyle(
                  color: AppColors.textDark,
                  fontSize: 18,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: Icon(
                Icons.movie,
                color: AppColors.textDark,
              ),
            ),
            const Text(
              'Choose platforms',
              style: TextStyle(
                color: AppColors.textDark,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12, bottom: 24),
              child: PlatformsList(),
            ),
            const Text(
              'Choose genres',
              style: TextStyle(
                color: AppColors.textDark,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12, bottom: 24),
              child: GenresList(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: BlocBuilder<PlatformsSelectCubit, PlatformsSelectState>(
                builder: (context, platformsState) {
                  return BlocBuilder<GenresSelectCubit, GenresSelectState>(
                    builder: (context, genresState) {
                      return FilledButton(
                        onPressed: () {
                          final movieCubit =
                              BlocProvider.of<MovieCubit>(context);
                          movieCubit.getMovies(
                              platformsState.platforms, genresState.genres);
                        },
                        style: FilledButton.styleFrom(
                          backgroundColor: AppColors.buttonDark,
                          shape: const CircleBorder(),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(14),
                          child: Icon(Icons.arrow_forward,
                              color: AppColors.backgroundDark),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 14, left: 10, right: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.containerDark,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: BottomAppBar(
              elevation: 0,
              shape: const AutomaticNotchedShape(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: AppColors.containerDark,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: SvgPicture.asset(
                      'assets/tmdb.svg',
                    ),
                  ),
                  const SizedBox(
                    width: 250,
                    child: Text(
                      'This product uses the TMDB API but is not endorsed or certified by TMDB.',
                      style: TextStyle(color: AppColors.textDark),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
