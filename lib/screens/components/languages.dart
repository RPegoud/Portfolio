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
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding/3),
          child: Text(
            'Languages',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
             Expanded(
              child: AnimatedCircularProgress(
                label: 'English (Toeic)',
                percentage: 0.95,
                level: '975 / 990',
                color: Colors.greenAccent.shade400,
              ),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            const Expanded(
              child: AnimatedCircularProgress(
                label: 'German',
                percentage: 0.75,
                level: 'B2',
                color: primaryColor,
              ),
            ),
          ],
        )
      ],
    );
  }
}