import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home/side_menu.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  final scaffoldKey = GlobalKey<
      ScaffoldState>(); // used to access the scaffold context within the title Inkwell

  @override
  Widget build(BuildContext context) {
    
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (Responsive.isMobile(context))  scaffoldKey.currentState!.openDrawer();
    });

    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: Responsive.isDesktop(context)
            ? null
            : AppBar(
                backgroundColor: bgColor,
                leading: Builder(
                  builder: ((context) => IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      )),
                ),
                title: InkWell(
                  onTap: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  child: Text(
                    '<Profile />',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(fontSize: 20),
                  ),
                ),
                actions: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: IconButton(
                      icon: const Icon(Icons.mail_rounded),
                      onPressed: () {
                        launch(
                            'mailto:ryan.pegoud@epfedu.fr?subject=Portfolio contact');
                      },
                    ),
                  ),
                ],
              ),
        drawer: const SideMenu(),
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: maxWidth),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  const Expanded(
                    flex: 2,
                    child: SideMenu(),
                  ),
                const SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [...children],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
