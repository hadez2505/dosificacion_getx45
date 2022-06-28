
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuDosificacionOptionsModel {
  final String route, name;
  final IconData icon;
  final Widget screen;
  final Bindings binding;

  MenuDosificacionOptionsModel({
    required this.route, 
    required this.name, 
    required this.screen, 
    required this.icon, 
    required this.binding});

}
