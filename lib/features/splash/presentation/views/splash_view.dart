import 'package:flutter/material.dart';
import 'package:movie_zone/core/utils/assets.dart';
import 'package:movie_zone/core/utils/size_config.dart';
import 'package:movie_zone/features/home/presentation/views/home_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, HomeView.routeName);
    });
    SizeConfig.init(context);
    return Scaffold(
      body: Center(
        child: Image.asset(
          Assets.imagesPopcorn,
        ),
      ),
    );
  }
}
