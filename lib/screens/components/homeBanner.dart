import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants.dart';
import 'coded_text.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: defaultPadding),
      child: AspectRatio(
        aspectRatio: 3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              child: Image.asset(
                'images/landscape.jpg',
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(defaultPadding),
            ),
            Container(
              color: darkColor.withOpacity(0.1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (MediaQuery.of(context).size.width >= 700)
                    Text(
                      'Welcome on my portfolio !',
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  if (Responsive.isMobileLarge(context) ||
                      Responsive.isMobile(context))
                    Text(
                      'Welcome on my portfolio !',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  if (MediaQuery.of(context).size.width >= 700)
                    CodeAnimatedText(
                      language: "python",
                      text:
                          "Collecting Data, Exploring, Cleaning, Modelling, Adding value",
                      color: Colors.greenAccent.shade400,
                    ),
                  if (MediaQuery.of(context).size.width >= 700)
                    const CodeAnimatedText(
                      language: "flutter  ",
                      text: "Building interactive apps and websites",
                      color: primaryLightBlue,
                    ),
                  const SizedBox(height: defaultPadding * 2),
                  if (!Responsive.isMobile(context))
                    ElevatedButton.icon(
                      icon: const Icon(Icons.email),
                      onPressed: () {
                        launch(
                            'mailto:ryan.pegoud@epfedu.fr?subject=Portfolio contact');
                      },
                      label : const Text(
                        'Contact me',
                      ),
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding,
                        ),
                        backgroundColor: primaryMidBlue,
                      ),
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
