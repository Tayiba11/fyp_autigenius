import 'package:flutter/material.dart';
import 'package:fyp1/people/boy.dart';
import 'package:fyp1/people/child.dart';
import 'package:fyp1/people/family.dart';
import 'package:fyp1/people/friends.dart';
import 'package:fyp1/people/girl.dart';
import 'package:fyp1/people/man.dart';
import 'package:fyp1/people/oldman.dart';
import 'package:fyp1/people/oldwoman.dart';
import 'package:fyp1/people/woman.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: peopleScreen(),
    );
  }
}

class peopleScreen extends StatelessWidget {
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
                    'People',
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
                            builder: (context) => babyScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/people/1.png',
                        imageWidth: 70,
                        imageHeight: 80,
                      ),
                    ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigate to AlphabetsScreen when the container is tapped
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => girlScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/people/2.png',
                        imageWidth: 70,
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
                            builder: (context) => boyScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/people/3.png',
                        imageWidth: 70,
                        imageHeight: 80,
                      ),
                    ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigate to AlphabetsScreen when the container is tapped
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => manScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/people/4.png',
                        imageWidth: 50,
                        imageHeight: 60,
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
                            builder: (context) => womanScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/people/5.png',
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
                            builder: (context) => oldWomanScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/people/6.png',
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
                            builder: (context) => oldManScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/people/7.png',
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
                            builder: (context) => familyScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/people/8.png',
                        imageWidth: 70,
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
                            builder: (context) => friendsScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/people/9.png',
                        imageWidth: 80,
                        imageHeight: 50,
                      ),
                    ),
                    ),
                    Container(
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
