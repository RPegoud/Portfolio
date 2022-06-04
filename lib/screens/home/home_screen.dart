import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
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
              Text(
                'Discover my projects',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontSize: 35,
                    ),
              ),
              ProjectCards(
                  mainPageScrollController: mainPageScrollController,
                  listViewScrollController: listViewScrollController),
              const Divider(),
              RecommandationListView(recommendationScrollController: recommendationScrollController),
            ],
          ),
        ),
      ],
    );
  }
}
