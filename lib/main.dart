import 'package:e_commerce_project/home_page.dart';
import 'package:e_commerce_project/login/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

final box = GetStorage();
void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChannels.textInput.invokeMethod('TextInput.hide');

    return ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        builder: (ctx, child) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: box.read('token') != null ? HomePage() : LoginScreen(),
      //home: RegistrationScreen(),
    );
        },
    );
  }
}
      