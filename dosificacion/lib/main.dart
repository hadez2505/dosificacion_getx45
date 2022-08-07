import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/core/themes/app_themes.dart';
import 'app/core/utils/barrel_files/routes.dart';
import 'app/data/provider/preferences.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  //final DosificacionController dosificacionController = Get.put(DosificacionController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: DosificacionRoute.initialRoute,
      getPages: DosificacionRoute.getAppRoutesDosificacion(),
      theme: AppTheme.lightTheme,
    );
  }
}
