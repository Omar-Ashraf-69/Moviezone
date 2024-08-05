
import 'package:flutter/material.dart';
import 'package:movie_zone/core/utils/assets.dart';

class MoviesGridView extends StatelessWidget {
  const MoviesGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          itemCount: 10,
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 1.25 / 1.8,
          ),
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                Assets.imagesMovie,
                fit: BoxFit.cover,
              ),
            );
          }),
    );
  }
}
