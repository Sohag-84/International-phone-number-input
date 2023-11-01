// ignore_for_file: prefer_const_constructors

import 'package:country_code_textfield/controllers/user_controller.dart';
import 'package:country_code_textfield/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final controller = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User List"),
        centerTitle: true,
      ),
      body: GetBuilder<UserController>(
        builder: (UserController controller) {
          return FutureBuilder(
            future: controller.getUserApi(),
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView.builder(
                  itemCount: controller.userList.length,
                  itemBuilder: (context, index) {
                    UserModel user = snapshot.data[index];
                    return ListTile(
                      title: Text(user.name.toString()),
                      subtitle: Text(user.email.toString()),
                    );
                  },
                );
              }
            },
          );
        },
      ),
    );
  }
}
