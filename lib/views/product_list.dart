// ignore_for_file: prefer_const_constructors, unused_element, prefer_final_fields

import 'package:country_code_textfield/controllers/product_controller.dart';
import 'package:country_code_textfield/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final ProductController controller = Get.put(ProductController());
  ScrollController _scrollController = ScrollController();
  bool isLoading = false; // Add this flag

  Future<void> _loadMoreData() async {
    if (isLoading) {
      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      await controller.getShopProduct();
     setState(() {
        controller.perPage++;
        controller.page++;
     });
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        controller.getShopProduct();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product list"),
        centerTitle: true,
      ),
      body: GetBuilder<ProductController>(
        builder: (ProductController controller) {
          return Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "Subtotal Price: ${controller.calculateSubtotal(controller.productList)}",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Expanded(
                child: FutureBuilder(
                  future: controller.getShopProduct(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return NotificationListener<ScrollNotification>(
                        onNotification: (ScrollNotification notification) {
                          if (notification is ScrollEndNotification) {
                            _loadMoreData(); // Load more data on scroll end
                          }
                          return true;
                        },
                        child: ListView.builder(
                          controller: _scrollController,
                          shrinkWrap: true,
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, index) {
                            ProductModel product = snapshot.data[index];
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  product.images[0].src.toString(),
                                  height: 80,
                                  width: 80,
                                ),
                                SizedBox(height: 10),
                                Text(product.name.toString()),
                                Text(product.price.toString()),
                                Text("Total ${product.totalPrice}"),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          controller.decreaseProductQuantity(
                                            int.parse(product.id.toString()),
                                          );
                                        },
                                        icon: Icon(Icons.minimize)),
                                    Text(product.quantity.toString()),
                                    IconButton(
                                        onPressed: () {
                                          controller.increaseProductQuantity(
                                            int.parse(product.id.toString()),
                                          );
                                        },
                                        icon: Icon(Icons.add)),
                                    SizedBox(height: 20),
                                  ],
                                )
                              ],
                            );
                          },
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
