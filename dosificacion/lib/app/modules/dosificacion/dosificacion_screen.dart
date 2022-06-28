import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DosificacionScreen extends StatelessWidget {
  
  const DosificacionScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Center(child: Text('Dosificacion Screen'))),
      body: const SafeArea(
        child: Center(child: Text('Dosificacion Screen')),
      ),
    );
  }
}