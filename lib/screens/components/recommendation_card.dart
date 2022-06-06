import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../models/Recommendation.dart';
import '../../responsive.dart';

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
                onPressed: () {},
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

class RecommendationCardMobile extends StatelessWidget {
  const RecommendationCardMobile({
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
      width: MediaQuery.of(context).size.width * 0.75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(fontSize: MediaQuery.of(context).size.width * 0.045),
          ),
          Text(
            source,
            style:
                TextStyle(fontSize: MediaQuery.of(context).size.height * 0.02),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Text(
            body,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style:
                TextStyle(fontSize: MediaQuery.of(context).size.height * 0.02),
            // textAlign: TextAlign.center,
          ),
          const SizedBox(height: defaultPadding),
          Row(
            children: [
              const Spacer(),
              TextButton(
                onPressed: () {},
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

// List view builder
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
        Responsive.isDesktop(context)
            ? Text(
                'Recommendations',
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              )
            : Text(
                'Recommendations',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
        MediaQuery.of(context).size.width >= 700
            ? SingleChildScrollView(
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
              )
            : SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                controller: recommendationScrollController,
                child: Row(
                  children: List.generate(
                    recommendation_list.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(defaultPadding),
                      child: RecommendationCardMobile(
                        name: recommendation_list[index].name,
                        body: recommendation_list[index].body,
                        source: recommendation_list[index].source,
                      ),
                    ),
                  ),
                ),
              )
      ],
    );
  }
}
