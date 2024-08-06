
import 'package:flutter/material.dart';
import 'package:movie_zone/core/utils/colors.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
          color: blueColor,
        ),
      );
  }
}
