import 'package:flutter/material.dart';

import '../../constants.dart';
import 'animated_circular_progress.dart';

class Languages extends StatelessWidget {
  const Languages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding / 3),
          child: Text(
            'Languages',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        SingleChildScrollView(
          controller: ScrollController(),
          child: Row(
            children: [
              Expanded(
                child: AnimatedCircularProgress(
                  label: 'English (Toeic)',
                  percentage: 0.95,
                  level: '975',
                  color: Colors.greenAccent.shade400,
                ),
              ),
              const SizedBox(
                width: defaultPadding,
              ),
              const Expanded(
                child: AnimatedCircularProgress(
                  label: 'German',
                  percentage: 0.7,
                  level: 'B2',
                  color: primaryColor,
                ),
              ),
              const SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                child: AnimatedCircularProgress(
                  label: 'Spanish',
                  percentage: 0.65,
                  level: 'B2',
                  color: Colors.orangeAccent.shade400,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
