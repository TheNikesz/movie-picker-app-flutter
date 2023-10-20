import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:movie_picker_app_flutter/constants/app_colors.dart';
import 'package:movie_picker_app_flutter/presentation/cubits/genres_select_cubit.dart';
import 'package:movie_picker_app_flutter/presentation/cubits/platforms_select_cubit.dart';
import 'package:movie_picker_app_flutter/presentation/pages/movie_select_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.ralewayTextTheme(),
        scaffoldBackgroundColor: AppColors.backgroundDark,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => GenresSelectCubit(genres: []),
          ),
          BlocProvider(
            create: (context) => PlatformsSelectCubit(platforms: []),
          ),
        ],
        child: const MovieSelectPage(),
      ),
    );
  }
}
