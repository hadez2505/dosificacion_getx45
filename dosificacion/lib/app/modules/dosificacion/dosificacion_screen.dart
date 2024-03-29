import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/themes/app_themes.dart';
import '../../data/provider/db_provider.dart';
import 'local_widgets/altura_canaleta_card.dart';
import 'package:dosificacion/app/core/utils/barrel_files/controllers.dart';
import 'package:dosificacion/app/modules/dosificacion/local_widgets/menu_dosificacion.dart';

class DosificacionScreen extends StatelessWidget {
  const DosificacionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DbProvider.db.dataBase;

    return GetBuilder<DosificacionController>(builder: (_) {
      final Function function = _.setCaudal;
      return Scaffold(
          appBar: AppBar(title: const Center(child: Text('Dosificacion'))),
          body: SingleChildScrollView(
            child: Column(
              children: [
                AlturaCanaletaCard(
                  function: function,
                ),
                Container(
                    decoration: AppTheme.decorationContainer,
                    child: MenuDosificacion(function: _.savedData))
              ],
            ),
          ));
    });
  }
}
