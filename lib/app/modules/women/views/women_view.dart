import 'package:ecom_frontend/app/data/widget/scaffold/custom_scaffold.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/women_controller.dart';

class WomenView extends GetView<WomenController> {
  const WomenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const CustomScaffold();
  }
}
