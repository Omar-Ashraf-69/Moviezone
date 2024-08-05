
import 'package:flutter/material.dart';
import 'package:movie_zone/features/watch_list/presentation/views/widgets/watch_list_item.dart';

class WatchListViewWidget extends StatelessWidget {
  const WatchListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const WatchListItem();
        },
        separatorBuilder: (context, index) =>
            const SizedBox(height: 14),
      ),
    );
  }
}

