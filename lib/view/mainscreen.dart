import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mainscreen extends StatelessWidget {
  var counter = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Column(
                children: [
                  Text("product name : $counter"),
                  Text("product price : $counter"),
                  Text("product offer : $counter"),
                ],
              );
            }),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                counter = counter + 1;
              },
              child: Text("Press"),
            ),
          ],
        ),
      ),
    );
  }
}
