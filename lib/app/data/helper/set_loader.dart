import 'package:ecom_frontend/app/data/common/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void setLoader(bool show) {
  if (show) {
    Get.showOverlay(
        asyncFunction: (() async {
          await Future.delayed(const Duration(seconds: 1));
        }),
        loadingWidget: const Center(
          child: CircularProgressIndicator.adaptive(),
        ));
  } else {
    Get.back();
  }
}
