import 'package:e_commerce_project/api_service.dart';
import 'package:e_commerce_project/home_page.dart';
import 'package:e_commerce_project/login/views/login_screen.dart';
import 'package:e_commerce_project/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LogoutController extends GetxController {

  bool isLoading = false;

  void logoutData(BuildContext context) async {
    FocusScope.of(context).unfocus();

    isLoading = true;
    update();

    var response = await ApiService().logout(
      
    );

    print("track ${response.statusCode}");

    if (response.statusCode == 200) {
      isLoading = false;
      update();
      box.remove('token');
      Get.snackbar(
        'Success',
        '${response.data['message']}',
        backgroundColor: Colors.green,
        snackPosition: SnackPosition.BOTTOM,
      );
      Get.offAll(() => LoginScreen());

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
