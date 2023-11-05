import 'package:flutter/material.dart';
import 'package:fyp1/Homepage.dart';
import 'package:fyp1/service/api_service.dart';
import 'package:fyp1/service/models/user_model.dart';
import 'package:fyp1/utils/Prefs.dart';
import 'package:fyp1/utils/preferencedata.dart';
import 'package:fyp1/welcome_screen.dart';
import 'signup.dart';
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'signup.dart';
import 'package:http/http.dart' as http;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await PreferencesHelperDataFetch.init(); // Initialize shared preferences

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PreferencesHelperDataFetch.authtoken!=null? MyHomePage(): SignInPage(),
    );
  }
}

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  var loading = 0;

  SiginUser() async {
    print("object");
    setState(() {
      loading = 1;
    });
    var response = await API.Login(
      email: email.text,
      password: password.text,
    );

    if (response.statusCode == 200) {
      response = jsonDecode(response.body);
      print(response['success']);
      if (response['success'] == true) {
        print(response['token']);
        var responseuserdata = await API.Userdata("${response['token']}");
        var responseuser = jsonDecode(responseuserdata.body);
        // var responsemodel = UserModel.fromJson(responseuser);
        var response12 = UserModel.fromJson(responseuser);

        if (responseuser['success'] == true) {
          setState(() {
            loading = 0;
          });
          // print("aaa ${response12.data}");
          Prefs().setAuthToken(response['token']);
          Prefs().setUser(response12.data);
          const snackBar = SnackBar(
            content: Text('User Loginned'),
          );

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyHomePage(),
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        } else {
          setState(() {
            loading = 0;
          });
          const snackBar = SnackBar(
            content: Text('User Not Found'),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      } else {
        setState(() {
          loading = 0;
        });
        const snackBar = SnackBar(
          content: Text('User Not Found'),
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } else {
      setState(() {
        loading = 0;
      });
      const snackBar = SnackBar(
        content: Text('User Not Found'),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFB98EFF), Colors.white],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  width: 300,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: InputBorder.none,
                      icon: Icon(Icons.email),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  width: 300,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: InputBorder.none,
                      icon: Icon(Icons.lock),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      // Logic
                    },
                    child: Text('Forgot Password?',
                        style: TextStyle(color: Colors.grey)),
                  ),
                ),
                SizedBox(height: 20),
                loading == 1
                    ? CircularProgressIndicator()
                    : Container(
                        height: 58,
                        width: 280,
                        child: ElevatedButton(
                          onPressed: () {
                            if (email.text != "" && password.text != "") {
                              SiginUser();
                            } else {
                              const snackBar = SnackBar(
                                content: Text('Fill All the Fields'),
                              );

                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFA881AF), // A881AF - Purple color
                            padding: EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            'Sign In',
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SignUpPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Create Account',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
