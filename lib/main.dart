import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/mainscreen.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const getX());
}

class getX extends StatelessWidget {
  const getX({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child: Mainscreen())),
    );
  }
}
