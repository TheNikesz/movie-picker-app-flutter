import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:movie_picker_app_flutter/constants/app_colors.dart';
import 'package:movie_picker_app_flutter/domain/models/movie.dart';
import 'package:movie_picker_app_flutter/presentation/cubits/movie_cubit.dart';

class MovieDetailsPage extends StatelessWidget {
  final List<Movie> movies;

  const MovieDetailsPage({super.key, required this.movies});
  @override
  Widget build(BuildContext context) {
    final movieCubit = BlocProvider.of<MovieCubit>(context);
    movieCubit.getMovie(movies: movies);

    return BlocBuilder<MovieCubit, MovieState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  if (state is MovieSuccess) ...[
                    SizedBox(
                      height: 615,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                        child: Image.network(
                          'https://image.tmdb.org/t/p/original${state.movie.posterPath}',
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) return child;
                            return const Center(
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    AppColors.textDark),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 12,
                        left: 30,
                        right: 30,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              state.movie.title,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: AppColors.textDark,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          Text(
                            'Original language: ${state.movie.originalLanguage}',
                            style: const TextStyle(
                              color: AppColors.textDark,
                            ),
                          ),
                          Text(
                            'Release date: ${DateFormat('dd MMMM yyyy', 'en_US').format(DateTime.parse(state.movie.releaseDate))}',
                            style: const TextStyle(
                              color: AppColors.textDark,
                            ),
                          ),
                          Text(
                            'Vote average: ${(state.movie.voteAverage * 10).toInt()}%',
                            style: const TextStyle(
                              color: AppColors.textDark,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 4),
                            child: Divider(
                              color: AppColors.containerDark,
                              thickness: 4,
                              indent: 150,
                              endIndent: 150,
                            ),
                          ),
                          Text(
                            state.movie.overview,
                            style: const TextStyle(
                              color: AppColors.textDark,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton.icon(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Text(
                                  'Search again',
                                  style: TextStyle(
                                    color: AppColors.textDark,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                label: const Icon(
                                  Icons.chevron_right,
                                  color: AppColors.textDark,
                                ),
                              ),
                              TextButton.icon(
                                onPressed: () {
                                  final movieCubit =
                                      BlocProvider.of<MovieCubit>(context);
                                  movieCubit.getMovie(movies: movies);
                                },
                                icon: const Text(
                                  'Someting else',
                                  style: TextStyle(
                                    color: AppColors.textDark,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                label: const Icon(
                                  Icons.chevron_right,
                                  color: AppColors.textDark,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ] else if (state is MovieLoading) ...[
                    const CircularProgressIndicator(
                      valueColor:
                          AlwaysStoppedAnimation<Color>(AppColors.textDark),
                    ),
                  ] else ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Icon(
                              Icons.error_outline,
                              size: 40,
                              color: AppColors.textDark,
                            ),
                          ),
                          const Text(
                            'Something went wrong while fetching the movie data. Please try again later.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.textDark,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          TextButton.icon(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.chevron_left,
                              color: AppColors.textDark,
                            ),
                            label: const Text(
                              'Go back',
                              style: TextStyle(
                                color: AppColors.textDark,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
