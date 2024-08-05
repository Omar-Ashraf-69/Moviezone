import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.isEnabled = false,
  });
  final bool isEnabled;
  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: isEnabled,
      cursorColor: blueColor,
      decoration: InputDecoration(
        hintText: "Search",
        contentPadding: const EdgeInsets.symmetric(horizontal: 24),
        fillColor: darkGreyColor,
        filled: true,
        hintStyle: AppStyles.styleRegular14.copyWith(color: mediumGreyColor),
        border: CustomTextFieldBorder(),
        enabledBorder: CustomTextFieldBorder(),
        focusedBorder: CustomTextFieldBorder(),
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

  OutlineInputBorder CustomTextFieldBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide:
          const BorderSide(color: blueColor), // Set the border color to blue
    );
  }
}
