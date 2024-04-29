import 'package:e_commerce_project/api_service.dart';
import 'package:e_commerce_project/home_page.dart';
import 'package:e_commerce_project/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class RegistrationController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

  void registerData(BuildContext context) async {
    FocusScope.of(context).unfocus();

    isLoading = true;
    update();

    var response = await ApiService().register(
      name: nameController.text,
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
