import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:movie_zone/core/constants/cons.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/size_config.dart';
import 'package:movie_zone/features/home/data/models/movie_model.dart';
import 'package:movie_zone/features/search/presentation/managers/cubit/search_cubit.dart';
import 'package:movie_zone/features/watch_list/presentation/views/widgets/icon_text_row.dart';

class SearchedMovieDetails extends StatelessWidget {
  const SearchedMovieDetails({
    super.key,
    required this.movie,
    required this.index,
  });
  final MovieModel movie;
  final int index;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return Row(
          children: [
            SizedBox(
              width: SizeConfig.screenWidth * 0.27,
              height: SizeConfig.screenHeight * 0.15,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: FancyShimmerImage(
                  imageUrl:
                      "$imageBaseUrl${movie.results?[index].image}",
                  errorWidget: const Icon(
                    Icons.error,
                  ),
                  boxFit: BoxFit.cover,
                ),
              ),
            ),
            // Image.asset(
            //  Assets.imagesMovieProshor,
            //),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: SizeConfig.screenWidth * 0.47,
                  child: Text(
                    movie.results![index].title!,
                    style: AppStyles.styleRegular16,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                IconTextRow(
                  icon: Icons.star_outline,
                  text: movie.results?[index].voteAverage?.toStringAsFixed(1) ??
                      '0.0',
                  isRating: true,
                ),
                const IconTextRow(
                  icon: IconlyLight.ticket,
                  text: 'Action',
                ),
                IconTextRow(
                  icon: IconlyLight.calendar,
                  text: movie.results?[index].releaseDate?.substring(0, 4) ??
                      '2022',
                ),
                const IconTextRow(
                  icon: IconlyLight.time_circle,
                  text: '149 mintues',
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
