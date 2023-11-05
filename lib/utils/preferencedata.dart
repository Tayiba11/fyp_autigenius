import 'dart:convert';

import 'package:fyp1/service/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesHelperDataFetch {
  static SharedPreferences? _preferences;

  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  // static String? get authtoken => _preferences?.getString('user');
  // static set authtoken(String? value) => _preferences?.setString('user', value!);
  static String? get authtoken => _preferences?.getString('Auth_Token') ?? '';
  static String? get userdata => _preferences?.getString('user') ?? '';
   static User? userd= User.fromJson(json.decode("${userdata}"));

}
