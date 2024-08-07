import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_zone/core/utils/assets.dart';
import 'package:movie_zone/core/widgets/custom_app_bar.dart';
import 'package:movie_zone/core/widgets/custom_text_field.dart';
import 'package:movie_zone/features/search/presentation/managers/cubit/search_cubit.dart';
import 'package:movie_zone/features/search/presentation/views/widgets/searched_movies_list.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 26, right: 26, top: 24),
          child: Column(
            children: [
              const CustomAppBar(
                label: "Search",
                icon: Icons.info_outline,
              ),
              const SizedBox(height: 24),
              const CustomTextField(
                isEnabled: true,
              ),
              const SizedBox(height: 24),
              BlocBuilder<SearchCubit, SearchState>(
                builder: (context, state) {
                  return state is SearchSuccess
                      ? const SeachedMovieListView()
                      : Expanded(
                          child: Image.asset(
                            Assets.imagesSearchCantBeFound,
                          ),
                        );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
