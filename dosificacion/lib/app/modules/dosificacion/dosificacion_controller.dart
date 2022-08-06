import 'dart:math';

import 'package:dosificacion/app/core/utils/barrel_files/models.dart';
import 'package:get/get.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

import '../../data/provider/db_provider.dart';

class DosificacionController extends GetxController {
  final _stopWatch = StopWatchTimer(mode: StopWatchMode.countUp);
  var _caudalModulo1 = '0'.obs;
  var _caudalModulo2 = '0'.obs;
  var _caudalTotal = '0'.obs;
  DatosDosificacionModel datos = DatosDosificacionModel();

  RxString get caudalModulo1 => _caudalModulo1;
  RxString get caudalModulo2 => _caudalModulo2;
  RxString get caudalTotal => _caudalTotal;
  StopWatchTimer get stopWatch => _stopWatch;

  @override
  void onInit() {
    _stopWatch.rawTime.listen((value) =>
        print('rawTime $value ${StopWatchTimer.getDisplayTime(value)}'));
    // _stopWatch.minuteTime.listen((value) => print('minuteTime $value'));
    _stopWatch.secondTime.listen((value) => print('secondTime $value'));
    listarDatos();
    super.onInit();
  }

  nuevoDato() async {
    final nuevoDato = DatosDosificacionModel(
        caudalModulo1: _caudalModulo1.value,
        caudalModulo2: _caudalModulo2.value);
    final id = await DbProvider.db.insert(nuevoDato);
    nuevoDato.id = id;
    datos.caudalModulo1 = nuevoDato.caudalModulo1;
    datos.caudalModulo2 = nuevoDato.caudalModulo2;
    datos.id = nuevoDato.id;
  }

  updateDatos() async {
    final nuevoDato = DatosDosificacionModel(
        caudalModulo1: _caudalModulo1.value,
        caudalModulo2: _caudalModulo2.value);
    final id = await DbProvider.db.update(nuevoDato);
    nuevoDato.id = id;
    datos.caudalModulo1 = nuevoDato.caudalModulo1;
    datos.caudalModulo2 = nuevoDato.caudalModulo2;
    datos.id = nuevoDato.id;
  }

  listarDatos() async {
    final res = await DbProvider.db.listar();
    print(' este es el caudal del modulo 1: ${res?.caudalModulo1}');
    print(' este es el caudal del modulo 2: ${res?.caudalModulo2}');
    print(' este es el id: ${res?.id}');
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
  displayTime(int value) =>
      StopWatchTimer.getDisplayTime(value, hours: true);

  @override
  void onClose() {
    super.onClose();
    if (datos.id == null) {
      nuevoDato();
    } else {
      updateDatos();
    }
  }

  // @override
  // void onReady() {
  //   if (datos.id == null) {
  //     nuevoDato();
  //   } else {
  //     updateDatos();
  //   }
  //   super.onReady();
  // }
}
