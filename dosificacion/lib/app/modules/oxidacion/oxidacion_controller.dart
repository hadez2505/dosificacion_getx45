import 'package:get/get.dart';

class OxidacionController extends GetxController {
  RxString _concentracionOxidante = '0'.obs;
  RxString _aforoOxidante = '0'.obs;
  RxString _ppmOxidante = '0'.obs;

  RxString get concentracionOxidante => _concentracionOxidante;
  RxString get aforoOxidante => _aforoOxidante;
  RxString get ppmOxidante => _ppmOxidante;

  void setConcentracionOxidante(String value) {
    _concentracionOxidante.value = value != '' ? value : '';
  }

  void setAforoOxidante(String value) {
    _aforoOxidante.value = value != '' ? value : '';
  }

  void setPPMOxidante(String value) {
    _ppmOxidante.value = value != '' ? value : '';
  }

  void calcularAforoOxidante({required String ppmOxidante, required String caudalTotal}) {
    _aforoOxidante.value =
        ((double.parse(caudalTotal) * double.parse(ppmOxidante)) /
                (double.parse(_concentracionOxidante.value) * 1000) *
                3600)
            .toStringAsFixed(2);
  }

  void calcularPPMOxidante({required String aforoOxidante, required String caudalTotal}) {
    _ppmOxidante.value = (((double.parse(aforoOxidante) / 3.6) *
                            double.parse(_concentracionOxidante.value)) /
                            double.parse(caudalTotal))
                            .toStringAsFixed(2);
    
  }
}