
import 'package:flutter/material.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/colors.dart';

class IconTextRow extends StatelessWidget {
  const IconTextRow({
    super.key,
    required this.icon,
    required this.text,
    this.isRating = false,
  });
  final IconData icon;
  final String text;
  final bool isRating;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: isRating ? orangeColor : Colors.white,
            size: 16,
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            text,
            style: isRating
                ? AppStyles.styleSemiBold12
                : AppStyles.styleSemiBold12.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
