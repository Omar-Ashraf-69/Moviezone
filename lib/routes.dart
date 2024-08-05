import 'package:flutter/material.dart';
import 'package:movie_zone/features/home/presentation/views/home_view.dart';
import 'package:movie_zone/features/splash/presentation/views/splash_view.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const SplashView(),
  HomeView.routeName: (context) => const HomeView(),
};
