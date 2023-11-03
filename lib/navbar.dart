import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp1/quiz/name.dart';


class NavBar extends StatelessWidget {
  const NavBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      // color: Color(0xFF8E5B97),
      child: Drawer(
        child: ListView(

          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF9867C5),
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color(0xFF9867C5)),
                accountName: Text(
                  "Ayesha",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("ayesha02@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color(0xFF8E5B97),
                  child: Text(
                    "A",
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
              },
            ),

            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Log Out'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
