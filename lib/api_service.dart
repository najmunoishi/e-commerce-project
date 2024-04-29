import 'package:dio/dio.dart';
import 'package:e_commerce_project/api_list.dart';

class ApiService {
  login({
    required String phonenumber,
    required String password,
  }) async {
    try {
      var response = await Dio().post(ApiList.login,
          options: Options(
            headers: {
              "Content-Type": "application/json",
              "Accept": "application/json",
              "Access-Control-Allow-Origin": "*",
            },
            validateStatus: (status) {
              return status! < 500;
            },
          ),
          data: {
            'phonenumber': phonenumber,
            'password': password,
          });

      return response;
    } catch (e) {
      print(e);
    }
  }

  register({
    required String name,
    required String phonenumber,
    required String password,
  }) async {
    try {
      var response = await Dio().post(ApiList.register,
          options: Options(
            headers: {
              "Content-Type": "application/json",
              "Accept": "application/json",
              "Access-Control-Allow-Origin": "*",
            },
            validateStatus: (status) {
              return status! < 500;
            },
          ),
          data: {
            'name': name,
            'phonenumber': phonenumber,
            'password': password
          });

      return response;
    } catch (e) {
      print(e);
    }
  }
  logout() async {
    try {
      var response = await Dio().get(ApiList.logout,
          options: Options(
            headers: {
              "Content-Type": "application/json",
              "Accept": "application/json",
              "Access-Control-Allow-Origin": "*",
            },
            validateStatus: (status) {
              return status! < 500;
            },
          ),
      );

      return response;
    } catch (e) {
      print(e);
    }
  }


}

