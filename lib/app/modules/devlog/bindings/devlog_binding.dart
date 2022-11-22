import 'package:get/get.dart';

import '../controllers/devlog_controller.dart';

class DevlogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DevlogController>(
      () => DevlogController(),
    );
  }
}
