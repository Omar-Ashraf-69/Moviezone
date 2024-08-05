import 'package:flutter/material.dart';
import 'package:movie_zone/features/layout/presentation/views/layout_view.dart';
import 'package:movie_zone/features/home/presentation/views/home_view.dart';
import 'package:movie_zone/features/search/presentation/views/search_view.dart';
import 'package:movie_zone/features/splash/presentation/views/splash_view.dart';
import 'package:movie_zone/features/watch_list/presentation/views/watch_list_view.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const SplashView(),
  LayoutView.routeName: (context) => const LayoutView(),
  HomeView.routeName: (context) => const HomeView(),
  WatchListView.routeName: (context) => const WatchListView(),
  SearchView.routeName: (context) => const SearchView(),

};
