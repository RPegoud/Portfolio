import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/main_screen.dart';

import '../components/homeBanner.dart';
import '../components/project_cards.dart';
import '../components/recommendation_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    required this.bannerScrollController,
    required this.mainPageScrollController,
    required this.listViewScrollController,
    required this.recommendationScrollController,
  }) : super(key: key);

  final ScrollController bannerScrollController,
      mainPageScrollController,
      listViewScrollController,
      recommendationScrollController;

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        const HomeBanner(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Column(
            children: [
              Responsive.isDesktop(context)
                  ? Text(
                      'Discover my projects',
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                          // fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  : Text(
                      'Discover my projects',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          // fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
              MediaQuery.of(context).size.width > 700
                  ? ProjectCards(
                      mainPageScrollController: mainPageScrollController,
                      listViewScrollController: listViewScrollController)
                  : ProjectCardsMobile(
                      mainPageScrollController: mainPageScrollController,
                      listViewScrollController: listViewScrollController),
              const Divider(),
              RecommandationListView(
                  recommendationScrollController:
                      recommendationScrollController),
            ],
          ),
        ),
      ],
    );
  }
}
