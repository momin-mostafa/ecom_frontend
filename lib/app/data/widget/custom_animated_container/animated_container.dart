import 'package:ecom_frontend/app/data/enums/animated_container_type.dart';
import 'package:ecom_frontend/app/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAnimatedContainer extends StatefulWidget {
  const CustomAnimatedContainer(
      {super.key, required this.child, required this.type});

  final Widget child;
  final UserType type;

  @override
  State<CustomAnimatedContainer> createState() =>
      _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<CustomAnimatedContainer> {
  var height = Get.height * 0.79;
  var width = Get.width * 0.8;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: widget.type == UserType.female
            ? const BorderRadius.only(
                topRight: Radius.circular(8), bottomRight: Radius.circular(8))
            : const BorderRadius.only(
                topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
      ),
      elevation: 6,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          // color: Colors.red,
          color: AppColor.white,
          borderRadius: widget.type == UserType.female
              ? const BorderRadius.only(
                  topRight: Radius.circular(8), bottomRight: Radius.circular(8))
              : const BorderRadius.only(
                  topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
          // ),
        ),
        child: widget.child,
      ),
    );
  }
}
