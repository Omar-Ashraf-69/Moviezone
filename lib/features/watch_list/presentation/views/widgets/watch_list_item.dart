import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/assets.dart';
import 'package:movie_zone/features/watch_list/presentation/views/widgets/icon_text_row.dart';
class WatchListItem extends StatelessWidget {
  const WatchListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.imagesMovieProshor,
        ),
        const SizedBox(
          width: 12,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Spider-Man: No Way H...',
              style: AppStyles.styleRegular16,
            ),
            SizedBox(
              height: 12,
            ),
            IconTextRow(
              icon: Icons.star_outline,
              text: '8.7',
              isRating: true,
            ),
            IconTextRow(
              icon: IconlyLight.ticket,
              text: 'Action',
            ),
            IconTextRow(
              icon: IconlyLight.calendar,
              text: '2019',
            ),
            IconTextRow(
              icon: IconlyLight.time_circle,
              text: '149 mintues',
            ),
          ],
        ),
      ],
    );
  }
}