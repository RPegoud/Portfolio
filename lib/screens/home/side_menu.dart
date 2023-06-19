import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/components/socials.dart';

import '../components/area_info_text.dart';
import '../components/coding.dart';
import '../components/my_info.dart';
import '../components/languages.dart';

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
              controller: ScrollController(),
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: const [
                  AreaInfoText(title: 'Location', text: 'Germany'),
                  AreaInfoText(title: 'City', text: 'Munich'),
                  AreaInfoText(title: 'Nationality', text: 'French / German'),
                  AreaInfoText(title: 'Age', text: '23'),
                  Divider(),
                  Languages(),
                  SizedBox(height: defaultPadding / 3),
                  Divider(),
                  Coding(),
                  Divider(),
                  // Cv(),
                  Socials(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
