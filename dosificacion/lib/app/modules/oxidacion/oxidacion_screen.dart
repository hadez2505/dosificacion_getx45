import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/themes/app_themes.dart';
import '../../core/utils/barrel files/controllers.dart';
import 'package:dosificacion/app/global_widgets/global_widgets.dart';

class OxidacionScreen extends StatelessWidget {
  OxidacionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<DosificacionController>().setcaudalTotal();
    final RxString caudalTotal = Get.find<DosificacionController>().caudalTotal;
    final size = MediaQuery.of(context).size;
    final TextEditingController controllerAforo = TextEditingController();
    final TextEditingController controllerPpm = TextEditingController();
    const String titulo = 'Caudal de entrada';
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Oxidacion Screen'))),
      body: GetBuilder<OxidacionController>(builder: (_) {
        return SingleChildScrollView(
          child: Column(children: [
            CaudalesCard(titulo: titulo, caudal: caudalTotal),
            Card(
              child: Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                height: size.height * 0.5,
                decoration: AppTheme.decorationContainer,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomInputField(
                      label: 'Concentración Dioxido de Cloro',
                      hintText: 'Ingrese un valor',
                      setFunction: _.setConcentracionOxidante,
                    ),
                    CustomInputField(
                      controller: controllerAforo,
                      label: 'Aforo Dioxido de Cloro',
                      hintText: 'Ingrese un valor',
                      setFunction: _.setAforoOxidante,
                    ),
                    CustomInputField(
                      controller: controllerPpm,
                      label: 'PPM Dioxido de Cloro',
                      hintText: 'Ingrese un valor',
                      setFunction: _.setPPMOxidante,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          child: const Text('PPM'),
                          onPressed: () {
                            _.calcularPPMOxidante(
                                aforoOxidante: _.aforoOxidante.value,
                                caudalTotal: caudalTotal.value);
                            controllerPpm.text = _.ppmOxidante.value;
                          },
                        ),
                        ElevatedButton(
                          child: const Text('AFORO'),
                          onPressed: () {
                            _.calcularAforoOxidante(
                                ppmOxidante: _.ppmOxidante.value,
                                caudalTotal: caudalTotal.value);
                            controllerAforo.text = _.aforoOxidante.value;
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ]),
        );
      }),
    );
  }
}
