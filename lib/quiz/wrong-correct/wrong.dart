import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fyp1/quiz/fruitsQuiz/fq2.dart';
import 'package:fyp1/service/api_service.dart';

class  WrongScreen extends StatefulWidget {
  final buttonfuncnext;
  final username;
  final catename;
  final question;
  final answer;
  final status;

  const WrongScreen(
      {super.key,
      required this.buttonfuncnext,
      required this.username,
      required this.catename,
      required this.question,
      required this.answer,
      required this.status});

  @override
  State<WrongScreen> createState() => _WrongScreenState();
}

class _WrongScreenState extends State<WrongScreen> {
    var loading = 0;
  @override
  void initState() {
    super.initState();
    savequiz() ;
  }

  savequiz() async {
    var response = await API.AddQuiz(
      name: "${widget.username}",
      categoryname: "${widget.catename}",
      question: "${widget.question}",
      answer: "${widget.answer}",
      status: "${widget.status}",
    );
    if (response.statusCode == 200) {
      response = jsonDecode(response.body);

      if (response['statusCode'] == '200') {
        setState(() {
          loading = 1;
        });
      } else {
        setState(() {
          loading = 1;
        });
      }
    } else {
      setState(() {
        loading = 1;
      });
    }
  }
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
        child: Column(
          // Wrap the Image and button in a Column
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
            if(loading==0)...[
                   Text(
              "Saving Answer",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
              ], SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
               
              widget.buttonfuncnext();
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
