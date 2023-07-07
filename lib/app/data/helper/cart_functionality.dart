import 'dart:developer';

import 'package:ecom_frontend/app/data/common/user_controller.dart';
import 'package:ecom_frontend/app/data/widget/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<dynamic> cart() {
  log('cart called ', name: 'Cart Function');
  return Get.defaultDialog(
    title: "Cart List",
    content: SizedBox(
      height: Get.height * 0.8,
      width: Get.height * 0.9,
      child: (Get.find<UserController>().cartItems.isEmpty)
          ? const Text('Opps your cart is empty')
          : ListView.builder(
              shrinkWrap: true,
              itemCount: Get.find<UserController>().cartItems.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    CartProductTile(
                        product: Get.find<UserController>().cartItems[index]),
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
    ),
  );
}
