import 'package:dosificacion/app/global_widgets/caudales_card.dart';
import 'package:dosificacion/app/global_widgets/custom_input_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/themes/app_themes.dart';
import '../../core/utils/controllers.dart';

class AbsorcionScreen extends StatelessWidget {
  const AbsorcionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RxString caudalModulo1 = Get.find<DosificacionController>().caudalModulo1;
    final RxString caudalModulo2 = Get.find<DosificacionController>().caudalModulo2;
    final size = MediaQuery.of(context).size;
    const String tituloModulo1 = 'Caudal Modulo 1';
    const String tituloModulo2 = 'Caudal Modulo 2';
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Absorcion Screen'))),
      body: GetBuilder<AbsorcionController>(
        builder: (_){
          return SingleChildScrollView(
            child: Column(
              children: [
                Card(
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: AppTheme.decorationContainer,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomInputField(
                                label: 'Concentración carbon',
                                hintText: 'ingrese un valor',
                                setFunction: _.setConcentracion,
                              ),
                            ],
                          ),
                        )
                      ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          CaudalesCard(titulo: tituloModulo1, caudal: caudalModulo1),
                          
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
                                  CustomInputField(),
                                  CustomInputField(),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                        child: const Text('PPM'),
                                        onPressed: () {},
                                      ),
                                      SizedBox(height: 10,),
                                      ElevatedButton(
                                        child: const Text('AFORO'),
                                        onPressed: () {},
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          CaudalesCard(titulo: tituloModulo2, caudal: caudalModulo2),
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
                                  CustomInputField(),
                                  CustomInputField(),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        child: const Text('PPM'),
                                        onPressed: () {},
                                      ),
                                      SizedBox(height: 10,),
                                      ElevatedButton(
                                        child: const Text('AFORO'),
                                        onPressed: () {},
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Card(
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: AppTheme.decorationContainer,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomInputField(
                                label: 'Tiempo de aforo (s)',
                                hintText: 'ingrese un valor',
                                setFunction: _.setTiempo,
                              ),
                            ],
                          ),
                        )
                      ),
              ],
            ),
          );
        },
      )
    );
  }
}
