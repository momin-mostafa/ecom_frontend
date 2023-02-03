import 'package:get/get.dart';

import '../controllers/women_controller.dart';

class WomenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WomenController>(
      () => WomenController(),
    );
  }
}
