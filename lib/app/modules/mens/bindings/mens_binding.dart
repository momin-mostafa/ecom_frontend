import 'package:get/get.dart';

import '../controllers/mens_controller.dart';

class MensBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MensController>(
      () => MensController(),
    );
  }
}
