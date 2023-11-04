// ignore_for_file: unnecessary_null_comparison

import 'dart:convert';
import 'dart:developer';

import 'package:country_code_textfield/config/config.dart';
import 'package:country_code_textfield/model/product_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProductController extends GetxController {
  List<ProductModel> productList = [];
  List<ProductModel> categoryProductList = [];
  List<ProductModel> categoryProductList2 = [];
  Map<String, List<ProductModel>> categoryProductLists = {};
  int page = 1;

  String basicAuth =
      'Basic ${base64Encode(utf8.encode('$consumerKey:$secretKey'))}';

  Future<List<ProductModel>> getShopProduct({required int perPage}) async {
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
      }
      return productList;
    } else {
      return throw Exception("Failed to load data");
    }
  }

  Future<List<ProductModel>> getCategoryProduct2(
      {required String categoryId, required String perPage}) async {
    String url = "${baseURL}products?category=$categoryId&per_page=$perPage";
    http.Response response = await http.get(
      Uri.parse(url),
      headers: <String, String>{'authorization': basicAuth},
    );
    if (response.statusCode == 200) {
      categoryProductList.clear();
      final List<dynamic> categoryData = jsonDecode(response.body);
      for (var i in categoryData) {
        log(i['name']);
        categoryProductList.add(ProductModel.fromJson(i));
      }
      return categoryProductList;
    } else {
      return throw Exception("Failed to load data");
    }
  }

  
  Future<List<ProductModel>> getCategoryProduct3(
      {required String categoryId, required String perPage}) async {
    String url = "${baseURL}products?category=$categoryId&per_page=$perPage";
    http.Response response = await http.get(
      Uri.parse(url),
      headers: <String, String>{'authorization': basicAuth},
    );
    if (response.statusCode == 200) {
      categoryProductList2.clear();
      final List<dynamic> categoryData = jsonDecode(response.body);
      for (var i in categoryData) {
        log(i['name']);
        categoryProductList2.add(ProductModel.fromJson(i));
      }
      return categoryProductList2;
    } else {
      return throw Exception("Failed to load data");
    }
  }

  
  
  Future<List<ProductModel>?> getCategoryProduct({
    required String categoryId,
    required int perPage,
  }) async {
    String url = "${baseURL}products?category=$categoryId&per_page=$perPage";
    http.Response response = await http.get(
      Uri.parse(url),
      headers: <String, String>{'authorization': basicAuth},
    );
    if (response.statusCode == 200) {
      final List<dynamic> categoryData = jsonDecode(response.body);
      if (!categoryProductLists.containsKey(categoryId)) {
        categoryProductLists[categoryId] = [];
      } else {
        categoryProductLists[categoryId]!.clear();
      }

      for (var i in categoryData) {
        log(i['name']);
        categoryProductLists[categoryId]!.add(ProductModel.fromJson(i));
      }
      return categoryProductLists[categoryId];
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

  void increaseProductQuantity2(String categoryId, int productId) {
    final categoryProducts = categoryProductLists[categoryId];
    if (categoryProducts != null) {
      final product = categoryProducts.firstWhere(
        (p) => p.id == productId,
      );
      if (product != null) {
        product.quantity++;
        product.totalPrice =
            double.parse(product.price.toString()) * product.quantity;
        update();
      }
    }
  }
}
