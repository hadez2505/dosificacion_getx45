import 'package:get/get.dart';

import 'package:dosificacion/app/modules/Oxidacion/Oxidacion_controller.dart';

class OxidacionBinding implements Bindings {

  @override
  void dependencies() {
  Get.lazyPut<OxidacionController>(() => OxidacionController());
  }
}