import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CuagualacionScreen extends StatelessWidget {
  
  const CuagualacionScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Center(child: Text('Cuagualacion Screen'))),
      body: const SafeArea(
        child: Center(child: Text('Cuagualacion Screen')),
      ),
    );
  }
}