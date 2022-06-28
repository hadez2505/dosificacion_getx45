import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuHomeOptionsModel {
  final String route, name;
  final IconData icon;
  final Widget screen;
  final Bindings binding;

  MenuHomeOptionsModel({
    required this.route, 
    required this.name, 
    required this.icon, 
    required this.screen, 
    required this.binding});
}