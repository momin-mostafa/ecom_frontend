import 'package:ecom_frontend/app/utils/app_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.8,
      width: Get.width * 0.18,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
        color: AppColor.white,
      ),
    );
  }
}
