import 'package:flutter/material.dart';
import 'package:movie_zone/core/utils/colors.dart';
import 'package:movie_zone/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moviezone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Poppins',
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      initialRoute: '/',
      routes: routes,
    );
  }
}
