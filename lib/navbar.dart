import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp1/main.dart';
import 'package:fyp1/quiz/name.dart';
import 'package:fyp1/result.dart';
import 'package:fyp1/utils/preferencedata.dart';

import 'utils/Prefs.dart';


class NavBar extends StatelessWidget {
 NavBar({Key? key});
  @override
  Widget build(BuildContext context) {
String  name=    "${PreferencesHelperDataFetch.userd?.firstname}";
String namefirstletter =name.substring(0, 1);
    return Container(
      width: 200,
      // color: Color(0xFF8E5B97),
      child: Drawer(
        child: ListView(

          children: [
             DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF9867C5),
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color(0xFF9867C5)),
                accountName: Text(
                  "${PreferencesHelperDataFetch.userd?.firstname} ${PreferencesHelperDataFetch.userd?.lastname}",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("${PreferencesHelperDataFetch.userd?.email}"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color(0xFF8E5B97),
                  child: Text(
                    "${namefirstletter}",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //
            // SizedBox(height: 56),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.quiz),
              title: const Text(' Quiz '),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => NameScreen(),
                ));
              },

            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Result '),
              onTap: () {
                Navigator.pop(context);
                      Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ResultScreen(),
                ));
              },
            ),

            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Log Out'),
              onTap: () {
                Prefs.removeAllPrefs();

                 Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
    SignInPage()), (Route<dynamic> route) => false);

              },
            ),
          ],
        ),
      ),
    );
  }
}
