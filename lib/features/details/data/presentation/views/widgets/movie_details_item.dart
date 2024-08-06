import 'package:flutter/material.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/colors.dart';

class MovieDetailsRowItem extends StatelessWidget {
  const MovieDetailsRowItem({
    super.key,
    required this.icon,
    required this.text,
    this.isLast = false,
  });
  final IconData icon;
  final String text;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16,
          color: greyColor,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          text,
          style: AppStyles.styleMedium12,
        ),
        isLast
            ? const SizedBox()
            : Row(
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 16,
                    width: 1.5,
                    color: greyColor,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                ],
              ),
      ],
    );
  }
}
