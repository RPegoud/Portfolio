import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../models/Recommendation.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    Key? key,
    required this.name,
    required this.body,
    required this.source,
  }) : super(key: key);

  final String name, body, source;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(source),
          const SizedBox(
            height: defaultPadding,
          ),
          Text(
            body,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            // textAlign: TextAlign.center,
          ),
          const SizedBox(height: defaultPadding),
          Row(
            children: [
              const Spacer(),
              TextButton(
                onPressed: () {
                  
                },
                child: const Text(
                  'Read More >>',
                  style: TextStyle(color: primaryColor),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class RecommandationListView extends StatelessWidget {
  const RecommandationListView({
    Key? key,
    required this.recommendationScrollController,
  }) : super(key: key);

  final ScrollController recommendationScrollController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Recommendations',
          style: Theme.of(context).textTheme.headline6!.copyWith(
                fontSize: 35,
              ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: recommendationScrollController,
          child: Row(
            children: List.generate(
              recommendation_list.length,
              (index) => Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: RecommendationCard(
                  name: recommendation_list[index].name,
                  body: recommendation_list[index].body,
                  source: recommendation_list[index].source,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
