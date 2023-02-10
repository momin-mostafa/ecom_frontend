import 'package:ecom_frontend/app/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAnimatedContainer extends StatefulWidget {
  const CustomAnimatedContainer({super.key, required this.child});
  final Widget child;
  @override
  State<CustomAnimatedContainer> createState() =>
      _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<CustomAnimatedContainer> {
  var height = Get.height * 0.8;
  var width = Get.width * 0.8;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
          color: AppColor.white,
        ),
        child: widget.child,
      ),
    );
  }
}
