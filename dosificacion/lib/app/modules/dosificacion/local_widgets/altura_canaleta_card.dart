import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:dosificacion/app/core/utils/barrel files/controllers.dart';
import 'package:dosificacion/app/modules/dosificacion/local_widgets/altura_canaleta.dart';

class AlturaCanaletaCard extends StatelessWidget {
  AlturaCanaletaCard({Key? key, this.function}) : super(key: key);

  final Function? function;

  @override
  Widget build(BuildContext context) {
    final DosificacionController dosificacionController = Get.find<DosificacionController>();
    final RxString caudal1 = dosificacionController.caudalModulo1;
    final RxString caudal2 = dosificacionController.caudalModulo2;
    final Function setCaudal1 = dosificacionController.setcaudalModulo1;
    final Function setCaudal2 = dosificacionController.setcaudalModulo2;
  

    return Card(
      child: Row(
        children: [
          AlturaCanaleta(
            setCaudal: setCaudal1,
            caudal: caudal1,
            modulo: '1',
            function: function,
          ),
          AlturaCanaleta(
            setCaudal: setCaudal2,
            caudal: caudal2,
            modulo: '2',
            function: function,
          ),
          // NewWidget2(label: label, hintText: hintText, setCaudal1: setCaudal1, modulo: modulo, caudal1: caudal1),
        ],
      ),
    );
  }
}
