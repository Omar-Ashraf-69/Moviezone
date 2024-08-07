import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/size_config.dart';
import 'package:movie_zone/features/home/data/models/movie.dart';
import 'package:movie_zone/features/watch_list/presentation/views/widgets/icon_text_row.dart';

class MovieDetailsWidget extends StatelessWidget {
  const MovieDetailsWidget({
    super.key,
    required this.movie,
  });
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: SizeConfig.screenWidth * 0.27,
          height: SizeConfig.screenHeight * 0.15,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: FancyShimmerImage(
              imageUrl: "https://image.tmdb.org/t/p/w500${movie.image}",
              errorWidget: const Icon(
                Icons.error,
              ),
              boxFit: BoxFit.cover,
            ),
            //child: Image.asset(Assets.imagesMovieProshor),
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
              child: Text(
                movie.title ?? "none",
                style: AppStyles.styleRegular16,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            IconTextRow(
              icon: Icons.star_outline,
              text: movie.voteAverage?.toStringAsFixed(1) ?? '0.0',
              isRating: true,
            ),
            const IconTextRow(
              icon: IconlyLight.ticket,
              text: 'Action',
            ),
            IconTextRow(
              icon: IconlyLight.calendar,
              text: movie.releaseDate?.substring(0, 4) ?? '2022',
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
