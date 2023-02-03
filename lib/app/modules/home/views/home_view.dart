import 'package:ecom_frontend/app/utils/app_color.dart';

import 'package:ecom_frontend/app/data/widget/scaffold/custom_scaffold.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/widget/page_card/page_card.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PageCard(),
            Container(
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(color: AppColor.backgroundColor),
            ),
          ],
        ),
      ),
    );
  }
}
