import 'dart:convert';
import 'dart:developer';

import 'package:country_code_textfield/config/config.dart';
import 'package:country_code_textfield/model/product_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProductController extends GetxController {
  List<ProductModel> productList = [];
  int perPage = 5;
  int page = 1;

  String basicAuth =
      'Basic ${base64Encode(utf8.encode('$consumerKey:$secretKey'))}';

  Future<List<ProductModel>> getShopProduct() async {
    String url = "${baseURL}products?per_page=$perPage&page=$page";
    http.Response response = await http.get(
      Uri.parse(url),
      headers: <String, String>{'authorization': basicAuth},
    );
    if (response.statusCode == 200) {
      final List<dynamic> categoryData = jsonDecode(response.body);
      for (var i in categoryData) {
        log(i['name']);
        productList.add(ProductModel.fromJson(i));
        update();
      }
      update();
      return productList;
    } else {
      return throw Exception("Failed to load data");
    }
  }

  void increaseProductQuantity(int productId) {
    final product = productList.firstWhere(
      (p) => p.id == productId,
    );
    product.quantity++;
    product.totalPrice =
        double.parse(product.price.toString()) * product.quantity;
    update();
  }

  void decreaseProductQuantity(int productId) {
    final product = productList.firstWhere(
      (p) => p.id == productId,
    );
    if (product.quantity > 0) {
      product.quantity--;
    }
    product.totalPrice =
        double.parse(product.price.toString()) * product.quantity;
    update();
  }

  double calculateSubtotal(List<ProductModel> products) {
    double subtotal = 0.0;
    for (final product in products) {
      subtotal += double.parse(product.price.toString()) * product.quantity;
    }
    return subtotal;
  }
}
