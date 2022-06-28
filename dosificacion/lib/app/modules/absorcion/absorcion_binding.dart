import 'package:get/get.dart';

import 'package:dosificacion/app/modules/absorcion/absorcion_controller.dart';

class AbsorcionBinding implements Bindings {

  @override
  void dependencies() {
  Get.lazyPut<AbsorcionController>(() => AbsorcionController());
  }
}