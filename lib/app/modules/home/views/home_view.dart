import 'package:ecom_frontend/app/modules/basic/common_widget_factory.dart';
import 'package:ecom_frontend/app/utils/app_color.dart';

import 'package:ecom_frontend/app/data/widget/scaffold/custom_scaffold.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeController controller = Get.find<HomeController>();
  final TextEditingController maleSearchController = TextEditingController();
  final TextEditingController femaleSearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonWidgetFactory.createPageCard(),
            Container(
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(color: AppColor.backgroundColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CommonWidgetFactory.createSearchBar(
                      lable: "Men's Collection",
                      textEditingController: maleSearchController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CommonWidgetFactory.createSearchBar(
                      lable: "Women's Collection",
                      textEditingController: femaleSearchController,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonWidgetFactory.createAnimatedContainer(),
                      CommonWidgetFactory.createSideBar(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
