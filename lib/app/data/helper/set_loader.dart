import 'package:flutter/material.dart';
import 'package:get/get.dart';

@Deprecated('Just use Get.showOverlay instead of using setLoader on and off')
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
