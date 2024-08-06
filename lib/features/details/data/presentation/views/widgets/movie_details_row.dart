
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:movie_zone/features/details/data/presentation/views/widgets/movie_details_item.dart';

class MovieDetailsRowWidget extends StatelessWidget {
  const MovieDetailsRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MovieDetailsRowItem(
            icon: IconlyLight.calendar,
            text: '2021',
          ),
          MovieDetailsRowItem(
            icon: Icons.timer_outlined,
            text: '148 Minutes',
          ),
          MovieDetailsRowItem(
            icon: IconlyLight.ticket,
            text: 'Action',
            isLast: true,
          ),
        ],
      ),
    );
  }
}
