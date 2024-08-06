import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/colors.dart';
import 'package:movie_zone/core/utils/size_config.dart';
import 'package:movie_zone/core/widgets/custom_circular_progress.dart';
import 'package:movie_zone/features/details/data/presentation/views/details_view.dart';
import 'package:movie_zone/features/home/presentation/managers/discovery_cubit/discovery_cubit.dart';
import 'package:movie_zone/features/home/presentation/managers/discovery_cubit/discovery_state.dart';


class MoviesCardList extends StatelessWidget {
  const MoviesCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight * 0.3,
      child: BlocBuilder<DiscoveryCubit, DiscoveryState>(
        builder: (context, state) {
          return state is DiscoveryError
              ? Center(child: Text(state.errorMessage))
              : state is DiscoverySuccess
                  ? ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return Stack(
                          clipBehavior: Clip.none,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, DetailsView.routeName,
                                    arguments: state.movie.results![index]);
                              },
                              child: SizedBox(
                                height: SizeConfig.screenHeight * 0.27,
                                width: SizeConfig.screenWidth * 0.4,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(24),
                                    child: FancyShimmerImage(
                                      imageUrl:
                                          "https://image.tmdb.org/t/p/w500${state.movie.results?[index].image}",
                                      errorWidget: const Icon(
                                        Icons.error,
                                      ),
                                      boxFit: BoxFit.cover,
                                    )
                                    // : Image.asset(
                                    //     Assets.imagesMovie,
                                    //     fit: BoxFit.cover,
                                    //   ),
                                    ),
                              ),
                            ),
                            Positioned(
                              left: 15,
                              top: SizeConfig.screenHeight * 0.17,
                              child: SizedBox(
                                height: 105,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    // Bottom layer with stroke
                                    Text(
                                      '${index + 1}',
                                      style: AppStyles.styleSemiBold96.copyWith(
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 2
                                          ..color = blueColor,
                                      ),
                                    ),
                                    // Top layer with fill color
                                    Text(
                                      '${index + 1}',
                                      style: AppStyles.styleSemiBold96,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 20);
                      },
                    )
                  : const CustomCircularProgressIndicator();
        },
      ),
    );
  }
}
