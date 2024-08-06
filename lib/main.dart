import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_zone/core/utils/service_locator.dart';
import 'package:movie_zone/core/widgets/theme.dart';
import 'package:movie_zone/features/home/data/repos/home_repo_implementation.dart';
import 'package:movie_zone/features/home/presentation/managers/home_cubit.dart';
import 'package:movie_zone/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(
        getIt<HomeRepoImpl>()..getDiscover(),
      ),
      child: MaterialApp(
        title: 'Moviezone',
        debugShowCheckedModeBanner: false,
        theme: theme(context),
        initialRoute: '/',
        routes: routes,
      ),
    );
  }
}
