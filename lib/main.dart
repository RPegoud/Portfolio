import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/home/home_screen.dart';

import 'scrollBehaviour.dart';

void main() {
WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ScrollController bannerScrollController,
      mainPageScrollController,
      listViewScrollController,
      recommendationScrollController;

  @override
  void initState() {
    super.initState();
    bannerScrollController = ScrollController();
    mainPageScrollController = ScrollController();
    listViewScrollController = ScrollController();
    recommendationScrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ryan Pégoud',
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: const TextStyle(color: bodyTextColor),
              bodyText2: const TextStyle(color: bodyTextColor),
            ),
      ),
      scrollBehavior: MyCustomScrollBehavior(),
      home: HomeScreen(
        bannerScrollController: bannerScrollController,
        mainPageScrollController: mainPageScrollController,
        listViewScrollController: listViewScrollController,
        recommendationScrollController: recommendationScrollController,
      ),
    );
  }
}
