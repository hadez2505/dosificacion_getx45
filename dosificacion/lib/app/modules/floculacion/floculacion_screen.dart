import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FloculacionScreen extends StatelessWidget {
  
  const FloculacionScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Center(child: Text('Floculacion Screen'))),
      body: const SafeArea(
        child: Center(child: Text('Floculacion Screen')),
      ),
    );
  }
}