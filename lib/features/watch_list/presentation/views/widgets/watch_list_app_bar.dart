import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/colors.dart';

class WatchListAppBar extends StatelessWidget {
  const WatchListAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 32,
      child: Row(
        children: [
          Icon(
            IconlyLight.arrow_left_2,
            color: seconderyWhiteColor,
            size: 20,
          ),
          Spacer(
            flex: 4,
          ),
          Text(
            'Watch List',
            style: AppStyles.styleSemiBold16,
          ),
          Spacer(
            flex: 5,
          ),
        ],
      ),
    );
  }
}
