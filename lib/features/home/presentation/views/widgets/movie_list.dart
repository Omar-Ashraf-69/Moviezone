
import 'package:flutter/material.dart';
import 'package:movie_zone/features/home/presentation/views/widgets/movie_list_container_item.dart';

class MovieList extends StatelessWidget {
  const MovieList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MovieListContainerItem(
          isSelected: true,
          label: "Now playing",
        ),
        MovieListContainerItem(
          isSelected: false,
          label: "Upcoming",
        ),
        MovieListContainerItem(
          isSelected: false,
          label: "Top rated",
        ),
        MovieListContainerItem(
          isSelected: false,
          label: "Popular",
        ),
      ],
    );
  }
}
