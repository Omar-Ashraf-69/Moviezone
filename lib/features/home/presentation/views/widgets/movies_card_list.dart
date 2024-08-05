
import 'package:flutter/material.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/assets.dart';
import 'package:movie_zone/core/utils/colors.dart';
import 'package:movie_zone/core/utils/size_config.dart';

class MoviesCardList extends StatelessWidget {
  const MoviesCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight * 0.3,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.27,
                child: Image.asset(
                  Assets.imagesMovie1,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 15,
                top: SizeConfig.screenHeight * 0.17,
                child: SizedBox(
                  height: 105,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      // Bottom layer with stroke
                      Text(
                        '${index + 1}',
                        style: AppStyles.styleSemiBold96.copyWith(
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 2
                            ..color = blueColor,
                        ),
                      ),
                      // Top layer with fill color
                      Text(
                        '${index + 1}',
                        style: AppStyles.styleSemiBold96,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 20);
        },
      ),
    );
  }
}

