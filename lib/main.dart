import 'package:ecom_frontend/app/modules/mens/views/di.dart';
import 'package:ecom_frontend/app/theme/light_theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  init();
  runApp(
    GetMaterialApp(
      theme: light,
      title: "Web World",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      defaultTransition: Transition.fade,
    ),
  );
}
