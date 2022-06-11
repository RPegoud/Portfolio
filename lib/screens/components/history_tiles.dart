import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/History.dart';

class HistoryTile extends StatelessWidget {
  const HistoryTile({Key? key, required this.headerStyle}) : super(key: key);

  final TextStyle headerStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: historyList.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 10,
                color: secondaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text(historyList[index].title, style: headerStyle),
                    trailing: const Icon(Icons.keyboard_arrow_down),
                    children: [
                      for (var item in historyList[index].description)
                        Padding(
                          padding: const EdgeInsets.all(defaultPadding),
                          child: Text(
                            "\u2022  " + item,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
