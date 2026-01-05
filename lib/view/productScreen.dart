import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/product_controller.dart';
import 'package:flutter_application_1/model/product.dart';
import 'package:flutter_application_1/view/mainscreen.dart';
import 'package:get/get.dart';

class Productscreen extends StatelessWidget {
  ProductController _productcontrooler = ProductController(
    product: Product(name: "chips", price: 10000, offer: 20).obs,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Column(
                children: [
                  Text(
                    "product name : ${_productcontrooler.product.value.name}",
                  ),
                  Text(
                    "product price : ${_productcontrooler.product.value.price}",
                  ),
                  Text(
                    "product offer : ${_productcontrooler.product.value.offer}",
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(Mainscreen());
                    },
                    child: Text("back"),
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
