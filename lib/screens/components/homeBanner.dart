import 'package:flutter/material.dart';
import '../../constants.dart';
import 'coded_text.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'images/plane.jpg',
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.66)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome on my portfolio !',
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                CodeAnimatedText(
                  language: "python",
                  text:
                      "Collecting Data, Exploring, Cleaning, Modelling, Adding value",
                  color: Colors.greenAccent.shade400,
                ),
                const CodeAnimatedText(
                  language: "flutter  ",
                  text: "Building interactive apps and websites",
                  color: primaryLightBlue,
                ),
                const SizedBox(height: defaultPadding*2),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Contact me',
                  ),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding * 2,
                      vertical: defaultPadding,
                    ),
                    backgroundColor: primaryLightBlue
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}