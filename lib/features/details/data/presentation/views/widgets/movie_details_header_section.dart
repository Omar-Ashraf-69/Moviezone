import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/assets.dart';
import 'package:movie_zone/core/utils/colors.dart';
import 'package:movie_zone/core/utils/size_config.dart';
import 'package:movie_zone/features/home/data/models/movie_model.dart';

class MovieDetailsHeaderSection extends StatelessWidget {
  const MovieDetailsHeaderSection({
    super.key,
    required this.movie,
  });
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Image.asset(
        //   Assets.imagesPanner,
        //   width: SizeConfig.screenWidth,
        //   fit: BoxFit.cover,
        // ),
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
          child: FancyShimmerImage(
            imageUrl: "https://image.tmdb.org/t/p/w500${movie.posterPath}",
            errorWidget: const Icon(
              Icons.error,
            ),
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight * 0.27,
            boxFit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: SizeConfig.screenWidth,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 14,
          right: 18,
          child: Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 20, 22, 30),
                  Colors.transparent.withOpacity(0.1),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.star_outline,
                  color: orangeColor,
                  size: 16,
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  movie.voteAverage?.toStringAsFixed(1) ?? '0.0',
                  style: AppStyles.styleSemiBold12,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -SizeConfig.screenHeight * 0.07,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: FancyShimmerImage(
                    imageUrl: "https://image.tmdb.org/t/p/w500${movie.image}",
                    errorWidget: const Icon(
                      Icons.error,
                    ),
                    width: SizeConfig.screenWidth * 0.28,
                    height: SizeConfig.screenHeight * 0.16,
                    boxFit: BoxFit.cover,
                  ),
                ),
                // Image.asset(
                //   Assets.imagesMovieProshor,
                // ),
                const SizedBox(
                  width: 14,
                ),
                SizedBox(
                  width: SizeConfig.screenWidth * 0.49,
                  child: Text(
                    movie.originalTitle!,
                    style: AppStyles.styleSemiBold18,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
