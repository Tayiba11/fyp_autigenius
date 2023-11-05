import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fyp1/service/api_service.dart';
import 'package:fyp1/service/models/all_sub_category_model.dart';

import 'package:fyp1/weather/snowfall.dart';

class DynamicSubCatScreen extends StatefulWidget {
  final name;
  final id;
  @override
  const DynamicSubCatScreen({super.key, required this.name, required this.id});

  State<DynamicSubCatScreen> createState() => _DynamicSubCatScreenState();
}

class _DynamicSubCatScreenState extends State<DynamicSubCatScreen> {
  var loading = 0;
  var datacat = [];
  @override
  void initState() {
    // TODO: implement initState
    getcatdata();
    super.initState();
  }

  getcatdata() async {
    print("object");
    var response = await API.GetAllSubCategory();
    if (response.statusCode == 200) {
      print(response);
      datacat = [];
      // debugPrint('before model $response');
      var responseData = jsonDecode(response.body);
      response = AllSubCategoryModel.fromJson(responseData);
      for (int i = 0; i < response.data.length; i++) {
        datacat.add(response.data[i]);
        print(i);
      }
      datacat.add(response.data[response.data.length - 1]);
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
                    '${widget.name}',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Number of items in each row
                        childAspectRatio:
                            1.5 // Adjust this value as needed to control the aspect ratio
                        ),
                    itemCount: datacat.length,
                    itemBuilder: (BuildContext context, int index) {
                      return datacat.length == index + 1 || datacat == []
                          ? Container(
                              child: Container(
                                margin: EdgeInsets.only(right: 10, left: 10),
                                child: Card(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  color: Color(0xFF9867C5),
                                  child: Container(
                                    width:
                                        70, // Adjust the width of the inner container
                                    height:
                                        50, // Adjust the height of the inner container
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        size:
                                            36, // Adjust the size of the plus icon
                                        color: Colors
                                            .white, // Set the color of the plus icon
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                // Navigate to AlphabetsScreen when the container is tapped
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => DynamicSubCatScreen(
                                      name: '${datacat[index].name}',
                                      id: '${datacat[index].id}',
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 10, left: 10),
                                // height: 170,
                                // width: 280,
                                child: Container(
                                  // width: 140,
                                  child: CardBoxWithImage(
                                    cardColor: Color(0xFF9867C5),
                                    borderRadius: BorderRadius.circular(25),
                                    imageAssetPath:
                                        'assets/images/weather/1.png',
                                    imageWidth: 60,
                                    imageHeight: 80,
                                  ),
                                ),
                              ),
                            );
                    },
                  ),
                ),
                // Add your remaining widgets here

                if(loading==0)...[CircularProgressIndicator()]
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
