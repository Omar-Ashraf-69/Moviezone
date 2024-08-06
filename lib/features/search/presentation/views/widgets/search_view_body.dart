import 'package:flutter/material.dart';
import 'package:movie_zone/core/widgets/custom_app_bar.dart';
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
              CustomAppBar(
                label: "Search",
                icon: Icons.info_outline,
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
