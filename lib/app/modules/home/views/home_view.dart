import 'package:ecom_frontend/app/data/helper/cart_functionality.dart';
import 'package:ecom_frontend/app/modules/basic/common_widget_factory.dart';

import 'package:ecom_frontend/app/data/widget/scaffold/custom_scaffold.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../widget/home_tile.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonWidgetFactory.createPageCard(),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: controller.listOfProduct.length,
                  itemBuilder: ((context, index) {
                    var product = controller.listOfProduct[index];
                    return HomeTile(product: product);
                  }),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.shopping_cart),
        onPressed: () => cart(),
      ),
    );
  }

  // test() {
  //   Get.find<HomeProvider>().testCallToLocal();
  // }
}
