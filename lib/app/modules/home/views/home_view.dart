import 'package:ecom_frontend/app/modules/basic/common_widget_factory.dart';

import 'package:ecom_frontend/app/data/widget/scaffold/custom_scaffold.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonWidgetFactory.createPageCard(),
            Obx(() => ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: controller.listOfProduct.length,
                itemBuilder: ((context, index) {
                  var product = controller.listOfProduct[index];
                  return Card(
                    child: ListTile(
                      leading: Card(
                        child: Image.network(
                          product.image ?? '',
                          height: Get.height * .5,
                          width: Get.width * .15,
                        ),
                      ),
                      title: Text(product.title ?? ''),
                      subtitle: Text(product.description ?? ''),
                    ),
                  );
                })))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.showOverlay(
              asyncFunction: () async {
                await controller.getAllProduct();
              },
              loadingWidget: const Center(
                child: CircularProgressIndicator.adaptive(),
              ));
        },
      ),
    );
  }
}
