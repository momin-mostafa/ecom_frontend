import 'package:ecom_frontend/app/data/widget/page_card/page_card_button.dart';
import 'package:ecom_frontend/app/data/widget/page_card/page_card_text.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_color.dart';
import '../../../utils/app_const.dart';

class PageCard extends StatelessWidget {
  const PageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final double cardHeight = Get.height * 0.8;
    // final double cardWidht = Get.width;
    // final double segmentWidth = Get.width / 3;
    double cardHeight = MediaQuery.sizeOf(context).width * 0.4;
    double cardWidht = MediaQuery.sizeOf(context).width;
    double segmentWidth = MediaQuery.sizeOf(context).width / 3;
    return Container(
      height: cardHeight,
      width: cardWidht,
      decoration: BoxDecoration(color: AppColor.primaryColor),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.08),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: segmentWidth,
              height: cardHeight,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PageCardText(),
                  SizedBox(height: 40),
                  PageCardButton()
                ],
              ),
            ),
            const SizedBox(width: 80),
            PageCardImage(
              segmentWidth: segmentWidth,
              cardHeight: cardHeight,
            )
          ],
        ),
      ),
    );
  }
}

class PageCardImage extends StatelessWidget {
  const PageCardImage({
    Key? key,
    required this.segmentWidth,
    required this.cardHeight,
  }) : super(key: key);

  final double segmentWidth;
  final double cardHeight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: segmentWidth,
          height: cardHeight,
          color: AppColor.backgroundColor,
        ),
        Positioned(
          bottom: 0,
          left: 30,
          child: Container(
            width: segmentWidth * 0.8,
            height: segmentWidth * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              // color: Colors.red,
              borderRadius: BorderRadius.circular(300),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            color: AppColor.backgroundColor,
            height: cardHeight,
            width: segmentWidth,
            child: Image.asset(AppConst.demoModel),
          ),
        ),
      ],
    );
  }
}
