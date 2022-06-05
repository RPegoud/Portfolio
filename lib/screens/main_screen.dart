import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';

import 'home/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                title: Text(
                  '<Profile />',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 20),
                ),
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
