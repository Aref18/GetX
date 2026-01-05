import 'package:flutter_application_1/model/product.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  Rx<Product> product;
  ProductController({required this.product});
}
