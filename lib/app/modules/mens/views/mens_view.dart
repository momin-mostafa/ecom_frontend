import 'package:ecom_frontend/app/data/widget/scaffold/custom_scaffold.dart';
import 'package:ecom_frontend/app/modules/basic/common_widget_factory.dart';
import 'package:ecom_frontend/app/modules/mens/controllers/mens_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MensView extends StatefulWidget {
  const MensView({Key? key}) : super(key: key);

  @override
  State<MensView> createState() => _MensViewState();
}

class _MensViewState extends State<MensView> {
  final TextEditingController maleSearchController = TextEditingController();
  final MensController controller = Get.find<MensController>();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CommonWidgetFactory.createSearchBar(
                    lable: "Men's Collection",
                    textEditingController: maleSearchController,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonWidgetFactory.createMaleSideBar(),
                CommonWidgetFactory.createMaleContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
