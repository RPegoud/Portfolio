import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../models/Recommendation.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

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
        const SizedBox(height: defaultPadding,),
        RecommendationCard(
          name: recommendation_list[0].name,
          source: recommendation_list[0].source,
          body: recommendation_list[0].body,
        )
      ],
    );
  }
}

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
          )
        ],
      ),
    );
  }
}