import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_picker_app_flutter/constants/app_colors.dart';
import 'package:movie_picker_app_flutter/presentation/cubits/genres_select_cubit.dart';
import 'package:movie_picker_app_flutter/presentation/cubits/movies_list_cubit.dart';
import 'package:movie_picker_app_flutter/presentation/cubits/platforms_select_cubit.dart';
import 'package:movie_picker_app_flutter/presentation/pages/movie_details_page.dart';
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
              padding: EdgeInsets.only(top: 80, bottom: 6),
              child: Text(
                'What do you want to watch today?',
                style: TextStyle(
                  color: AppColors.textDark,
                  fontSize: 18,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 36),
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
              padding: EdgeInsets.only(top: 18, bottom: 36),
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
              padding: EdgeInsets.only(top: 18, bottom: 36),
              child: GenresList(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 36),
              child: BlocBuilder<PlatformsSelectCubit, PlatformsSelectState>(
                builder: (context, platformsState) {
                  return BlocBuilder<GenresSelectCubit, GenresSelectState>(
                    builder: (context, genresState) {
                      return BlocListener<MoviesListCubit, MoviesListState>(
                        listener: (context, moviesListState) {
                          if (moviesListState is MoviesListSuccess) {
                            final genresSelectCubit =
                                BlocProvider.of<GenresSelectCubit>(context);
                            genresSelectCubit.changeGenres([]);
                            final platformsSelectCubit =
                                BlocProvider.of<PlatformsSelectCubit>(context);
                            platformsSelectCubit.changePlatforms([]);

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MovieDetailsPage(
                                    movies: moviesListState.movies),
                              ),
                            );
                          }
                        },
                        child: FilledButton(
                          onPressed: () {
                            final moviesListCubit =
                                BlocProvider.of<MoviesListCubit>(context);
                            moviesListCubit.getMovies(
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
