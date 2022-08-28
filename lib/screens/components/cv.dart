import 'package:flutter/material.dart';
import '../../constants.dart';

class Cv extends StatelessWidget {
  const Cv({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding / 2),
      child: TextButton(
        onPressed: () {
        },
        child: FittedBox(
          child: Row(
            children: [
              Text(
                'Download CV',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(
                width: defaultPadding / 2,
              ),
              const Icon(
                Icons.download,
                color: primaryGrey,
              )
            ],
          ),  
        ),
      ),
    );
  }
}
