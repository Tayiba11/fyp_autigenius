import 'package:flutter/material.dart';
import 'package:fyp1/professions/architect.dart';
import 'package:fyp1/professions/artist.dart';
import 'package:fyp1/professions/businessman.dart';
import 'package:fyp1/professions/chef.dart';
import 'package:fyp1/professions/doctor.dart';
import 'package:fyp1/professions/engineer.dart';
import 'package:fyp1/professions/judge.dart';
import 'package:fyp1/professions/lawyer.dart';
import 'package:fyp1/professions/police.dart';
import 'package:fyp1/professions/teacher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: professionsScreen(),
    );
  }
}

class professionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFB98EFF), Colors.white],
            ),
          ),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 20),
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  centerTitle: true,
                  title: Text(
                    'Professions',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // Add your remaining widgets here
                SizedBox(height: 20),
                // Create a row with two containers containing CardBoxWithImage widgets
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to AlphabetsScreen when the container is tapped
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => doctorScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/professions/1.png',
                        imageWidth: 60,
                        imageHeight: 80,
                      ),
                    ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigate to AlphabetsScreen when the container is tapped
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => engineerScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/professions/2.png',
                        imageWidth: 60,
                        imageHeight: 80,
                      ),
                    ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to AlphabetsScreen when the container is tapped
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => chefScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/professions/3.png',
                        imageWidth: 60,
                        imageHeight: 80,
                      ),
                    ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigate to AlphabetsScreen when the container is tapped
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => businessmanScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/professions/4.png',
                        imageWidth: 60,
                        imageHeight: 80,
                      ),
                    ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to AlphabetsScreen when the container is tapped
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => policeScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/professions/5.png',
                        imageWidth: 60,
                        imageHeight: 80,
                      ),
                    ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigate to AlphabetsScreen when the container is tapped
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => artistScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/professions/6.png',
                        imageWidth: 60,
                        imageHeight: 80,
                      ),
                    ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to AlphabetsScreen when the container is tapped
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => teacherScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/professions/7.png',
                        imageWidth: 60,
                        imageHeight: 80,
                      ),
                    ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigate to AlphabetsScreen when the container is tapped
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => architectScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/professions/8.png',
                        imageWidth: 60,
                        imageHeight: 80,
                      ),
                    ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to AlphabetsScreen when the container is tapped
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => judgeScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/professions/9.png',
                        imageWidth: 60,
                        imageHeight: 80,
                      ),
                    ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigate to AlphabetsScreen when the container is tapped
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => lawyerScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/professions/10.png',
                        imageWidth: 60,
                        imageHeight: 80,
                      ),
                    ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start, // Align to the left
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0), // Add left padding
                      child: Container(
                        width: 140, // Adjust the width as needed
                        height: 110,
                        child: Card(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          color: Color(0xFF9867C5),
                          child: Container(
                            width: 70, // Adjust the width of the inner container
                            height: 50, // Adjust the height of the inner container
                            child: Center(
                              child: Icon(
                                Icons.add,
                                size: 36, // Adjust the size of the plus icon
                                color: Colors.white, // Set the color of the plus icon
                              ),
                            ),
                          ),
                        ),
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


class CardBoxWithImage extends StatelessWidget {
  final Color cardColor;
  final BorderRadius borderRadius;
  final String? imageAssetPath;
  final double imageWidth;
  final double imageHeight;

  CardBoxWithImage({
    required this.cardColor,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.imageAssetPath,
    this.imageWidth = 150,
    this.imageHeight = 80,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
        color: cardColor,
        child: Container(
          height: 100,
          child: Center(
            child: imageAssetPath != null
                ? Image.asset(
              imageAssetPath!,
              width: imageWidth,
              height: imageHeight,
              fit: BoxFit.cover,
            )
                : Placeholder(),
          ),
        ),
      ),
    );
  }
}
