import 'package:flutter/material.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/features/details/data/presentation/views/widgets/cast_widget.dart';
import 'package:movie_zone/features/details/data/presentation/views/widgets/review_widget.dart';
import 'package:movie_zone/features/home/data/models/movie.dart';
import 'package:movie_zone/features/home/data/models/movie_model.dart';

class MovieExtraInfoViewBody extends StatelessWidget {
  const MovieExtraInfoViewBody({
    super.key,
    required this.pageController,
    this.onPageChanged,
    required this.movie,
  });

  final Movie movie;
  final PageController pageController;
  final void Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: PageView(
      controller: pageController,
      onPageChanged: onPageChanged,
      children: [
        Text(
          movie.overview!,
          style: AppStyles.styleRegular12,
        ),
        ListView.separated(
          itemBuilder: (context, index) => const ReviewWidget(),
          separatorBuilder: (context, index) => const SizedBox(height: 24),
          itemCount: 2,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 24,
            ),
            itemBuilder: (context, index) => const CastWidget(),
            itemCount: 9,
          ),
        ),
      ],
    ));
  }
}
