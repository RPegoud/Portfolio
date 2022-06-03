import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/components/socials.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'cv.dart';
import 'my_info.dart';
import 'languages.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: const [
                  AreaInfoText(title: 'Location', text: 'France'),
                  AreaInfoText(title: 'City', text: 'Montpellier'),
                  AreaInfoText(title: 'Age', text: '22'),
                  Languages(),
                  SizedBox(height: defaultPadding / 3),
                  Divider(),
                  Coding(),
                  Divider(),
                  Cv(),
                  Socials()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}




