import 'package:flutter/material.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/widgets/custom_text_field.dart';
import 'package:movie_zone/features/home/presentation/views/widgets/movie_list.dart';
import 'package:movie_zone/features/home/presentation/views/widgets/movies_card_list.dart';
import 'package:movie_zone/features/home/presentation/views/widgets/movies_grid_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 18.0, right: 18, top: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What do you want to watch?',
                style: AppStyles.styleSemiBold18,
              ),
              SizedBox(height: 20),
              CustomTextField(),
              SizedBox(height: 20),
              MoviesCardList(),
              SizedBox(
                height: 40,
              ),
              MoviesCategorySection(),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class MoviesCategorySection extends StatelessWidget {
  const MoviesCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MovieList(),
          SizedBox(
            height: 20,
          ),
          MoviesGridView(),
        ],
      ),
    );
  }
}
