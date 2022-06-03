import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class CodeAnimatedText extends StatelessWidget {
  const CodeAnimatedText({
    Key? key,
    required this.language,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String language;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          CodedText(language: language, color: color),
          const SizedBox(
            width: defaultPadding,
          ),
          const Text('My skills : '),
          AnimatedTextKit(
            totalRepeatCount: 1,
            animatedTexts: [
              TyperAnimatedText(
                text,
                speed: const Duration(milliseconds: 40),
              ),
            ],
          ),
          const SizedBox(
            width: defaultPadding,
          ),
          CodedText(language: language, color: color),
        ],
      ),
    );
  }
}

class CodedText extends StatelessWidget {
  const CodedText({
    Key? key,
    required this.language,
    required this.color,
  }) : super(key: key);

  final String language;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: language,
            style: TextStyle(color: color),
          ),
          const TextSpan(
            text: "> ",
          )
        ],
      ),
    );
  }
}
