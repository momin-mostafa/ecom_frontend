import 'package:ecom_frontend/app/data/widget/scaffold/custom_scaffold.dart';
import 'package:ecom_frontend/app/modules/basic/common_widget_factory.dart';
import 'package:ecom_frontend/app/utils/app_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class WomenView extends StatefulWidget {
  const WomenView({Key? key}) : super(key: key);

  @override
  State<WomenView> createState() => _WomenViewState();
}

class _WomenViewState extends State<WomenView> {
  final TextEditingController femaleSearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(color: AppColor.backgroundColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CommonWidgetFactory.createSearchBar(
                          lable: "Women's Collection",
                          textEditingController: femaleSearchController,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonWidgetFactory.createFemaleContainer(),
                      CommonWidgetFactory.createFemaleSideBar(),
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
