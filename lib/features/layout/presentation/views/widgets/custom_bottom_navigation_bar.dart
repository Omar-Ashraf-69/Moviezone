import 'package:flutter/material.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/colors.dart';
import 'package:movie_zone/features/layout/data/models/bottom_navigation_bar_items_list.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {super.key, this.onTap, required this.currentIndex});
  final void Function(int)? onTap;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: blueColor, // Color of the top border
            width: 1.5, // Thickness of the top border
          ),
        ),
      ),
      padding: const EdgeInsets.only(top: 4),
      child: BottomNavigationBar(
        backgroundColor: kPrimaryColor,
        selectedItemColor: blueColor,
        unselectedItemColor: mediumGreyColor,
        selectedLabelStyle: AppStyles.styleRegular12,
        unselectedLabelStyle: AppStyles.styleRegular12,
        currentIndex: currentIndex,
        onTap: onTap,
        items: items,
      ),
    );
  }
}
