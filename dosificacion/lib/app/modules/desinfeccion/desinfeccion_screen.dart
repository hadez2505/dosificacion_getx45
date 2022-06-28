import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesinfeccionScreen extends StatelessWidget {
  
  const DesinfeccionScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Center(child: Text('Desinfeccion Screen'))),
      body: const SafeArea(
        child: Center(child: Text('Desinfeccion Screen')),
      ),
    );
  }
}