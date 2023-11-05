import 'package:flutter/material.dart';
import 'package:fyp1/quiz/fruitsQuiz/fq1.dart';
import 'package:fyp1/quiz/vegetablesQuiz/vegq1.dart';

import 'alphabetsQuiz/alphabetsq1.dart';


class categories extends StatelessWidget {
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
                    'Quiz',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // Add your remaining widgets here
                SizedBox(height: 20),
                // Create a row with two containers containing CardBoxWithText widgets

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to AlphabetsScreen when the container is tapped
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => alphabetsq1(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithText(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        labelText: 'Alphabets',

                      ),
                    ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigate to AlphabetsScreen when the container is tapped
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => fruitsq1(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithText(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        labelText: 'Fruits',
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
                            builder: (context) => vegq1(), // Navigate to AlphabetsScreen
                          ),
                        );
                      },
                    child: Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithText(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        labelText: 'Vegetables',
                      ),
                    ),
                    ),
                    Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithText(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        labelText: 'Animals',
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithText(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        labelText: 'Colors',
                      ),
                    ),
                    Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithText(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        labelText: 'People',
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithText(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        labelText: 'Expressions',
                      ),
                    ),
                    Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithText(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        labelText: 'Professions',
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithText(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        labelText: 'Vehicles',
                      ),
                    ),
                    Container(
                      width: 140, // Adjust the width as needed
                      child: CardBoxWithText(
                        cardColor: Color(0xFF9867C5),
                        borderRadius: BorderRadius.circular(25),
                        labelText: 'Weather',
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

class CardBoxWithText extends StatelessWidget {
  final Color cardColor;
  final BorderRadius borderRadius;
  final String labelText;

  CardBoxWithText({
    required this.cardColor,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    required this.labelText,
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
            child: Text(
              labelText,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
