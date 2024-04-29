import 'package:e_commerce_project/api_service.dart';
import 'package:e_commerce_project/home_page.dart';
import 'package:e_commerce_project/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

  void loginData(BuildContext context) async {
    FocusScope.of(context).unfocus();

    isLoading = true;
    update();

    var response = await ApiService().login(
      phonenumber: phoneController.text,
      password: passwordController.text,
    );

    print("track ${response.statusCode}");

    if (response.statusCode == 200) {
      isLoading = false;
      update();
      box.write('token', response.data['token']);
      Get.snackbar(
        'Success',
        '${response.data['message']}',
        backgroundColor: Colors.green,
        snackPosition: SnackPosition.BOTTOM,
      );
      Get.to(() => HomePage());

    } else {
      isLoading = false;
      update();
      Get.snackbar(
        'Error',
        '${response.data['message']}',
        backgroundColor: Colors.red,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
