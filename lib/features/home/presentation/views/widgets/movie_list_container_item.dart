import 'package:flutter/material.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/colors.dart';

class MovieListContainerItem extends StatelessWidget {
  const MovieListContainerItem({
    super.key,
    this.isSelected = false,
    required this.label,
  });
  final bool isSelected;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: UnderlineTabIndicator(
        borderRadius: BorderRadius.circular(18),
        borderSide: isSelected
            ? const BorderSide(color: darkGreyColor, width: 4)
            : BorderSide.none,
      ),
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        label,
        style: !isSelected
            ? AppStyles.styleSemiMedium14.copyWith(
                fontWeight: FontWeight.w400,
              )
            : AppStyles.styleSemiMedium14,
      ),
    );
  }
}
