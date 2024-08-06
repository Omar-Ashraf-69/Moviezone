import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_zone/core/utils/service_locator.dart';
import 'package:movie_zone/features/search/data/repo/search_repo_impl.dart';
import 'package:movie_zone/features/search/presentation/managers/cubit/search_cubit.dart';
import 'package:movie_zone/features/search/presentation/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  static const routeName = '/search_view';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(
        getIt<SearchRepoImpl>(),
      ),
      child: const Scaffold(
        body: SearchViewBody(),
      ),
    );
  }
}
