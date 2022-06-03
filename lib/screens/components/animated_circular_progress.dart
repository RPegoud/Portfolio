import 'package:flutter/material.dart';

import '../../constants.dart';

class AnimatedCircularProgress extends StatelessWidget {
  const AnimatedCircularProgress({
    Key? key,
    required this.label,
    required this.percentage,
    required this.level,
    required this.color,
  }) : super(key: key);

  final String label;
  final double percentage;
  final String level;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                Transform.scale(
                  scale: 0.7,
                  child: CircularProgressIndicator(
                    strokeWidth: 3.0,
                    value: value,
                    color: color,
                    backgroundColor: darkColor,
                  ),
                ),
                Center(
                  child: Text(
                    level,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: defaultPadding / 3,
        ),
        Padding(
          padding: const EdgeInsets.all(defaultPadding/3),
          child: Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        )
      ],
    );
  }
}