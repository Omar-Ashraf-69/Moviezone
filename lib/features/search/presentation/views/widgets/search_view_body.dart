import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/colors.dart';
import 'package:movie_zone/core/widgets/custom_text_field.dart';
import 'package:movie_zone/features/watch_list/presentation/views/widgets/watch_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 26, right: 26, top: 24),
          child: Column(
            children: [
              SizedBox(
                height: 32,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      IconlyLight.arrow_left_2,
                      color: seconderyWhiteColor,
                      size: 20,
                    ),
                    Text(
                      'Search',
                      style: AppStyles.styleSemiBold16,
                    ),
                    Icon(Icons.info_outline,
                        color: seconderyWhiteColor, size: 20),
                  ],
                ),
              ),
              SizedBox(height: 24),
              CustomTextField(
                isEnabled: true,
              ),
              SizedBox(height: 24),
              WatchListViewWidget(),
              // Expanded(child: Image.asset(Assets.imagesSearchCantBeFound)),
            ],
          ),
        ),
      ),
    );
  }
}
