import 'package:get/get.dart';

import 'package:dosificacion/app/modules/Estabilizacion/Estabilizacion_controller.dart';

class EstabilizacionBinding implements Bindings {

  @override
  void dependencies() {
  Get.lazyPut<EstabilizacionController>(() => EstabilizacionController());
  }
}