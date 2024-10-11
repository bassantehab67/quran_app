import 'package:flutter/material.dart';

class QuranItemWidget extends StatelessWidget {
  String SuraName;
  int vresesName;

  QuranItemWidget(
      {super.key, required this.SuraName, required this.vresesName});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              '$vresesName',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          )),
          VerticalDivider(
            color: Theme.of(context).dividerColor,
            width: 3,
            thickness: 3,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(SuraName,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center),
          ))
        ],
      ),
    );
  }
}
