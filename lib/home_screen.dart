// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  PhoneNumber number = PhoneNumber(isoCode: 'BD');
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'BD';
  String? phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InternationalPhoneNumberInput(
                  selectorTextStyle: TextStyle(color: Colors.white),
                  onInputChanged: (PhoneNumber number) {
                    phoneNumber = number.phoneNumber;
                    log(number.phoneNumber.toString());
                  },
                
                  textStyle: TextStyle(color: Colors.white),
                  inputDecoration: InputDecoration(
                    border: OutlineInputBorder(),
              
                  ),
                  onInputValidated: (bool value) {
                    log(value.toString());
                  },
                  errorMessage: "Please provide a valid number",
                  selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      setSelectorButtonAsPrefixIcon: true),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.always,
                  initialValue: number,
                  textFieldController: controller,
                  formatInput: true,
                  keyboardType: TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  inputBorder: OutlineInputBorder(),
                  onSaved: (PhoneNumber number) {
                    log('On Saved: $number');
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      log("Valid phone number is : $phoneNumber");
                    } else {
                      log("not valid");
                    }
                  },
                  child: Text('Validate'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
