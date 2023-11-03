import 'package:flutter/material.dart';
import 'package:fyp1/vehicles/aeroplane.dart';
import 'package:fyp1/vehicles/ambulance.dart';
import 'package:fyp1/vehicles/bicycle.dart';
import 'package:fyp1/vehicles/bus.dart';
import 'package:fyp1/vehicles/car.dart';
import 'package:fyp1/vehicles/helicopter.dart';
import 'package:fyp1/vehicles/schoolbus.dart';
import 'package:fyp1/vehicles/scooty.dart';
import 'package:fyp1/vehicles/ship.dart';
import 'package:fyp1/vehicles/taxi.dart';
import 'package:fyp1/vehicles/train.dart';
import 'package:fyp1/vehicles/truck.dart';
import 'package:fyp1/vehicles/van.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: vehiclesScreen(),
    );
  }
}

class vehiclesScreen extends StatelessWidget {
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
                    'Vehicles',
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
                            builder: (context) => carScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/vehicles/1.png',
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
                            builder: (context) => truckScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/vehicles/2.png',
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
                            builder: (context) => busScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/vehicles/3.png',
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
                            builder: (context) => bicycleScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/vehicles/4.png',
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
                            builder: (context) => vanScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/vehicles/5.png',
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
                            builder: (context) => trainScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child:Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/vehicles/6.png',
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
                            builder: (context) => helicopterScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/vehicles/7.png',
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
                            builder: (context) => aeroplaneScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/vehicles/8.png',
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
                            builder: (context) => ambulanceScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/vehicles/9.png',
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
                            builder: (context) => taxiScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/vehicles/10.png',
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
                            builder: (context) => shipScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/vehicles/11.png',
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
                            builder: (context) => schoolBusScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/vehicles/12.png',
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
                            builder: (context) => scootyScreen(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithImage(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        imageAssetPath: 'assets/images/vehicles/13.png',
                        imageWidth: 60,
                        imageHeight: 80,
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
