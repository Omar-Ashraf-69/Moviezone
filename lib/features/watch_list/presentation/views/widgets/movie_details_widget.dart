import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/assets.dart';
import 'package:movie_zone/core/utils/size_config.dart';
import 'package:movie_zone/features/watch_list/presentation/views/widgets/icon_text_row.dart';

class MovieDetailsWidget extends StatelessWidget {
  const MovieDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: SizeConfig.screenWidth * 0.28,
          height: SizeConfig.screenHeight * 0.15,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            // child: FancyShimmerImage(
            //   imageUrl:
            //       "https://image.tmdb.org/t/p/w500${movie.results?[index].image}",
            //   errorWidget: const Icon(
            //     Icons.error,
            //   ),
            //   boxFit: BoxFit.cover,
            // ),
            child: Image.asset(Assets.imagesMovieProshor),
          ),
        ),
        // Image.asset(
        //  Assets.imagesMovieProshor,
        //),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: SizeConfig.screenWidth * 0.5,
              child: const Text(
                "Star Wars: The Rise of Skywalker",
                style: AppStyles.styleRegular16,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const IconTextRow(
              icon: Icons.star_outline,
              text: '9.2',
              isRating: true,
            ),
            const IconTextRow(
              icon: IconlyLight.ticket,
              text: 'Action',
            ),
            const IconTextRow(
              icon: IconlyLight.calendar,
              text: '2022',
            ),
            const IconTextRow(
              icon: IconlyLight.time_circle,
              text: '149 mintues',
            ),
          ],
        ),
      ],
    );
  }
}
