import 'package:ecom_frontend/app/data/widget/scaffold/custom_scaffold.dart';
import 'package:ecom_frontend/app/data/widget/sidebar_tile.dart';
import 'package:ecom_frontend/app/modules/basic/common_widget_factory.dart';
import 'package:ecom_frontend/app/modules/women/controllers/women_controller.dart';
import 'package:ecom_frontend/app/utils/app_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/helper/cart_functionality.dart';
import '../../mens/views/mens_view.dart';

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
                      GetBuilder<WomenController>(
                        builder: (controller) =>
                            CommonWidgetFactory.createFemaleContainer(
                          child: GridView.builder(
                            itemCount: controller.listOfWomanProduct.length,
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 230,
                              childAspectRatio: 3 / 4,
                            ),
                            itemBuilder: (cntxt, index) => SingleProductCard(
                              product: controller.listOfWomanProduct[index],
                            ),
                          ),
                        ),
                      ),
                      CommonWidgetFactory.createFemaleSideBar(
                          child: const Column(
                        children: [SidebarTile(lable: 'lable')],
                      )),
                    ],
                  ),
                ],
              ),
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
