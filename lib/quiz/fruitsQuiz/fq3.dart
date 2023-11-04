import 'package:flutter/material.dart';
import 'package:fyp1/quiz/wrong-correct/correct.dart';
import 'package:fyp1/quiz/wrong-correct/finish_correct.dart';
import 'package:fyp1/quiz/wrong-correct/finish_wrong.dart';




class fruitsq3 extends StatelessWidget {
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
              "Coconut",
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
                      FinishScreen(
                      buttonfuncnext: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => fruitsq3(),
                          ),
                        );
                      },
                      username: "shahzeb",
                      catename: "Friut",
                      answer: "Coconut",
                      question: "Coconut",
                      status: "Correct",
                    );
                  },
                  child: Container(
                    width: 140,
                    child: CardBoxWithImage(
                      cardColor: Color(0xFF9867C5),
                      borderRadius: BorderRadius.circular(25),
                      imageAssetPath: 'assets/images/fruits/coconut.png',
                      imageWidth: 60,
                      imageHeight: 50,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {

                   FinishWrongScreen(
                      buttonfuncnext: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => fruitsq3(),
                          ),
                        );
                      },
                      username: "shahzeb",
                      catename: "Friut",
                      answer: "Pineapple",
                      question: "Coconut",
                      status: "Wrong",
                    );
                  },
                  child: Container(
                    width: 140,
                    child: CardBoxWithImage(
                      cardColor: Color(0xFF9867C5),
                      borderRadius: BorderRadius.circular(25),
                      imageAssetPath: 'assets/images/fruits/Pineapple.png',
                      imageWidth: 40,
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
                        FinishWrongScreen(
                      buttonfuncnext: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => fruitsq3(),
                          ),
                        );
                      },
                      username: "shahzeb",
                      catename: "Friut",
                      answer: "Watermelon",
                      question: "Coconut",
                      status: "Wrong",
                    );
                  },
                  child:Container(
                    width: 140,
                    child: CardBoxWithImage(
                      cardColor: Color(0xFF9867C5),
                      borderRadius: BorderRadius.circular(25),
                      imageAssetPath: 'assets/images/fruits/watermelon.png',
                      imageWidth: 70,
                      imageHeight: 80,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
  FinishWrongScreen(
                      buttonfuncnext: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => fruitsq3(),
                          ),
                        );
                      },
                      username: "shahzeb",
                      catename: "Friut",
                      answer: "Peach",
                      question: "Coconut",
                      status: "Wrong",
                    );                  },
                  child: Container(
                    width: 140,
                    child: CardBoxWithImage(
                      cardColor: Color(0xFF9867C5),
                      borderRadius: BorderRadius.circular(25),
                      imageAssetPath: 'assets/images/fruits/peach.png',
                      imageWidth: 80,
                      imageHeight: 70,
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
