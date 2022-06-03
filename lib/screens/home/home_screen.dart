import 'package:flutter/material.dart';
import 'package:portfolio/screens/main_screen.dart';

import '../components/homeBanner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
      ],
    );
  }
}


