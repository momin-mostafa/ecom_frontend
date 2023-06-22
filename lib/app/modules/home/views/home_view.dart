import 'package:ecom_frontend/app/data/common/user_controller.dart';
import 'package:ecom_frontend/app/data/widget/custom_list_tile.dart';
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
        onPressed: () {
          cart();
          // Get.showOverlay(
          //     asyncFunction: () async {
          //       await controller.getAllProduct();
          //     },
          //     loadingWidget: const Center(
          //       child: CircularProgressIndicator.adaptive(),
          //     ));
        },
      ),
    );
  }

  Future<dynamic> cart() {
    return Get.defaultDialog(
      title: "Cart List",
      content: SizedBox(
        height: Get.height * 0.8,
        width: Get.height * 0.9,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            (Get.find<UserController>().cartItems.isEmpty)
                ? const Text('Opps your cart is empty')
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: Get.find<UserController>().cartItems.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          CartProductTile(
                              product:
                                  Get.find<UserController>().cartItems[index]),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                onPressed: () {
                                  Get.find<UserController>()
                                      .cartItems
                                      .removeAt(index);
                                  Get.back();
                                  cart();
                                },
                                icon: const Icon(
                                  Icons.remove,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    },
                  ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Check Out",
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
