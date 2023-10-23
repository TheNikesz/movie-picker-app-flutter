import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:movie_picker_app_flutter/constants/app_colors.dart';
import 'package:movie_picker_app_flutter/domain/models/movie.dart';
import 'package:movie_picker_app_flutter/presentation/cubits/genres_select_cubit.dart';
import 'package:movie_picker_app_flutter/presentation/cubits/platforms_select_cubit.dart';

class MovieDetailsPage extends StatelessWidget {
  final List<Movie> movies;

  const MovieDetailsPage({super.key, required this.movies});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 615,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  child: Image.network(
                    'https://image.tmdb.org/t/p/original${movies[0].posterPath}',
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const Center(
                        child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                                AppColors.textDark)),
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
                        movies[0].title,
                        style: const TextStyle(
                          color: AppColors.textDark,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Text(
                      'Original language: ${movies[0].originalLanguage}',
                      style: const TextStyle(
                        color: AppColors.textDark,
                      ),
                    ),
                    Text(
                      'Release date: ${DateFormat('dd MMMM yyyy', 'en_US').format(DateTime.parse(movies[0].releaseDate))}',
                      style: const TextStyle(
                        color: AppColors.textDark,
                      ),
                    ),
                    Text(
                      'Vote average: ${(movies[0].voteAverage * 10).toInt()}%',
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
                      movies[0].overview,
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
                          onPressed: () {},
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
            ],
          ),
        ),
      ),
    );
  }
}
