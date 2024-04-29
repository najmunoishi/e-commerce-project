import 'package:e_commerce_project/components/global_button.dart';
import 'package:e_commerce_project/login/views/login_screen.dart';
import 'package:e_commerce_project/main.dart';
import 'package:e_commerce_project/registration/views/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  box.remove('token');
                  Get.offAll(() => LoginScreen());
                  //Navigator.pop(context);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => LoginScreen(),
                  //   ),
                  // );
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 350, 50, 350),
                  child: ListTile(
                    title: Text(
                      "Logout",
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    leading: Icon(
                      Icons.logout,
                      color: Colors.blue,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Wellcome to Our Home Page",
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            // ElevatedButton(onPressed: (){
            //   box.remove('token');
            //   Get.offAll(()=> LoginScreen());
            // }, child: Icon(Icons.logout))
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: GlobalButton(
                title: "LogIn Page",
                onTap: () {
                  box.remove('token');
                  Get.offAll(() => LoginScreen());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
