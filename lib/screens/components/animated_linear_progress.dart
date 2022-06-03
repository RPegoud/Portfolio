import 'package:flutter/material.dart';

import '../../constants.dart';

class AnimatedLinearProgress extends StatelessWidget {
  const AnimatedLinearProgress({
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
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: percentage),
      duration: defaultDuration,
      builder: (context, double value, child) => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                level,
              )
            ],
          ),
          const SizedBox(height: defaultPadding / 2),
          LinearProgressIndicator(
            value: value,
            color: color,
            backgroundColor: darkColor,
          ),
          const SizedBox(height: defaultPadding/2,)
        ],
      ),
    );
  }
}