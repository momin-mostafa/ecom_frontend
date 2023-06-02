import 'package:ecom_frontend/app/modules/basic/common_widget_factory.dart';

import 'package:ecom_frontend/app/data/widget/scaffold/custom_scaffold.dart';
import 'package:ecom_frontend/app/utils/app_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              CommonWidgetFactory.createPageCard(),
              const SizedBox(height: 10),
              Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: controller.listOfProduct.length,
                  itemBuilder: ((context, index) {
                    var product = controller.listOfProduct[index];
                    return Card(
                      elevation: 5,
                      color: const Color.fromARGB(174, 250, 249, 249),
                      child: ListTile(
                        leading: Stack(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              color: AppColor.accentColor,
                            ),
                            Card(
                              child: Image.network(
                                product?.image ?? '',
                                // height: Get.height * .5,
                                width: 92, // Get.width * ,
                                // height: 250,
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.yellow.withOpacity(0.8),
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(5),
                                ),
                              ),
                              child: const Center(
                                child: Text('30%'),
                              ),
                            )
                          ],
                        ),
                        title: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(product?.title ?? ''),
                        ),
                        subtitle: Card(
                          color: AppColor.accentColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              product?.description ?? '',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Get.showOverlay(
      //         asyncFunction: () async {
      //           await controller.getAllProduct();
      //         },
      //         loadingWidget: const Center(
      //           child: CircularProgressIndicator.adaptive(),
      //         ));
      //   },
      // ),
    );
  }
}
