import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fyp1/service/api_service.dart';
import 'package:fyp1/service/models/all_quiz_model.dart';

class ResultScreen extends StatefulWidget {
  ResultScreen({key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  var datacat = [];
  var loading = 0;
  void initState() {
    // TODO: implement initState
    getcatdata();
    super.initState();
  }

  getcatdata() async {
    print("object");
    var response = await API.GetAllQuiz();
    if (response.statusCode == 200) {
      print(response);
      datacat = [];
      // debugPrint('before model $response');
      var responseData = jsonDecode(response.body);
      response = AllQuizModel.fromJson(responseData);
      for (int i = 0; i < response.data.length; i++) {
        datacat.add(response.data[i]);
        print(i);
      }
      setState(() {
        loading = 1;
      });
    } else {
      setState(() {
        loading = 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFB98EFF), Colors.white],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
            child: Text('Result'),
          ),
        ),
        body: loading == 0
            ? Center(child: CircularProgressIndicator())
            : Container(
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: datacat.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text("Name : ${datacat[index].name} Question :${datacat[index].question}"),
                        trailing: Text("status : ${datacat[index].status}"),
                        subtitle: Text("Answer  : ${datacat[index].answer}"),
                      );
                    }),
              ),
      ),
    );
  }
}
