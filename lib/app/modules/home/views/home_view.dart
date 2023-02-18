import 'package:ecom_frontend/app/modules/basic/common_widget_factory.dart';
import 'package:ecom_frontend/app/utils/app_color.dart';

import 'package:ecom_frontend/app/data/widget/scaffold/custom_scaffold.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonWidgetFactory.createPageCard(),
          ],
        ),
      ),
    );
  }
}
