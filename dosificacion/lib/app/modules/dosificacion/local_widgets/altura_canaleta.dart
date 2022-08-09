import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/themes/app_themes.dart';
import '../../../global_widgets/custom_input_field.dart';

class AlturaCanaleta extends StatelessWidget {
  const AlturaCanaleta(
      {Key? key,
      required this.setCaudal,
      required this.caudal,
      required this.modulo,
      this.function,
      required this.controller})
      : super(key: key);

  final Function? function;
  final Function setCaudal;
  final RxString caudal;
  final String modulo;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(2),
        decoration: AppTheme.decorationContainer,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(
                    left: 5, right: 5, top: 10, bottom: 5),
                child: CustomInputField(
                  controller: controller,
                  function: setCaudal,
                  setFunction: function,
                  label: 'Canaleta modulo $modulo',
                  hintText: 'Altura canaleta',
                )),
            Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  'Caudal modulo $modulo',
                )),
            Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Obx(() {
                  return Text(
                    caudal.value,
                    style: const TextStyle(
                        fontStyle: FontStyle.italic, fontSize: 25),
                  );
                })),
          ],
        ),
      ),
    );
  }
}
