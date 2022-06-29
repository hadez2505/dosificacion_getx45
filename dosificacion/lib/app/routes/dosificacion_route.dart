import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/utils/screens.dart';
import 'package:dosificacion/app/core/utils/models.dart';
import 'package:dosificacion/app/core/utils/bindings.dart';

class DosificacionRoute {
  static const initialRoute = '/';

  static final menuDosificacionOptions = <MenuDosificacionOptionsModel> [
    MenuDosificacionOptionsModel(route: '/oxidacion',      name: 'OXIDACION',   screen:  OxidacionScreen(),      icon: Icons.invert_colors_on_rounded, binding: OxidacionBinding()),
    MenuDosificacionOptionsModel(route: '/absorcion',      name: 'CARBON',      screen: const AbsorcionScreen(),      icon: Icons.invert_colors_on_rounded, binding: AbsorcionBinding()),
    MenuDosificacionOptionsModel(route: '/cuagulacion',    name: 'PAC',         screen: const CuagualacionScreen(),   icon: Icons.invert_colors_on_rounded, binding: CuagulacionBinding()),
    MenuDosificacionOptionsModel(route: '/floculacion',    name: 'POLIMERO',    screen: const FloculacionScreen(),    icon: Icons.invert_colors_on_rounded, binding: FloculacionBinding()),
    MenuDosificacionOptionsModel(route: '/estabilizacion', name: 'CAL',         screen: const EstabilizacionScreen(), icon: Icons.invert_colors_on_rounded, binding: EstabilizacionBinding()),
    MenuDosificacionOptionsModel(route: '/desinfeccion',   name: 'HIPOCLORITO', screen: const DesinfeccionScreen(),   icon: Icons.invert_colors_on_rounded, binding: DesinfeccionBinding()),
  ];

  static List<GetPage<dynamic>>? getAppRoutesDosificacion(){
    List<GetPage<dynamic>>? appRoutes = [];
    appRoutes.addAll({GetPage(name: '/', page:() => const DosificacionScreen(), binding:DosificacionBinding())});
    for(final option in menuDosificacionOptions){
      appRoutes.addAll({GetPage(name: option.route, page: ()=>option.screen, binding: option.binding)});
    }
    return appRoutes;
  }
}
