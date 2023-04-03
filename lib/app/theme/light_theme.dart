import 'package:ecom_frontend/app/utils/app_color.dart';
import 'package:flutter/material.dart';

ThemeData light = ThemeData(
  primaryColor: AppColor.primaryColor,
  secondaryHeaderColor: AppColor.secondaryColor,
  // backgroundColor: AppColor.backgroundColor,
  colorScheme: ColorScheme.light(
    primary: AppColor.colorSchemePrimary,
    secondary: AppColor.colorSchemeSecondary,
    background: AppColor.backgroundColor,
  ),
  scaffoldBackgroundColor: AppColor.scaffoldBackgroundColor,
  // textTheme: TextTheme(
  //   // button: TextStyle(
  //   //   color: AppColor.buttonTextColor,
  //   //   backgroundColor: AppColor.backgroundColor,
  //   //   fontWeight: FontWeight.bold,
  //   // ),
  // ),
);
