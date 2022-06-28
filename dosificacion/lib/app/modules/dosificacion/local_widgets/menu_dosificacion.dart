import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../../core/utils/routes.dart';

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
        itemBuilder: (context, index) => ListTile(
          leading: Icon(
            menuOptionsDosificacion[index].icon,
          ),
          title: Text(menuOptionsDosificacion[index].name),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
          onTap: () {
            Get.toNamed(menuOptionsDosificacion[index].route); //mas facil dandole nombre a mis rutas
          },
        ),
      ),
    );
  }
}
