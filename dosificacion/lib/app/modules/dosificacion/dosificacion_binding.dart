import 'package:get/get.dart';

import 'package:dosificacion/app/modules/dosificacion/dosificacion_controller.dart';

class DosificacionBinding implements Bindings {

  @override
  void dependencies() {
  Get.put<DosificacionController>(DosificacionController());
  }
}