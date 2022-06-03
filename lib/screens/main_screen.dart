import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

import 'home/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                flex: 2,
                child: SideMenu(),
              ),
              const SizedBox(width: defaultPadding,),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children:  [
                      ...children
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
