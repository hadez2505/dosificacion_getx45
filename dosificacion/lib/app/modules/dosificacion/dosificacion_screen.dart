import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../core/themes/app_themes.dart';
import 'local_widgets/altura_canaleta_card.dart';
import 'package:dosificacion/app/core/utils/controllers.dart';
import 'package:dosificacion/app/modules/dosificacion/local_widgets/menu_dosificacion.dart';

class DosificacionScreen extends StatelessWidget {
  const DosificacionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DosificacionController>(builder: (_) {
      final Function function = _.setCaudal;
      return Scaffold(
        appBar: AppBar(title: const Center(child: Text('Dosificacion'))),
        body: SingleChildScrollView(
          child: Column(
            children: [
              AlturaCanaletaCard(function: function,),
              Container(
                decoration: AppTheme.decorationContainer,
                child: const MenuDosificacion()
              )
            ],
          ),
        )
      );
    });
  }
}
