import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VegetableWrong3Screen(),
    );
  }
}

class VegetableWrong3Screen extends StatelessWidget {
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
              "Wrong Answer",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Image.network(
              'https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExcDlsNzdnMGZ6cDNnM3JqeTV3eXpvZmRwN3ZudmFzYmI0cWI1YzMyNiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/xT9IgEYXCNqPZnqMuY/giphy.gif',
              fit: BoxFit.cover,
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => alphabetsq3(),
                //   ),
                // );
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
                'Finish',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
