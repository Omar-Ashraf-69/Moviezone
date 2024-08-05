import 'package:flutter/material.dart';
import 'package:movie_zone/features/home/presentation/views/home_view.dart';
import 'package:movie_zone/features/layout/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:movie_zone/features/watch_list/presentation/views/watch_list_view.dart';

class LayoutViewBody extends StatefulWidget {
  const LayoutViewBody({
    super.key,
  });
  @override
  State<LayoutViewBody> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutViewBody> {
  int currentIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (value) => setState(() => currentIndex = value),
        children: [
          const HomeView(),
          Container(),
          const WatchListView(),
        ],
      ),
      bottomNavigationBar:CustomBottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
        pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
        setState(() {
          currentIndex = index;
        });
      },
      ),
       
    );
  }
}
