import 'package:flutter/material.dart';
import 'package:movie_zone/features/details/data/presentation/views/widgets/details_view_body.dart';
import 'package:movie_zone/features/home/data/models/movie_model.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});
  static const String routeName = '/details_view';

  @override
  Widget build(BuildContext context) {
    Movie movie = ModalRoute.of(context)!.settings.arguments as Movie;
    return  Scaffold(
      body: DetailsViewBody(
        movie: movie,
      ),
    );
  }
}