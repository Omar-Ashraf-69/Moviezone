
  import 'package:flutter/material.dart';
import 'package:movie_zone/core/utils/colors.dart';

ThemeData theme(BuildContext context) {
    return ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      );
  }