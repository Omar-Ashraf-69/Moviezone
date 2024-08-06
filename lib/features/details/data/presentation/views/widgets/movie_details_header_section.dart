
import 'package:flutter/material.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/assets.dart';
import 'package:movie_zone/core/utils/colors.dart';
import 'package:movie_zone/core/utils/size_config.dart';

class MovieDetailsHeaderSection extends StatelessWidget {
  const MovieDetailsHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          Assets.imagesPanner,
          width: SizeConfig.screenWidth,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: SizeConfig.screenWidth,
            height: 100,
            decoration: BoxDecoration(
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
            padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.star_outline,
                  color: orangeColor,
                  size: 16,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  '9.4',
                  style: AppStyles.styleSemiBold12,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -SizeConfig.screenHeight * 0.05,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  Assets.imagesMovieProshor,
                ),
                const SizedBox(
                  width: 14,
                ),
                SizedBox(
                  width: SizeConfig.screenWidth * 0.49,
                  child: const Text(
                    "Spiderman No Way Home",
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