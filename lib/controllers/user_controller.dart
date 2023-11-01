import 'dart:convert';
import 'dart:developer';

import 'package:country_code_textfield/model/user_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UserController extends GetxController {
  List<UserModel> userList = [];

  Future<List<UserModel>> getUserApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (var i in data) {
        log(i['name']);
        userList.add(UserModel.fromJson(i));
      }
      return userList;
    }
    return userList;
  }

  @override
  void onInit() {
    super.onInit();
    getUserApi();
  }
}
