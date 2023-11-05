import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:fyp1/service/api_service.dart';

// import 'package:sms_autofill/sms_autofill.dart';

class AddSubCategoryScreen extends StatefulWidget {
  final imagepath;
  final catid;
  AddSubCategoryScreen(
      {super.key, required this.imagepath, required this.catid});

  @override
  State<AddSubCategoryScreen> createState() => _AddSubCategoryScreenState();
}

class _AddSubCategoryScreenState extends State<AddSubCategoryScreen> {
  var submitcat = 0;
  TextEditingController catname = TextEditingController();

  File? audioFile;

  Future pickAudio() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: [
          'mp3',
          'wav',
          'aac',
          'm4a'
        ], // Specify the audio file formats you want to allow
      );
      setState(() {
        if (result != null) {
          audioFile = File(result.files.single.path!);
        }
      });
    } catch (e) {
      print("Error picking audio: $e");
    }
  }

  @override
  void initState() {
    // _additemBloc.add(AdditemButtonMLEvent(imagepath: "${widget.imagepath}"));
    super.initState();
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
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              "Add",
              style: TextStyle(
                  // color: ColorConstraints.primarycolor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: CustomScrollView(
                        slivers: [
                          SliverFillRemaining(
                            hasScrollBody: false,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Name",
                                  style: TextStyle(
                                    // color: ColorConstraints.primarycolor,
                                    fontSize: 16,
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: TextField(
                                    controller: catname,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: 'Category Name',
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Divider(),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      if (audioFile != null)
                                        Container(
                                            width: 200,
                                            child: Text("${audioFile!.path}")),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xFFA881AF),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 16, horizontal: 10),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                        child: Text("Select Audio"),
                                        onPressed: () {
                                          pickAudio();
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Divider(),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Image",
                                  style: TextStyle(
                                    // color: ColorConstraints.primarycolor,
                                    fontSize: 16,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 5),
                                  width: MediaQuery.of(context).size.width,
                                  height: 140, // Adjust the height as needed
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: FileImage(File(widget.imagepath)),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                submitcat == 1
                                    ? CircularProgressIndicator()
                                    : Container(
                                        height: 58,
                                        width: 260,
                                        child: ElevatedButton(
                                          onPressed: () async {
                                            if (catname.text != "" &&
                                                audioFile != null) {
                                              setState(() {
                                                submitcat = 1;
                                              });
                                              var response =
                                                  await API.AddSubCat(
                                                      name: "${catname.text}",
                                                      photofile:
                                                          "${widget.imagepath}",
                                                      audio:
                                                          "${audioFile!.path}",
                                                      catid: widget.catid);
                                              if (response.statusCode == 200) {
                                                response =
                                                    jsonDecode(response.body);
                                                Navigator.pop(context);
                                                const snackBar = SnackBar(
                                                  content: Text(
                                                      'Added Refresh to see'),
                                                );
                                                setState(() {
                                                  submitcat = 0;
                                                });
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(snackBar);
                                              } else {
                                                setState(() {
                                                  submitcat = 0;
                                                });
                                                const snackBar = SnackBar(
                                                  content: Text(
                                                      'Something went wrongs'),
                                                );

                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(snackBar);
                                              }
                                            } else {
                                              const snackBar = SnackBar(
                                                content:
                                                    Text('Enter name First'),
                                              );
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(snackBar);
                                            }
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: Color(0xFFA881AF),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 16),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                          child: Text(
                                            'Add',
                                            style: TextStyle(fontSize: 22),
                                          ),
                                        ),
                                      ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
  // else {
  //   return Center(child: Text("Something Went Wrong"));
  // }
}
