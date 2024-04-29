import 'package:e_commerce_project/components/global_button.dart';
import 'package:e_commerce_project/registration/controller/registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final registrationController = Get.put(RegistrationController());
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        centerTitle: true,
        title: Text(
          "Registration Page",
          style: TextStyle(
            fontSize: 20.sp,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  "Welcome Back\n Registration Screen !",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 12.w,
                ),
                decoration: BoxDecoration(
                  color: Color(0xffd5e2f9),
                  borderRadius: BorderRadius.circular(
                    12.r,
                  ),
                ),

                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 24,
                    bottom: 24,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Name",
                          hintStyle: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1),
                          ),
                        ),
                        controller: registrationController.nameController,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Phone Number",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Phone Number",
                          hintStyle: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1),
                          ),
                        ),
                        controller: registrationController.phoneController,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1),
                          ),
                        ),
                        controller: registrationController.passwordController,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      GlobalButton(
                        title: "Register",
                        onTap: () {
                          registrationController.registerData(context);
                        },
                      )
                    ],
                  ),
                ),
                // children: [
                //   TextFormField(
                //     controller: loginController.phoneController,
                //   ),
                //   TextFormField(
                //     controller: loginController.password,
                //   ),
                //   ElevatedButton(
                //       onPressed: () {
                //         loginController.loginData(context);
                //       },
                //       child: Icon(Icons.login))
              ),
            ],
          ),
        ),
      ),
    );
  }
}
