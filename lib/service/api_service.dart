import 'dart:convert';
import 'dart:io';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class API {
  static var client = http.Client();
  static String baseurl = "https://home.thesafetytags.com/";
  // Auth Api
  // login
  static Future Login({
    var email,
    var password,
  }) async {
    try {
      Map data = {
        "email": email,
        "password": password,
      };
      final response = await http.post(Uri.parse('${baseurl}api/login'),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode(data));
      debugPrint("$data");
      debugPrint("{response.body}");
      return response;
    } catch (e) {
      // onError("${e}");

      debugPrint("$e");
      // return onError(e, "login/Users/login");
    }
  }

  static Future Signup({
    var email,
    var password,
    var lastname,
    var firstname,
  }) async {
    try {
      Map data = {
        "email": email,
        "password": password,
        "confirm_password": password,
        "last_name":lastname,
        "first_name": firstname,
        "gender": "male"
      };
      final response = await http.post(Uri.parse('${baseurl}api/regiter'),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode(data));
      debugPrint("$data");
      debugPrint("{response.body}");
      return response;
    } catch (e) {
      // onError("${e}");

      debugPrint("$e");
      // return onError(e, "login/Users/login");
    }
  }


  static Future ActiveCourseApi(courseid) async {
    try {
      var url = Uri.parse(
          "${baseurl}api/showall");
      var response = await http.get(
        url,
        headers: {
          // 'Authorization': BaseUrl.storage.read("logintoken"),
        },
      );
      debugPrint("$url");
      debugPrint("${courseid}");
      return response;
    } catch (e) {
      // onError("${e}");

      debugPrint("$e");
      // return onError(e, "login/Users/login");
    }
  }
  static Future logout(bearertoken) async {
    try {
      final response = await http.get(
        Uri.parse('${baseurl}api/logout'),
        headers: {'Authorization': bearertoken},
      );

      return response;
    } catch (e) {
      debugPrint("$e");
      // onError("${e}");

      // return onError(e, "login/Users/login");
    }
  }

}
