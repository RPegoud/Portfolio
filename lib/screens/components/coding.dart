import 'package:flutter/material.dart';

import '../../constants.dart';
import 'animated_linear_progress.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgress(
          label: 'Python',
          level: 'Advanced',
          color: Colors.greenAccent.shade400,
          percentage: 0.8,
        ),
        AnimatedLinearProgress(
          label: 'Flutter',
          level: 'Proficient',
          color: Colors.orangeAccent.shade400,
          percentage: 0.7,
        ),
        AnimatedLinearProgress(
          label: 'SQL',
          level: 'Intermediate',
          color: Colors.orangeAccent.shade400,
          percentage: 0.65,
        ),
        const AnimatedLinearProgress(
          label: 'R',
          level: 'Intermediate',
          color: primaryColor,
          percentage: 0.55,
        ),
      ],
    );
  }
}
