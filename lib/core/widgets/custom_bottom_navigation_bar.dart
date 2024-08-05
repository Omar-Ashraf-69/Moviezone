
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

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
      child: SizedBox(
        height: 75,
        child: BottomNavigationBar(
          backgroundColor: kPrimaryColor,
          selectedItemColor: blueColor,
          unselectedItemColor: mediumGreyColor,
          selectedLabelStyle: AppStyles.styleRegular12,
          unselectedLabelStyle: AppStyles.styleRegular12,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 6.0),
                child: Icon(IconlyLight.home),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 6.0),
                child: Icon(IconlyLight.search),
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 6.0),
                child: Icon(IconlyLight.bookmark),
              ),
              label: 'Watch list',
            ),
          ],
        ),
      ),
    );
  }
}