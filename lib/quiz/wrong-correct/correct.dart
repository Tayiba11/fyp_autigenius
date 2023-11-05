import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fyp1/quiz/fruitsQuiz/fq2.dart';
import 'package:fyp1/service/api_service.dart';

class CorrectScreen extends StatefulWidget {
  final buttonfuncnext;
  final username;
  final catename;
  final question;
  final answer;
  final status;

  const CorrectScreen(
      {super.key,
      required this.buttonfuncnext,
      required this.username,
      required this.catename,
      required this.question,
      required this.answer,
      required this.status});

  @override
  State<CorrectScreen> createState() => _CorrectScreenState();
}

class _CorrectScreenState extends State<CorrectScreen> {
  var loading = 0;
  @override
  void initState() {
    super.initState();
        savequiz() ;

  }

  savequiz() async {print("object");
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
            
             if(loading==0)...[
                   Text(
              "Saving Answer",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
              ],ElevatedButton(
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
