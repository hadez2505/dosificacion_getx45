import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:dosificacion/app/routes/dosificacion_route.dart';

class MenuDosificacion extends StatelessWidget {
  const MenuDosificacion({Key? key}) : super(key: key);

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
            print("hola");
            Get.toNamed(menuOptionsDosificacion[i]
                .route); //mas facil dandole nombre a mis rutas
          },
        ),
      ),
    );
  }
}
