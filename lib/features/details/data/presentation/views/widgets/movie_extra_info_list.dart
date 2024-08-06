
import 'package:flutter/material.dart';
import 'package:movie_zone/features/home/presentation/views/widgets/movie_list_container_item.dart';

class MovieExtraInfoList extends StatelessWidget {
  const MovieExtraInfoList({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MovieListContainerItem(
          label: 'About Movie',
          isSelected: index == 0,
        ),
        const SizedBox(
          width: 32,
        ),
        MovieListContainerItem(
          label: 'Reviews',
          isSelected: index == 1,
        ),
        const SizedBox(
          width: 32,
        ),
        MovieListContainerItem(
          label: 'Cast',
          isSelected: index == 2,
        ),
      ],
    );
  }
}
