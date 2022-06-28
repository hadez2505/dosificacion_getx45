import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OxidacionScreen extends StatelessWidget {
  
  const OxidacionScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Center(child: Text('Oxidacion Screen'))),
      body: const SafeArea(
        child: Center(child: Text('Oxidacion Screen')),
      ),
    );
  }
}