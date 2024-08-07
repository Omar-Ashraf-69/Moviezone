import 'package:flutter/material.dart';
import 'package:movie_zone/core/utils/assets.dart';
import 'package:movie_zone/core/utils/size_config.dart';
import 'package:movie_zone/features/layout/presentation/views/layout_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    Future.delayed(const Duration(seconds: 2), () {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, LayoutView.routeName);
    });
    // return const SplashViewBody();
    return Scaffold(
      body: Center(
        child: Image.asset(
          Assets.imagesPopcorn,
        ),
      ),
    );
  }
}
