import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
              onPressed: () {},
              icon: SvgPicture.asset("icons/github.svg")),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("icons/linkedin.svg")),
          IconButton(
            onPressed: () {},
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