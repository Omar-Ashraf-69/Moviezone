import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_zone/core/utils/service_locator.dart';
import 'package:movie_zone/features/home/data/repos/home_repo_implementation.dart';
import 'package:movie_zone/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:movie_zone/features/home/presentation/managers/home_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = '/home_view';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(
        getIt<HomeRepoImpl>(),
      )..getDiscoryMovies(),
      child: const Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}
