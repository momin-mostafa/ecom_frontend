import 'package:ecom_frontend/app/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    this.icon,
    this.textEditingController,
    this.lable,
    this.iconOnTap,
  }) : super(key: key);
  final TextEditingController? textEditingController;
  final String? lable;
  final IconData? icon;
  final void Function()? iconOnTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        height: Get.height * 0.08,
        width: Get.width * 0.35,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(lable ?? '',
                  style: TextStyle(color: AppColor.accentColor)),
            ),
            SizedBox(
              width: Get.width * 0.2,
              child: TextField(
                controller: textEditingController,
              ),
            ),
            IconButton(
              onPressed: iconOnTap,
              icon: Icon(icon ?? Icons.search),
            )
          ],
        ),
      ),
    );
  }
}
