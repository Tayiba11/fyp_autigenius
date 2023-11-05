import 'package:flutter/material.dart';
import 'package:fyp1/colors/black.dart';
import 'package:fyp1/expressions/angry.dart';
import 'package:fyp1/expressions/confident.dart';
import 'package:fyp1/expressions/crying.dart';
import 'package:fyp1/expressions/cunning.dart';
import 'package:fyp1/expressions/dazed.dart';
import 'package:fyp1/expressions/evil.dart';
import 'package:fyp1/expressions/excited.dart';
import 'package:fyp1/expressions/happy.dart';
import 'package:fyp1/expressions/hurt.dart';
import 'package:fyp1/expressions/jealous.dart';
import 'package:fyp1/expressions/laugh.dart';
import 'package:fyp1/expressions/naughty.dart';
import 'package:fyp1/expressions/nervous.dart';
import 'package:fyp1/expressions/sad.dart';
import 'package:fyp1/expressions/scared.dart';
import 'package:fyp1/expressions/shy.dart';
import 'package:fyp1/expressions/sneering.dart';
import 'package:fyp1/expressions/surprised.dart';
import 'package:fyp1/expressions/suspicious.dart';
import 'package:fyp1/expressions/tired.dart';

import 'furious.dart';

class expressionsScreen extends StatelessWidget {
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
                    'Expressions',
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
                            builder: (context) => angryScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Angry.png',
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
                            builder: (context) => blackScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Blank.png',
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
                            builder: (context) => confidentScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Confident.png',
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
                            builder: (context) => cryingScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Crying.png',
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
                            builder: (context) => cunningScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Cunning.png',
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
                            builder: (context) => dazedScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Dazed.png',
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
                            builder: (context) => evilScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Evil.png',
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
                            builder: (context) => excitedScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Excited.png',
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
                            builder: (context) => furiousScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Furious.png',
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
                            builder: (context) => happyScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Happy.png',
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
                            builder: (context) => hurtScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Hurt.png',
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
                            builder: (context) => jealousScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Jealous.png',
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
                            builder: (context) => laughScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Laugh.png',
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
                            builder: (context) => naughtyScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Naughty.png',
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
                            builder: (context) => nervousScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Nervous.png',
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
                            builder: (context) => sadScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Sad.png',
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
                            builder: (context) => scaredScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Scared.png',
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
                            builder: (context) => shyScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Shy.png',
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
                            builder: (context) => sneeringScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Sneering.png',
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
                            builder: (context) => surprisedScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Surprised.png',
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
                            builder: (context) => suspiciousScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Suspicious.png',
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
                            builder: (context) => tiredScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/expressions/Tired.png',
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
