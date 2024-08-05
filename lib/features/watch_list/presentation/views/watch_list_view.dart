import 'package:flutter/material.dart';
import 'package:movie_zone/features/watch_list/presentation/views/widgets/watch_list_app_bar.dart';
import 'package:movie_zone/features/watch_list/presentation/views/widgets/watch_list_view.dart';

class WatchListView extends StatelessWidget {
  const WatchListView({super.key});
  static const routeName = '/watch_list_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 26.0, right: 26, top: 24),
          child: Column(
            children: [
              WatchListAppBar(),
              SizedBox(
                height: 38,
              ),
              WatchListViewWidget(),
              // Expanded(child: Image.asset(Assets.imagesEmptyWishlist)),
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
