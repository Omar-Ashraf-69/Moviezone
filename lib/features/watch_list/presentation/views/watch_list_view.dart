import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:movie_zone/core/utils/assets.dart';
import 'package:movie_zone/features/home/data/models/movie.dart';
import 'package:movie_zone/features/watch_list/presentation/views/widgets/watch_list_app_bar.dart';
import 'package:movie_zone/features/watch_list/presentation/views/widgets/watch_list_view.dart';

class WatchListView extends StatelessWidget {
  const WatchListView({super.key});
  static const routeName = '/watch_list_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 26.0, right: 26, top: 24),
          child: Column(
            children: [
              const WatchListAppBar(),
              const SizedBox(
                height: 38,
              ),
              Hive.box<Movie>('movies').isNotEmpty
                  ? const WatchListViewWidget()
                  : Expanded(child: Image.asset(Assets.imagesEmptyWishlist)),
            ],
          ),
        ),
      ),
      // body: Center(
      //   child: Image.asset(
      //     Assets.imagesEmptyWishlist,
      //   ),
      // ),
    );
  }
}
