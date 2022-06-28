import 'package:get/get.dart';

import 'package:dosificacion/app/modules/Floculacion/Floculacion_controller.dart';

class FloculacionBinding implements Bindings {

  @override
  void dependencies() {
  Get.lazyPut<FloculacionController>(() => FloculacionController());
  }
}