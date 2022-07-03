import 'package:get/get.dart';

import 'package:dosificacion/app/modules/crono/crono_controller.dart';

class CronoBinding implements Bindings {

  @override
  void dependencies() {
  Get.lazyPut<CronoController>(() => CronoController());
  }
}