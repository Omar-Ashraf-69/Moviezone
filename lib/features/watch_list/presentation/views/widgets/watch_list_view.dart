import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:movie_zone/features/details/data/presentation/views/details_view.dart';
import 'package:movie_zone/features/home/data/models/movie.dart';
import 'package:movie_zone/features/watch_list/presentation/views/widgets/movie_details_widget.dart';

class WatchListViewWidget extends StatelessWidget {
  const WatchListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ValueListenableBuilder<Box<Movie>>(
        valueListenable: Hive.box<Movie>('movies').listenable(),
        builder: (context, box, _) {
          final movies = box.values.toList();

          return ListView.separated(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final movie = movies[index];
              return InkWell(
                borderRadius: BorderRadius.circular(12),
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    DetailsView.routeName,
                    arguments: movie,
                  );
                },
                child: MovieDetailsWidget(
                  movie: movie,
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 14),
          );
        },
      ),
    );
  }
}
