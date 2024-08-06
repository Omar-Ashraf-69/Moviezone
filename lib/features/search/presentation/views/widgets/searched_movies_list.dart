import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_zone/features/details/data/presentation/views/details_view.dart';
import 'package:movie_zone/features/search/presentation/managers/cubit/search_cubit.dart';
import 'package:movie_zone/features/search/presentation/views/widgets/searched_movie_details.dart';

class SeachedMovieListView extends StatelessWidget {
  const SeachedMovieListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return state is SearchSuccess
            ? Expanded(
                child: ListView.separated(
                  itemCount: state.movies.results!.length - 1,
                  itemBuilder: (context, index) {
                    return InkWell(
                        borderRadius: BorderRadius.circular(12),
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () {
                          Navigator.pushNamed(context, DetailsView.routeName,
                              arguments: state.movies.results![index]);
                        },
                        child: SearchedMovieDetails(
                          index: index,
                          movie: state.movies,
                        ));
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 14),
                ),
              )
            : Container();
      },
    );
  }
}
