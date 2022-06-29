import 'package:get/get.dart';

import 'package:dosificacion/app/modules/oxidacion/oxidacion_controller.dart';

class OxidacionBinding implements Bindings {

  @override
  void dependencies() {
  Get.lazyPut<OxidacionController>(() => OxidacionController());
  }
}