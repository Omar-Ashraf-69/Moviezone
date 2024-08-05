
  import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

List<BottomNavigationBarItem> get items => const [
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
      ];