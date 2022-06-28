import 'package:get/get.dart';

import 'package:dosificacion/app/modules/cuagulacion/cuagulacion_controller.dart';

class CuagulacionBinding implements Bindings {

  @override
  void dependencies() {
  Get.lazyPut<CuagulacionController>(() => CuagulacionController());
  }
}