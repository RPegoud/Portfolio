import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.05,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            const CircleAvatar(
              radius: 75,
              backgroundImage:
                  AssetImage('images/photo2.jpg'),
            ),
            const Spacer(),
            Text(
              'Ryan Pégoud',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const Text(
              'Data Engineering Student\nat EPF Montpellier',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w200, height: 1.5),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}