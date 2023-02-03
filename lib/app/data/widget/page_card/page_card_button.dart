import 'package:flutter/material.dart';

import '../../../utils/app_color.dart';

class PageCardButton extends StatelessWidget {
  const PageCardButton({
    Key? key,
    this.onTap,
    this.text = "Explore Now",
  }) : super(key: key);
  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        decoration: BoxDecoration(
          color: AppColor.accentColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
