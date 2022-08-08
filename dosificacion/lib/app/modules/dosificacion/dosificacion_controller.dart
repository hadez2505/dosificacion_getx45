import 'dart:math';
import 'package:get/get.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

import 'dosificacion_repository.dart';
import 'package:dosificacion/app/core/utils/barrel_files/models.dart';

class DosificacionController extends GetxController {
  var _caudalModulo1 = '0'.obs;
  var _caudalModulo2 = '0'.obs;
  var _caudalTotal = '0'.obs;
  var _alturaModulo1 = '0'.obs;
  var _alturaModulo2 = '0'.obs;
  final _stopWatch = StopWatchTimer(mode: StopWatchMode.countUp);
  DatosDosificacionModel datos = DatosDosificacionModel();

  RxString get caudalModulo1 => _caudalModulo1;
  RxString get caudalModulo2 => _caudalModulo2;
  RxString get caudalTotal => _caudalTotal;
  StopWatchTimer get stopWatch => _stopWatch;

  @override
  void onInit() {
    print('onInit');
    super.onInit();
  }

  @override
  void onReady() async {
    print('onReady');
    await DosificacionRepository.data();
    ensayo();
    super.onReady();
  }

  ensayo() {
    datos = DosificacionRepository.datos;
    if (datos.id != null) {
      _alturaModulo1.value = datos.alturaModulo1!;
      _alturaModulo2.value = datos.alturaModulo2!;
    } else {
      print('no se pudo');
    }
  }

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

  void start() => _stopWatch.onExecute.add(StopWatchExecute.start);
  void stop() => _stopWatch.onExecute.add(StopWatchExecute.stop);
  void reset() {
    _stopWatch.clearPresetTime();
    _stopWatch.onExecute.add(StopWatchExecute.reset);
  }

  void setSeconds() => _stopWatch.setPresetSecondTime(5);
  displayTime(int value) => StopWatchTimer.getDisplayTime(value, hours: true);
}
