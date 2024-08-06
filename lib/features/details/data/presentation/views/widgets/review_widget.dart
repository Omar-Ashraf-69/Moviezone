import 'package:flutter/material.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/assets.dart';
import 'package:movie_zone/core/utils/colors.dart';
import 'package:movie_zone/core/utils/size_config.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Image.asset(
                Assets.imagesEllipseSmall,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "6.3",
                style: AppStyles.styleMedium12.copyWith(
                  color: blueColor,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 18,
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Iqbal Shafiq Rozaan',
                  style: AppStyles.styleSemiMedium14,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government.",
                  style: AppStyles.styleRegular12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
