
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: false,
      decoration: InputDecoration(
        hintText: "Search",
        contentPadding: const EdgeInsets.symmetric(horizontal: 24),
        fillColor: darkGreyColor,
        filled: true,
        hintStyle:
            AppStyles.styleRegular14.copyWith(color: mediumGreyColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()..scale(-1.0, 1.0, 1.0),
            child: const Icon(
              IconlyLight.search,
              color: mediumGreyColor,
            ),
          ),
        ),
      ),
    );
  }
}
