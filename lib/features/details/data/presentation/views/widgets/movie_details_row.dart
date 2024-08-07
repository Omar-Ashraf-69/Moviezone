import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:movie_zone/features/details/data/presentation/views/widgets/movie_details_item.dart';
import 'package:movie_zone/features/home/data/models/movie.dart';
import 'package:movie_zone/features/home/data/models/movie_model.dart';

class MovieDetailsRowWidget extends StatelessWidget {
  const MovieDetailsRowWidget({
    super.key,
    required this.movie,
  });
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MovieDetailsRowItem(
            icon: IconlyLight.calendar,
            text: movie.releaseDate!.substring(0, 4),
          ),
          const MovieDetailsRowItem(
            icon: Icons.timer_outlined,
            text: '148 Minutes',
          ),
          const MovieDetailsRowItem(
            icon: IconlyLight.ticket,
            text: 'Action',
            isLast: true,
          ),
        ],
      ),
    );
  }
}
