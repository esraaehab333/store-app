import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CustomApi {
  Dio dio = Dio();
  Future<dynamic> get({required String url}) async {
    Response response = await dio.get(url);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(
          "there is a problem with status code ${response.statusCode}");
    }
  }

  Future<dynamic> post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> header = {
      "Accept": "application/json",
      "Content-Type": "application/x-www-form-urlencoded",
      "Authorization": "Bearer"
    };
    if (token != null) {
      header.addAll({"Authorization": "Bearer $token"});
    }

    // ignore: unused_local_variable
    Response response = await dio.post(url,
        options: Options(headers: header, responseType: ResponseType.json),
        data: body);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = response.data;
      return data;
    }
    else{
      throw Exception("there is a problem with ststus code ${}")
    }
    print(body);
  }
}
