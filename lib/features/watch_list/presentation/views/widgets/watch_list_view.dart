import 'package:flutter/material.dart';
import 'package:movie_zone/features/watch_list/presentation/views/widgets/movie_details_widget.dart';

class WatchListViewWidget extends StatelessWidget {
  const WatchListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 4,
        itemBuilder: (context, index) {
          return InkWell(
              borderRadius: BorderRadius.circular(12),
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              onTap: () {
                // Navigator.pushNamed(
                //   context,
                //   DetailsView.routeName,
                // );
              },
              child: const MovieDetailsWidget());
        },
        separatorBuilder: (context, index) => const SizedBox(height: 14),
      ),
    );
  }
}
