
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.label,
    required this.icon,
    this.onTap,
  });
  final String label;
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
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
          Icon(icon, color: seconderyWhiteColor, size: 20),
        ],
      ),
    );
  }
}
