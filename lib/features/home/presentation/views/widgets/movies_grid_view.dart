import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_zone/core/widgets/custom_circular_progress.dart';
import 'package:movie_zone/features/details/data/presentation/views/details_view.dart';
import 'package:movie_zone/features/home/presentation/managers/home_cubit.dart';
import 'package:movie_zone/features/home/presentation/managers/home_state.dart';

class MoviesGridView extends StatelessWidget {
  const MoviesGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        return state is SatateLoading
            ? const Expanded(child: CustomCircularProgressIndicator())
            : state is SatateError
                ? Center(child: Text(state.errorMessage))
                : Expanded(
                    child: GridView.builder(
                      itemCount: 10,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                        childAspectRatio: 1.25 / 1.8,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, DetailsView.routeName,
                                arguments: BlocProvider.of<HomeCubit>(context)
                                    .movies[BlocProvider.of<HomeCubit>(context)
                                        .selectedMovieItem]
                                    ?.results?[index]);
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: FancyShimmerImage(
                              imageUrl:
                                  "https://image.tmdb.org/t/p/w500${BlocProvider.of<HomeCubit>(context).movies[BlocProvider.of<HomeCubit>(context).selectedMovieItem]?.results?[index].image}",
                              errorWidget: const Icon(
                                Icons.error,
                              ),
                              boxFit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  );
      },
    );
  }
}
