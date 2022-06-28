import 'package:get/get.dart';

import 'package:dosificacion/app/modules/desinfeccion/desinfeccion_controller.dart';

class DesinfeccionBinding implements Bindings {

  @override
  void dependencies() {
  Get.lazyPut<DesinfeccionController>(() => DesinfeccionController());
  }
}