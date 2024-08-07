import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_zone/core/utils/service_locator.dart';
import 'package:movie_zone/features/home/data/repos/home_repo_implementation.dart';
import 'package:movie_zone/features/home/presentation/managers/discovery_cubit/discovery_cubit.dart';
import 'package:movie_zone/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  
  static const routeName = '/home_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => DiscoveryCubit(
          getIt<HomeRepoImpl>(),
        )..getDiscovery(),
        child: const HomeViewBody(),
      ),
    );
  }
}
