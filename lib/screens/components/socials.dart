import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Socials extends StatelessWidget {
  const Socials({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF24242E),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                launchUrlString('https://github.com/RPegoud');
              },
              icon: SvgPicture.asset("icons/github.svg")),
          IconButton(
              onPressed: () {
                launchUrlString(
                    'https://www.linkedin.com/in/ryan-pégoud-52562920b/');
              },
              icon: SvgPicture.asset("icons/linkedin.svg")),
          IconButton(
            onPressed: () {
              launch('mailto:ryan.pegoud@epfedu.fr?subject=Portfolio contact');
            },
            icon: const Icon(
              Icons.mail_rounded,
              color: Color(0xFF8C8C8E),
            ),
          ),
        ],
      ),
    );
  }
}
