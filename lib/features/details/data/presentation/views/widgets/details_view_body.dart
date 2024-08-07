import 'package:flutter/material.dart';
import 'package:movie_zone/core/utils/size_config.dart';
import 'package:movie_zone/core/widgets/custom_app_bar.dart';
import 'package:movie_zone/features/details/data/presentation/views/widgets/info_section.dart';
import 'package:movie_zone/features/details/data/presentation/views/widgets/movie_details_header_section.dart';
import 'package:movie_zone/features/details/data/presentation/views/widgets/movie_details_row.dart';
import 'package:movie_zone/features/home/data/models/movie.dart';
import 'package:movie_zone/features/home/data/models/movie_model.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 26.0, right: 26, top: 24),
              child: CustomAppBar(
                label: 'Details',
                icon: Icons.bookmark,
                movie: movie,
                onTap: () => Navigator.pop(context),
              ),
            ),
            const SizedBox(height: 24),
            MovieDetailsHeaderSection(
              movie: movie,
            ),
            SizedBox(height: SizeConfig.screenHeight * .08),
            MovieDetailsRowWidget(
              movie: movie,
            ),
            const SizedBox(height: 24),
            InfoSection(
              movie: movie,
            ),
          ],
        ),
      ),
    );
  }
}
