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
    const String tituloModulo1 = 'Caudal Modulo 1';
    const String tituloModulo2 = 'Caudal Modulo 2';
    bool isPlaying = false;
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
                              decoration: AppTheme.decorationContainer,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [                              
                                  CustomInputField(),
                                  SizedBox(height: 10,),
                                  CustomInputField(),
                                  SizedBox(height: 10,),
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
                              decoration: AppTheme.decorationContainer,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomInputField(),
                                  SizedBox(height: 10,),
                                  CustomInputField(),
                                  SizedBox(height: 10,),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.timelapse), color: AppTheme.primary, iconSize: 35),
                            IconButton(onPressed: ()=> isPlaying = true,icon: Icon(Icons.play_circle_fill_outlined), color: AppTheme.primary, iconSize: 45,),
                            IconButton(onPressed: ()=> isPlaying = false,icon: Icon(Icons.pause_circle_filled_outlined), color: AppTheme.primary, iconSize: 45,),
                            IconButton(onPressed: (){}, icon: Icon(Icons.refresh_outlined), color: AppTheme.primary, iconSize: 35)
                          ]
                        )
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
