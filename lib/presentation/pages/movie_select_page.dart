import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_picker_app_flutter/constants/app_colors.dart';

class MovieSelectPage extends StatelessWidget {
  const MovieSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'What do you want to watch today?',
            style: TextStyle(color: AppColors.textDark),
          ),
          const Text(
            'Choose platforms',
            style: TextStyle(
                color: AppColors.textDark, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ActionChip(
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.disneyPlus,
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
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.hboMax,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ActionChip(
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.netflix,
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
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.primeVideo,
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
          const Text(
            'Choose genres',
            style: TextStyle(
                color: AppColors.textDark, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ActionChip(
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.outlineDark,
                  width: 2.5,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.outlineDark,
                  width: 2.5,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ActionChip(
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.outlineDark,
                  width: 2.5,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.outlineDark,
                  width: 2.5,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ActionChip(
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.outlineDark,
                  width: 2.5,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.outlineDark,
                  width: 2.5,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ActionChip(
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.outlineDark,
                  width: 2.5,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.outlineDark,
                  width: 2.5,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ActionChip(
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.outlineDark,
                  width: 2.5,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.outlineDark,
                  width: 2.5,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ActionChip(
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.outlineDark,
                  width: 2.5,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.outlineDark,
                  width: 2.5,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ActionChip(
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.outlineDark,
                  width: 2.5,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.outlineDark,
                  width: 2.5,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ActionChip(
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.outlineDark,
                  width: 2.5,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.outlineDark,
                  width: 2.5,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ActionChip(
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.outlineDark,
                  width: 2.5,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
                onPressed: () {},
                side: const BorderSide(
                  color: AppColors.outlineDark,
                  width: 2.5,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
          FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.buttonDark,
              shape: const CircleBorder(),
            ),
            child: const Padding(
              padding: EdgeInsets.all(14),
              child: Icon(Icons.arrow_forward, color: AppColors.backgroundDark),
            ),
          ),
        ]),
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
