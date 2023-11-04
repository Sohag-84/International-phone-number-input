// ignore_for_file: unused_local_variable

import 'package:country_code_textfield/views/product_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/product_controller.dart';

void main() {
  runApp(const MyApp());
  final controller = Get.put(ProductController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProductListScreen(),
    );
  }
}
