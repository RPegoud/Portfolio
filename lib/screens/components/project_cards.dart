import 'package:flutter/material.dart';
import 'package:themed/themed.dart';
import '../../constants.dart';
import '../../models/Projects.dart';

class ProjectCards extends StatelessWidget {
  const ProjectCards({
    Key? key,
    required this.mainPageScrollController,
    required this.listViewScrollController,
  }) : super(key: key);

  final ScrollController mainPageScrollController;
  final ScrollController listViewScrollController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: SizedBox(
        height: 410,
        child: SingleChildScrollView(
          controller: mainPageScrollController,
          child: Column(
            children: <Widget>[
              Container(
                // padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                height: 400,
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  controller: listViewScrollController,
                  itemCount: projects_list.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(20),
                      child: Stack(
                        children: <Widget>[
                          SizedBox(
                            height: 380,
                            width: 320,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(14.0),
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
                                  color: darkColor.withOpacity(0.9),
                                  borderRadius: BorderRadius.circular(10)),
                              width: 300,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: defaultPadding / 2),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: defaultPadding/2),
                                        child: Text(
                                          projects_list[index].description,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.0),
                                        ),
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
    );
  }
}
