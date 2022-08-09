import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
    this.function,
    this.setFunction,
    this.label,
    this.hintText,
    this.initialValue,
    this.captura,
    this.controller,
  }) : super(key: key);

  final Function? function;
  final Function? setFunction;
  final String? label;
  final String? hintText;
  final String? initialValue;
  final String? captura;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: initialValue,
      autofocus: false,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
      ),
      style: const TextStyle(fontSize: 18),
      keyboardType: TextInputType.number,
      onChanged: (value) {
        if (setFunction != null && function != null) {
          setFunction!(value, function);
        } else if (setFunction != null) {
          setFunction!(value);
        }
      },
    );
  }
}
