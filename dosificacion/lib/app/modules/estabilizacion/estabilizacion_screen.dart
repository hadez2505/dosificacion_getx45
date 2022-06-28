import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EstabilizacionScreen extends StatelessWidget {
  
  const EstabilizacionScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Center(child: Text('Estabilizacion Screen'))),
      body: const SafeArea(
        child: Center(child: Text('Estabilizacion Screen')),
      ),
    );
  }
}