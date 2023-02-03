import 'package:ecom_frontend/app/routes/app_pages.dart';
import 'package:ecom_frontend/app/utils/app_color.dart';
import 'package:ecom_frontend/app/utils/app_const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, this.body});
  final Widget? body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Image.asset(
          AppConst.logoImg,
        ),
        leadingWidth: Get.width / 5.7,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            button(
              text: "Home",
              onPressed: () => Get.offAllNamed(Routes.HOME),
            ),
            button(
              text: 'About us',
              onPressed: () => Get.offAllNamed(Routes.ABOUT),
            ),
            button(
              text: 'Men\'s Corner',
              onPressed: () => Get.offAllNamed(Routes.MENS),
            ),
            button(
              text: 'Women\'s Corner',
              onPressed: () => Get.offAllNamed(Routes.WOMEN),
            ),
            button(
              text: 'Contact Us',
              onPressed: () => Get.offAllNamed(Routes.CONTACT),
            ),
          ],
        ),
      ),
      body: body,
    );
  }

  Widget button({
    void Function()? onPressed,
    String text = '',
  }) {
    var background = MaterialStateProperty.all(AppColor.backgroundColor);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(AppColor.buttonTextColor),
          backgroundColor: background,
        ),
        child: Text(
          text,
        ),
      ),
    );
  }
}
