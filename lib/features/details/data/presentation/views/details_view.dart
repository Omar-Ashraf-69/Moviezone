import 'package:flutter/material.dart';
import 'package:movie_zone/features/details/data/presentation/views/widgets/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});
  static const String routeName = '/details_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DetailsViewBody(),
    );
  }
}