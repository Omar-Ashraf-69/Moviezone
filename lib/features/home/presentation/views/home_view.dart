import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:movie_zone/core/utils/app_styles.dart';
import 'package:movie_zone/core/utils/assets.dart';
import 'package:movie_zone/core/utils/colors.dart';
import 'package:movie_zone/core/utils/size_config.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = '/home_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18, top: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'What do you want to watch?',
                style: AppStyles.styleSemiBold18,
              ),
              const SizedBox(height: 20),
              TextField(
                enabled: false,
                decoration: InputDecoration(
                  hintText: "Search",
                  contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                  fillColor: darkGreyColor,
                  filled: true,
                  hintStyle:
                      AppStyles.styleRegular14.copyWith(color: mediumGreyColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.identity()..scale(-1.0, 1.0, 1.0),
                      child: const Icon(
                        IconlyLight.search,
                        color: mediumGreyColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: SizeConfig.screenHeight * 0.3,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.27,
                          child: Image.asset(
                            Assets.imagesMovie1,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 15,
                          top: SizeConfig.screenHeight * 0.17,
                          child: SizedBox(
                            height: 105,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                // Bottom layer with stroke
                                Text(
                                  '${index + 1}',
                                  style: AppStyles.styleSemiBold96.copyWith(
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 2
                                      ..color = blueColor,
                                  ),
                                ),
                                // Top layer with fill color
                                Text(
                                  '${index + 1}',
                                  style: AppStyles.styleSemiBold96,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(width: 20);
                  },
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
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
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.builder(
                    itemCount: 10,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      childAspectRatio: 1.25 / 1.8,
                    ),
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Image.asset(
                          Assets.imagesMovie,
                          fit: BoxFit.cover,
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: blueColor, // Color of the top border
            width: 1.5, // Thickness of the top border
          ),
        ),
      ),
      child: SizedBox(
        height: 75,
        child: BottomNavigationBar(
          backgroundColor: kPrimaryColor,
          selectedItemColor: blueColor,
          unselectedItemColor: mediumGreyColor,
          selectedLabelStyle: AppStyles.styleRegular12,
          unselectedLabelStyle: AppStyles.styleRegular12,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 6.0),
                child: Icon(IconlyLight.home),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 6.0),
                child: Icon(IconlyLight.search),
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 6.0),
                child: Icon(IconlyLight.bookmark),
              ),
              label: 'Watch list',
            ),
          ],
        ),
      ),
    );
  }
}

class MovieListContainerItem extends StatelessWidget {
  const MovieListContainerItem({
    super.key,
    this.isSelected = false,
    required this.label,
  });
  final bool isSelected;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: UnderlineTabIndicator(
        borderRadius: BorderRadius.circular(18),
        borderSide: isSelected
            ? const BorderSide(color: darkGreyColor, width: 4)
            : BorderSide.none,
      ),
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        label,
        style: !isSelected
            ? AppStyles.styleSemiMedium14.copyWith(
                fontWeight: FontWeight.w400,
              )
            : AppStyles.styleSemiMedium14,
      ),
    );
  }
}
