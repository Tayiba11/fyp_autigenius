import 'package:flutter/material.dart';
import 'package:fyp1/quiz/alphabetsQuiz/alphabetsq3.dart';
import 'package:fyp1/quiz/wrong-correct/correct.dart';
import 'package:fyp1/quiz/wrong-correct/wrong.dart';

class alphabetsq2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
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
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFB98EFF), Colors.white],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 150),
            Text(
              "Grapes",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 50),

            // Create a row with two containers containing CardBoxWithImage widgets
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                     Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>WrongScreen(
                      buttonfuncnext: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => alphabetsq3(),
                          ),
                        );
                      },
                      username: "shahzeb",
                      catename: "Alphabets",
                      answer: "strawberry",
                      question: "Grapes",
                      status: "Wrong",
                    )),
                        );
                  },
                  child: Container(
                    width: 140,
                    child: CardBoxWithImage(
                      cardColor: Color(0xFF9867C5),
                      borderRadius: BorderRadius.circular(25),
                      imageAssetPath: 'assets/images/fruits/strawberry.png',
                      imageWidth: 60,
                      imageHeight: 80,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                     Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>WrongScreen(
                      buttonfuncnext: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => alphabetsq3(),
                          ),
                        );
                      },
                      username: "shahzeb",
                      catename: "Alphabets",
                      answer: "Banana",
                      question: "Grapes",
                      status: "Wrong",
                    )),
                        );
                  },
                  child: Container(
                    width: 140,
                    child: CardBoxWithImage(
                      cardColor: Color(0xFF9867C5),
                      borderRadius: BorderRadius.circular(25),
                      imageAssetPath: 'assets/images/fruits/banana.png',
                      imageWidth: 80,
                      imageHeight: 80,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                     Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>WrongScreen(
                      buttonfuncnext: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => alphabetsq3(),
                          ),
                        );
                      },
                      username: "shahzeb",
                      catename: "Alphabets",
                      answer: "Orange",
                      question: "Grapes",
                      status: "Wrong",
                    )),
                        );
                  },
                  child: Container(
                    width: 140,
                    child: CardBoxWithImage(
                      cardColor: Color(0xFF9867C5),
                      borderRadius: BorderRadius.circular(25),
                      imageAssetPath: 'assets/images/fruits/orange.png',
                      imageWidth: 90,
                      imageHeight: 80,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>CorrectScreen(
                      buttonfuncnext: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => alphabetsq2(),
                          ),
                        );
                      },
                      username: "shahzeb",
                      catename: "Alphabets",
                      answer: "Grapes",
                      question: "Grapes",
                      status: "Wrong",
                    )),
                        );
                  },
                  child: Container(
                    width: 140,
                    child: CardBoxWithImage(
                      cardColor: Color(0xFF9867C5),
                      borderRadius: BorderRadius.circular(25),
                      imageAssetPath: 'assets/images/fruits/grapes.png',
                      imageWidth: 80,
                      imageHeight: 80,
                    ),
                  ),
                ),
              ],
            ),
          ],
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
