import 'package:ecom_frontend/app/data/enums/animated_container_type.dart';
import 'package:ecom_frontend/app/utils/app_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key, required this.type, this.child});

  final UserType type;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: type == UserType.male
            ? const BorderRadius.only(
                topRight: Radius.circular(8), bottomRight: Radius.circular(8))
            : const BorderRadius.only(
                topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
      ),
      elevation: 3,
      child: Container(
        padding: const EdgeInsets.only(left: 10, top: 5, right: 5, bottom: 5),
        height: Get.height * 0.75,
        width: Get.width * 0.18,
        decoration: type == UserType.male
            ? const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
                color: AppColor.white,
              )
            : const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8)),
                color: AppColor.white,
                // color: Colors.red,
              ),
        child: child,
      ),
    );
  }
}
