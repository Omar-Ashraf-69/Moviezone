import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_zone/features/home/data/models/movie_list_item_model.dart';
import 'package:movie_zone/features/home/presentation/managers/home_cubit.dart';
import 'package:movie_zone/features/home/presentation/views/widgets/movie_list_container_item.dart';

class MovieList extends StatefulWidget {
  const MovieList({
    super.key,
  });

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: movieList.map((e) {
        return InkWell(
          onTap: () async {
            BlocProvider.of<HomeCubit>(context).selectedMovieItem = e.label;
            await BlocProvider.of<HomeCubit>(context)
                .alreadySelected(e.label, context);
            setState(() {
              currentIndex = movieList.indexOf(e);
            });
          },
          child: MovieListContainerItem(
            isSelected: e.index == currentIndex,
            label: e.label,
          ),
        );
      }).toList(),
    );
  }

  final List<MovieListItemModel> movieList = [
    MovieListItemModel(
      index: 0,
      label: "Now playing",
    ),
    MovieListItemModel(
      index: 1,
      label: "Upcoming",
    ),
    MovieListItemModel(
      index: 2,
      label: "Top rated",
    ),
    MovieListItemModel(
      index: 3,
      label: "Popular",
    ),
  ];
}
