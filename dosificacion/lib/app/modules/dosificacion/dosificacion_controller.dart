import 'dart:math';

import 'package:get/get.dart';

class DosificacionController extends GetxController {
  var _caudalModulo1 = '0'.obs;
  var _caudalModulo2 = '0'.obs;
  var _caudalTotal = '0'.obs;

  RxString get caudalModulo1 => _caudalModulo1;
  RxString get caudalModulo2 => _caudalModulo2;
  RxString get caudalTotal => _caudalTotal;

  void setcaudalModulo1(String caudalModulo1) {
    _caudalModulo1.value = caudalModulo1 != '' ? caudalModulo1 : '';
  }

  void setcaudalModulo2(String caudalModulo2) {
    _caudalModulo2.value = caudalModulo2 != '' ? caudalModulo2 : '';
  }

  void setcaudalTotal() => _caudalTotal.value =
      (double.parse(caudalModulo1.value) + double.parse(caudalModulo2.value))
          .toStringAsFixed(2);

  void setCaudal(String value, Function caudalModulo) {
    var caudal = value != ''
        ? (pow(double.parse(value), 1.522) * 690).toStringAsFixed(2)
        : '';
    caudalModulo(caudal);
  }
}
