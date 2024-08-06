import 'package:flutter/material.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/assets.dart';

class CastWidget extends StatelessWidget {
  const CastWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CastItem(),
          CastItem(),
        ],
      ),
    );
  }
}

class CastItem extends StatelessWidget {
  const CastItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Assets.imagesEllipse,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "Zendaya",
          style: AppStyles.styleSemiMedium14,
        ),
      ],
    );
  }
}
