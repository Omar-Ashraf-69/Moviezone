import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:movie_zone/core/functions/save_bookmark.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/colors.dart';
import 'package:movie_zone/features/home/data/models/movie.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.label,
    required this.icon,
    this.onTap,
    this.movie,
  });
  final String label;
  final IconData icon;
  final void Function()? onTap;
  final Movie? movie;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onTap,
            child: const Icon(
              IconlyLight.arrow_left_2,
              color: seconderyWhiteColor,
              size: 20,
            ),
          ),
          Text(
            label,
            style: AppStyles.styleSemiBold16,
          ),
          movie != null
              ? SaveBookMark(
                  movie: movie!,
                )
              : Icon(icon, color: seconderyWhiteColor, size: 20),
        ],
      ),
    );
  }
}
