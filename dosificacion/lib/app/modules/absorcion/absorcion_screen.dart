import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AbsorcionScreen extends StatelessWidget {
  
  const AbsorcionScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Center(child: Text('Absorcion Screen'))),
      body: const SafeArea(
        child: Center(child: Text('Absorcion Screen')),
      ),
    );
  }
}