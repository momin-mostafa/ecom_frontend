import 'dart:async';

import 'package:ecom_frontend/app/data/common/user_controller.dart';
import 'package:ecom_frontend/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  login() {
    Get.showOverlay(
      asyncFunction: () async {
        await Future.delayed(const Duration(seconds: 3));
        if (username.text == 'admin' && password.text == 'admin') {
          Get.find<UserController>().isUserLogedIn = true;
          Get.toNamed(Routes.HOME);
        } else {
          Get.showSnackbar(
            const GetSnackBar(
              title: 'Invalid Credential',
              message: 'Invalid Username or Password',
            ),
          );
        }
      },
      loadingWidget: const CircularProgressIndicator.adaptive(),
    );
  }

  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
