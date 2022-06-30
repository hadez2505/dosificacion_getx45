import 'package:get/get.dart';

class AbsorcionController extends GetxController {
  RxString _aforoModulo1 = '0'.obs;
  RxString _aforoModulo2 = '0'.obs;
  RxString _ppmModulo1 = '0'.obs;
  RxString _ppmModulo2 = '0'.obs;
  RxString _concentracion = '0'.obs;
  RxString _tiempo = '0'.obs;

  RxString get aforoModulo1 => _aforoModulo1;
  RxString get aforoModulo2 => _aforoModulo2;
  RxString get ppmModulo1 => _ppmModulo1;
  RxString get ppmModulo2 => _ppmModulo2;
  RxString get concentracion => _concentracion;
  RxString get tiempo => _tiempo;

  void setAforoModulo1(String value) =>
      _aforoModulo1.value = value != '' ? value : '';
  void setAforoModulo2(String value) =>
      _aforoModulo2.value = value != '' ? value : '';
  void setConcentracion(String value) =>
      _concentracion.value = value != '' ? value : '';
  void setPpmModulo1(String value) =>
      _ppmModulo1.value = value != '' ? value : '';
  void setPpmModulo2(String value) =>
      _ppmModulo2.value = value != '' ? value : '';
  void setTiempo(String value) => _tiempo.value = value != '' ? value : '';

  void calcularAforoModulo1({required String ppm, required String caudal}) {
    _aforoModulo1.value = ((((double.parse(caudal) * double.parse(ppm)) /
                             (double.parse(_concentracion.value) * 1000)) *
                              1000) *
                              double.parse(_tiempo.value)).toStringAsFixed(2);
  }

  void calcularAforoModulo2({required String ppm, required String caudal}) {
    _aforoModulo2.value = ((((double.parse(caudal) * double.parse(ppm)) /
                             (double.parse(_concentracion.value) * 1000)) *
                              1000) *
                              double.parse(_tiempo.value)).toStringAsFixed(2);
  }
}
