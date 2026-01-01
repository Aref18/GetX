import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/product.dart';
import 'package:get/get.dart';

class Mainscreen extends StatelessWidget {
  var counter = 0.obs;
  Rx<Product> product = Product(name: "chips", price: 10000, offer: 2).obs;
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
                  Text("product name : ${product.value.name}"),
                  Text("product price : ${product.value.price}"),
                  Text("product offer : ${product.value.offer}"),
                ],
              );
            }),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                product.update((val) {
                  val!.name = "pofak";
                  val.price = 8000;
                  val.offer = 0;
                });
              },
              child: Text("Press"),
            ),
          ],
        ),
      ),
    );
  }
}
