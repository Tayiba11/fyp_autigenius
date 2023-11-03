import 'package:flutter/material.dart';
import 'alphabetsq2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CorrectAnswerScreen(),
    );
  }
}

class CorrectAnswerScreen extends StatelessWidget {
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
        child: Column( // Wrap the Image and button in a Column
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Correct Answer",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Image.network(
              'https://www.icegif.com/wp-content/uploads/2023/04/icegif-813.gif',
              fit: BoxFit.cover,
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => alphabetsq2(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFA881AF),
                minimumSize: Size(150, 55),
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Next',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
