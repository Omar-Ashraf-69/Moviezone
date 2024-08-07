import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:movie_zone/core/utils/colors.dart';
import 'package:movie_zone/features/home/data/models/movie.dart';

class SaveBookMark extends StatelessWidget {
  const SaveBookMark({
    super.key,
    required this.movie,
  });
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<Movie>>(
      valueListenable: Hive.box<Movie>('movies').listenable(),
      builder: (context, box, _) {
        bool isSaved = box.containsKey(movie.id);

        return InkWell(
          onTap: () {
            if (isSaved) {
              box.delete(movie.id);
            } else {
              box.put(movie.id, movie);
            }
          },
          child: Icon(
            isSaved ? Icons.bookmark : Icons.bookmark_outline,
            color: seconderyWhiteColor,
            size: 20,
          ),
        );
      },
    );
  }
}
