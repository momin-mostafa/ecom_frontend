import 'package:flutter/material.dart';

import '../../../utils/app_color.dart';

class PageCardText extends StatelessWidget {
  const PageCardText({
    Key? key,
    this.smallerText = "Winter Sell is on",
    this.text = 'Discover latest fashion',
  }) : super(key: key);
  final String smallerText;
  final String text;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: RichText(
        text: TextSpan(
          text: smallerText,
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w100,
          ),
          children: [
            TextSpan(
              text: '\n$text',
              style: TextStyle(
                color: AppColor.accentColor,
                fontSize: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
