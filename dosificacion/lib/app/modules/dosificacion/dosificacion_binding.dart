import 'package:get/get.dart';

import 'package:dosificacion/app/modules/Dosificacion/Dosificacion_controller.dart';

class DosificacionBinding implements Bindings {

  @override
  void dependencies() {
  Get.lazyPut<DosificacionController>(() => DosificacionController());
  }
}