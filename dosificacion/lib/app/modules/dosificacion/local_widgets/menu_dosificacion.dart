import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:dosificacion/app/routes/dosificacion_route.dart';
import 'package:dosificacion/app/core/utils/barrel_files/controllers.dart';

class MenuDosificacion extends StatelessWidget {
  const MenuDosificacion({
    Key? key,
    required this.function,
  }) : super(key: key);

  final Function function;

  @override
  Widget build(BuildContext context) {
    final menuOptionsDosificacion = DosificacionRoute.menuDosificacionOptions;

    return SizedBox(
      width: double.infinity,
      height: double.maxFinite,
      child: ListView.separated(
        itemCount: menuOptionsDosificacion.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (_, i) => ListTile(
          leading: Icon(
            menuOptionsDosificacion[i].icon,
          ),
          title: Text(menuOptionsDosificacion[i].name),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
          onTap: () {
            function();
            Get.toNamed(menuOptionsDosificacion[i]
                .route); //mas facil dandole nombre a mis rutas
          },
        ),
      ),
    );
  }
}
