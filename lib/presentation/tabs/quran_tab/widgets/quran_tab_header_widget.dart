import 'package:flutter/material.dart';

import '../../../../core/TitleManager.dart';

class QuranTabHeaderWidget extends StatelessWidget {
  const QuranTabHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(
        color: Color(0xffB7935F),
        width: 3,
      ))),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
                child: Text(TitleManager.verses,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.labelMedium)),
            Container(
              color: Theme.of(context).dividerColor,
              width: 2,
            ),
            Expanded(
                child: Text(TitleManager.Chapter,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.labelMedium)),
          ],
        ),
      ),
    );
  }
}
