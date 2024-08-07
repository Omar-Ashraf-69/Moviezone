import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:movie_zone/core/utils/service_locator.dart';
import 'package:movie_zone/core/widgets/theme.dart';
import 'package:movie_zone/features/home/data/models/movie.dart';
import 'package:movie_zone/features/home/data/repos/home_repo_implementation.dart';
import 'package:movie_zone/features/home/presentation/managers/discovery_cubit/discovery_cubit.dart';
import 'package:movie_zone/features/home/presentation/managers/home_cubit.dart';
import 'package:movie_zone/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(MovieAdapter());
  await Hive.openBox<Movie>('movies');
  setupGetIt();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      const MyApp(),
      // DevicePreview(
      //   enabled: !kReleaseMode,
      //   builder: (context) => const MyApp(), // Wrap your app
      // ),
    );
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(
          create: (context) => HomeCubit(
            getIt<HomeRepoImpl>(),
          )..getNowPlaying(),
        ),
        BlocProvider<DiscoveryCubit>(
          create: (context) => DiscoveryCubit(
            getIt<HomeRepoImpl>(),
          )..getDiscovery(),
        ),
      ],
      child: MaterialApp(
        title: 'Moviezone',
        debugShowCheckedModeBanner: false,
        theme: theme(context),
        // locale: DevicePreview.locale(context),
        // builder: DevicePreview.appBuilder,
        initialRoute: '/',
        routes: routes,
      ),
    );
  }
}
