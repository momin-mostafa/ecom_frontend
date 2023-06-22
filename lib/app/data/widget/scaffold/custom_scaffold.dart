import 'package:ecom_frontend/app/routes/app_pages.dart';
import 'package:ecom_frontend/app/utils/app_color.dart';
import 'package:ecom_frontend/app/utils/app_const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, this.body, this.floatingActionButton});
  final Widget? body;
  final FloatingActionButton? floatingActionButton;
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
            Button(text: "Home", onPressed: () => Get.offAllNamed(Routes.HOME)),
            Button(
              text: 'About us',
              onPressed: () => Get.offAllNamed(Routes.ABOUT),
            ),
            Button(
              text: 'Men\'s Corner',
              onPressed: () => Get.offAllNamed(Routes.MENS),
            ),
            Button(
              text: 'Women\'s Corner',
              onPressed: () => Get.offAllNamed(Routes.WOMEN),
            ),
            Button(
              text: 'Contact Us',
              onPressed: () => Get.offAllNamed(Routes.CONTACT),
            ),
          ],
        ),
      ),
      body: body,
      floatingActionButton: floatingActionButton,
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
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
