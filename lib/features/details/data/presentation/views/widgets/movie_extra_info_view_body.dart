
import 'package:flutter/material.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/features/details/data/presentation/views/widgets/cast_widget.dart';
import 'package:movie_zone/features/details/data/presentation/views/widgets/review_widget.dart';

class MovieExtraInfoViewBody extends StatelessWidget {
  const MovieExtraInfoViewBody({
    super.key,
    required this.pageController, this.onPageChanged,
  });

  final PageController pageController;
  final void Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: PageView(
      controller: pageController,
      onPageChanged: onPageChanged,
      children: [
        const Text(
          'From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences.',
          style: AppStyles.styleRegular12,
        ),
        ListView.separated(
          itemBuilder: (context, index) => const ReviewWidget(),
          separatorBuilder: (context, index) =>
              const SizedBox(height: 24),
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
