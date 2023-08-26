import 'package:ecom_frontend/app/modules/basic/common_widget_factory.dart';
import 'package:ecom_frontend/app/modules/login/views/login_view.dart';
import 'package:ecom_frontend/app/utils/app_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/admin_controller.dart';

class AdminView extends StatelessWidget {
  const AdminView({Key? key}) : super(key: key);
//"name": "product1",
  // "description": "hello product description",
  // "picture": null,
  // "price": "100",
  // "discount": 0.0,
  // "inStock": false,
  // "category": "m"

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFF05454),
              // Color(0xFFF5F5F5),
              Color(0xFF121212),
              Color(0xFF30475E),
            ],
          ),
        ),
        child: CustomCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomFormInput(
                lable: 'Name',
              ),
              const CustomFormInput(
                lable: 'Description',
              ),
              const CustomFormInput(
                lable: 'price',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Is Availabe'),
                  GetBuilder<AdminController>(
                    builder: (controller) {
                      return Checkbox(
                          value: controller.inStock,
                          onChanged: (value) {
                            controller.inStock = value;
                            controller.update();
                          });
                    },
                  ),
                ],
              ),
              const CustomFormInput(
                lable: 'category',
              ),
              const Text('Product Picture'),
              const Icon(Icons.upload),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomFormInput extends StatelessWidget {
  const CustomFormInput({
    super.key,
    this.lable,
    this.controller,
  });

  final String? lable;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Title(
          color: AppColor.accentColor,
          child: Text(lable ?? "//--label--//"),
        ),
        const SizedBox(width: 100),
        SizedBox(
          width: 250,
          height: 100,
          child: TextFormField(
            controller: controller,
          ),
        ),
      ],
    );
  }
}
