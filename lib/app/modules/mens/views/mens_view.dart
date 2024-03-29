import 'dart:developer';

import 'package:ecom_frontend/app/data/widget/scaffold/custom_scaffold.dart';
import 'package:ecom_frontend/app/data/widget/sidebar_tile.dart';
import 'package:ecom_frontend/app/modules/basic/common_widget_factory.dart';
import 'package:ecom_frontend/app/modules/home/model/product.dart';
import 'package:ecom_frontend/app/modules/mens/controllers/mens_controller.dart';
import 'package:ecom_frontend/app/utils/app_color.dart';
import 'package:ecom_frontend/app/utils/app_const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/helper/cart_functionality.dart';

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
                CommonWidgetFactory.createMaleSideBar(
                    child: Column(
                  children: [
                    SidebarTile(
                      lable: "hello World",
                      onTap: () {
                        log('message', name: 'onTap');
                      },
                    ),
                  ],
                )),
                GetBuilder<MensController>(
                  builder: (controller) =>
                      CommonWidgetFactory.createMaleContainer(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 230,
                        childAspectRatio: 3 / 4,
                      ),
                      itemCount: controller.listOfMaleProduct.length,
                      itemBuilder: (cntxt, index) => SingleProductCard(
                        product: controller.listOfMaleProduct[index],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.shopping_cart),
        onPressed: () => cart(),
      ),
    );
  }
}

class SingleProductCard extends StatelessWidget {
  const SingleProductCard({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: AppColor.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.white,
                padding: const EdgeInsets.all(10),
                child: Image.asset(AppConst.demoModel),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(product.name ?? ''),
            ),
            Text(product.price ?? ''),
            // const Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [Text('⭐️⭐️⭐️⭐️⭐️'), Text('5/5')],
            // ),
            // Spacer()
          ],
        ),
      ),
    );
  }
}
