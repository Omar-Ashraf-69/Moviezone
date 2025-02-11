import 'package:flutter/material.dart';
import 'package:movie_zone/features/details/data/presentation/views/widgets/movie_extra_info_list.dart';
import 'package:movie_zone/features/details/data/presentation/views/widgets/movie_extra_info_view_body.dart';
import 'package:movie_zone/features/home/data/models/movie.dart';

class InfoSection extends StatefulWidget {
  const InfoSection({
    super.key, required this.movie,
  });
  final Movie movie;
  @override
  State<InfoSection> createState() => _InfoSectionState();
}

class _InfoSectionState extends State<InfoSection> {
  PageController pageController = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MovieExtraInfoList(index: index),
            const SizedBox(height: 24),
            MovieExtraInfoViewBody(
              movie: widget.movie,
                pageController: pageController,
                onPageChanged: (value) => setState(() {
                      index = value;
                    },),),
          ],
        ),
      ),
    );
  }
}
