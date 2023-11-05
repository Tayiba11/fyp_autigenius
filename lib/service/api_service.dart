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
        "last_name": lastname,
        "first_name": firstname,
        "gender": "male"
      };
      final response = await http.post(Uri.parse('${baseurl}api/register'),
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
      var url = Uri.parse("${baseurl}api/showall");
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
    }
  }

  static Future AddQuiz({
    var name,
    var categoryname,
    var question,
    var answer,
    var status,
  }) async {
    try {
      Map data = {
        "name": name,
        "category_name": categoryname,
        "user_id": 1,
        "question": question,
        "answer": answer,
        "status": status
      };
      final response = await http.post(Uri.parse('${baseurl}api/addquiz'),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode(data));
      debugPrint("$data");
      debugPrint("${response.body}");
            print("$response");

      return response;
    } catch (e) {
      // onError("${e}");

      print("$e");
      // return onError(e, "login/Users/login");
    }
  }

  static Future GetAllQuiz() async {
    try {
      var url = Uri.parse("${baseurl}api/allquiz");
      var response = await http.get(
        url,
        headers: {},
      );
      debugPrint("$url");
      return response;
    } catch (e) {
      debugPrint("$e");
    }
  }

  static Future GetAllCategory() async {
    try {
      var url = Uri.parse("${baseurl}api/allcat");
      var response = await http.get(
        url,
        headers: {},
      );
      debugPrint("$url");
      return response;
    } catch (e) {
      debugPrint("$e");
    }
  }

  static Future GetAllSubCategory(id) async {
    try {
      var url = Uri.parse("${baseurl}api/singlesubcat/$id");
      var response = await http.get(
        url,
        headers: {},
      );
      debugPrint("$url");
      return response;
    } catch (e) {
      debugPrint("$e");
    }
  }

  static Future AddSubCat(
      {var name,var catid, var photofile, var audio}) async {
    try {
      //
      var uri =
          '${baseurl}api/addsubcat';
      var request = http.MultipartRequest('Post', Uri.parse(uri));
      // request.headers["authorization"] = BaseUrl.storage.read("logintoken");
      request.fields['name'] = "$name";
      request.fields['user_id'] = "user_id";
      request.fields['category_id'] = "$catid";
      
      request.files.add(new http.MultipartFile.fromBytes(
          'image', File(photofile).readAsBytesSync(),
          filename: photofile.split("/").last));
      request.files.add(new http.MultipartFile.fromBytes(
          'audio', File(audio).readAsBytesSync(),
          filename: audio.split("/").last));

      var res = await request.send();
      debugPrint("${res.statusCode}");
      final response = await http.Response.fromStream(res);

      // debugPrint("{response.body}");
      return response;
    } catch (e) {
      debugPrint("$e");
      // onError("${e}");

      // return onError(e, "login/Users/login");
    }
  }
  static Future AddCat(
      {var name, var photofile}) async {
    try {
      //
      var uri =
          '${baseurl}api/addcat';
      var request = http.MultipartRequest('Post', Uri.parse(uri));
      // request.headers["authorization"] = BaseUrl.storage.read("logintoken");
      request.fields['name'] = "$name";
      request.fields['user_id'] = "1";
      request.files.add(new http.MultipartFile.fromBytes(
          'image', File(photofile).readAsBytesSync(),
          filename: photofile.split("/").last));

      var res = await request.send();
      debugPrint("${res.statusCode}");
      debugPrint("${res.request}");
      final response = await http.Response.fromStream(res);

      // debugPrint("{response.body}");
      return response;
    } catch (e) {
      debugPrint("$e");
      // onError("${e}");

      // return onError(e, "login/Users/login");
    }
  }
}
