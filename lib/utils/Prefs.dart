import 'dart:convert';

import 'package:fyp1/service/models/user_model.dart';
import 'package:fyp1/utils/PreferencesHelper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static Future<String?> getAuthToken() async {   
    SharedPreferences prefs = await SharedPreferences.getInstance();

   var auth = (prefs.getString('user') ?? '');
    return auth;
  }


  static removeAllPrefs() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }

  Future setUser(User? user) {
    return PreferencesHelper.setString("user", json.encode(user));
  }

  Future<User?> getUserSync() async {
    String? string = await PreferencesHelper.getString("user");
    if (string != null)
      return User.fromJson(json.decode(string));
    else
      return null;
  }

  setAuthToken(String token) async {
    PreferencesHelper.setString('Auth_Token', token);
  }setname(String name) async {
    PreferencesHelper.setString('username', name);
  }
}
