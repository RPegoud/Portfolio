import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/Projects.dart';
import 'package:portfolio/screens/main_screen.dart';
import 'package:themed/themed.dart';

import '../components/homeBanner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(
      {Key? key,
      required this.bannerScrollController,
      required this.mainPageScrollController,
      required this.listViewScrollController})
      : super(key: key);

  final ScrollController bannerScrollController,
      mainPageScrollController,
      listViewScrollController;

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        const HomeBanner(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Column(
            children: [
              Text(
                'Discover my projects',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontSize: 35,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: SizedBox(
                  height: 480,
                  child: SingleChildScrollView(
                    controller: mainPageScrollController,
                    // scrollDirection: Axis.horizontal,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          height: 420,
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: ListView.builder(
                            physics:
                                const AlwaysScrollableScrollPhysics(), // new

                            shrinkWrap: true,
                            controller: listViewScrollController,
                            itemCount: projects_list.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, top: 20.0, bottom: 20.0),
                                child: Stack(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 420,
                                      width: 350,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                        child: ChangeColors(
                                          brightness: -0.0001,
                                          child: Image(
                                            image: AssetImage(
                                                projects_list[index].imagePath),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 8.0,
                                      left: 8.0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: darkColor.withOpacity(0.8),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        width: 330,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: defaultPadding / 2),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                projects_list[index].title,
                                                overflow: TextOverflow.visible,
                                                style: const TextStyle(
                                                  fontSize: 22.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 1.6,
                                                ),
                                              ),
                                              const SizedBox(height: 10.0),
                                              SizedBox(
                                                height: 40,
                                                width: 300,
                                                child: Text(
                                                  projects_list[index]
                                                      .description,
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14.0),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 10.0,
                                      right: 10.0,
                                      child: Icon(Icons.bookmark,
                                          size: 26.0, color: Colors.white),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 5.0)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
