import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:fyp1/service/api_service.dart';
import 'package:fyp1/service/models/all_category_model.dart';
import 'package:fyp1/weather/dynamicsubcat.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/material.dart';
import 'package:fyp1/alphabets/alphabets.dart';
import 'package:fyp1/animals/animals.dart';
import 'package:fyp1/colors/colors.dart';
import 'package:fyp1/expressions/expressions.dart';
import 'package:fyp1/people/people.dart';
import 'package:fyp1/professions/professions.dart';
import 'package:fyp1/vegetables/vegetables.dart';
import 'package:fyp1/vehicles/vehicles.dart';
import 'package:fyp1/weather/weather.dart';
import 'fruits/fruits.dart';
import 'package:fyp1/navbar.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

// class MyHomePage extends StatelessWidget {
//   File? image;
//   Future pickImage() async {
//     try {
//       final image = await ImagePicker().pickImage(source: ImageSource.gallery);
//       if(image == null) return;
//       final imageTemp = File(image.path);
//       setState(() => this.image = imageTemp);
//     } on PlatformException catch(e) {
//       print('Failed to pick image: $e');
//     }
//   }

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
    var response = await API.GetAllCategory();
    if (response.statusCode == 200) {
      print(response);
      datacat = [];
      // debugPrint('before model $response');
      var responseData = jsonDecode(response.body);
      response = AllCategoryModel.fromJson(responseData);
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
    return Scaffold(
      drawer: NavBar(),
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
                  elevation: 0, // Remove app bar shadow
                  // leading: Padding(
                  //   padding: const EdgeInsets.only(left: 10.0), // Add padding to the left
                  //   child: IconButton(
                  //     icon: Icon(Icons.menu),
                  //     onPressed: () {
                  //       // Handle menu button tap here
                  //     },
                  //   ),
                  // ),
                  centerTitle: true,
                  title: Text(
                    'Learn',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    // Navigate to AlphabetsScreen when the container is tapped
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            AlphabetsScreen(), // Navigate to AlphabetsScreen
                      ),
                    );
                  },
                  child: Container(
                    height: 170,
                    width: 280,
                    child: CardBoxWithImage(
                      cardColor: Color(0xFF9867C5),
                      borderRadius: BorderRadius.circular(25),
                      imageAssetPath: 'assets/images/alphabet.png',
                      imageWidth: 170,
                      imageHeight: 80,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to AlphabetsScreen when the container is tapped
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            FruitsScreen(), // Navigate to AlphabetsScreen
                      ),
                    );
                  },
                  child: Container(
                    height: 170,
                    width: 280,
                    child: CardBoxWithImage(
                      cardColor: Color(0xFF9867C5),
                      borderRadius: BorderRadius.circular(25),
                      imageAssetPath: 'assets/images/fruits.png',
                      imageWidth: 130,
                      imageHeight: 100,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to AlphabetsScreen when the container is tapped
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            vegetablesScreen(), // Navigate to AlphabetsScreen
                      ),
                    );
                  },
                  child: Container(
                    height: 170,
                    width: 280,
                    child: CardBoxWithImage(
                      cardColor: Color(0xFF9867C5),
                      borderRadius: BorderRadius.circular(25),
                      imageAssetPath: 'assets/images/vegetables.png',
                      imageWidth: 170,
                      imageHeight: 100,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to AlphabetsScreen when the container is tapped
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            animalsScreen(), // Navigate to AlphabetsScreen
                      ),
                    );
                  },
                  child: Container(
                    height: 170,
                    width: 280,
                    child: CardBoxWithImage(
                      cardColor: Color(0xFF9867C5),
                      borderRadius: BorderRadius.circular(25),
                      imageAssetPath: 'assets/images/animals.png',
                      imageWidth: 170,
                      imageHeight: 100,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to AlphabetsScreen when the container is tapped
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            colorsScreen(), // Navigate to AlphabetsScreen
                      ),
                    );
                  },
                  child: Container(
                    height: 170,
                    width: 280,
                    child: CardBoxWithImage(
                      cardColor: Color(0xFF9867C5),
                      borderRadius: BorderRadius.circular(25),
                      imageAssetPath: 'assets/images/colors.png',
                      imageWidth: 110,
                      imageHeight: 100,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to AlphabetsScreen when the container is tapped
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            peopleScreen(), // Navigate to AlphabetsScreen
                      ),
                    );
                  },
                  child: Container(
                    height: 170,
                    width: 280,
                    child: CardBoxWithImage(
                      cardColor: Color(0xFF9867C5),
                      borderRadius: BorderRadius.circular(25),
                      imageAssetPath: 'assets/images/People.png',
                      imageWidth: 120,
                      imageHeight: 100,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to AlphabetsScreen when the container is tapped
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            expressionsScreen(), // Navigate to AlphabetsScreen
                      ),
                    );
                  },
                  child: Container(
                    height: 170,
                    width: 280,
                    child: CardBoxWithImage(
                      cardColor: Color(0xFF9867C5),
                      borderRadius: BorderRadius.circular(25),
                      imageAssetPath: 'assets/images/emogi.png',
                      imageWidth: 170,
                      imageHeight: 100,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to AlphabetsScreen when the container is tapped
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            professionsScreen(), // Navigate to AlphabetsScreen
                      ),
                    );
                  },
                  child: Container(
                    height: 170,
                    width: 280,
                    child: CardBoxWithImage(
                      cardColor: Color(0xFF9867C5),
                      borderRadius: BorderRadius.circular(25),
                      imageAssetPath: 'assets/images/profession.png',
                      imageWidth: 110,
                      imageHeight: 100,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to AlphabetsScreen when the container is tapped
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            vehiclesScreen(), // Navigate to AlphabetsScreen
                      ),
                    );
                  },
                  child: Container(
                    height: 170,
                    width: 280,
                    child: CardBoxWithImage(
                      cardColor: Color(0xFF9867C5),
                      borderRadius: BorderRadius.circular(25),
                      imageAssetPath: 'assets/images/cars.png',
                      imageWidth: 150,
                      imageHeight: 100,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to AlphabetsScreen when the container is tapped
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            weatherScreen(), // Navigate to AlphabetsScreen
                      ),
                    );
                  },
                  child: Container(
                    height: 170,
                    width: 280,
                    child: CardBoxWithImage(
                      cardColor: Color(0xFF9867C5),
                      borderRadius: BorderRadius.circular(25),
                      imageAssetPath: 'assets/images/weather.png',
                      imageWidth: 110,
                      imageHeight: 100,
                    ),
                  ),
                ),
                // datacat
                Container(
                  width: 280,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: datacat.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            // Navigate to AlphabetsScreen when the container is tapped
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    DynamicSubCatScreen(name:  '${datacat[index].name}',id: '${datacat[index].id}',), // Navigate to AlphabetsScreen
                              ),
                            );
                          },
                          child: Container(
                            height: 170,
                            width: 280,
                            // child: Text("${datacat[index].image}"),
                            child: CardBoxWithImagenet(
                              cardColor: Color(0xFF9867C5),
                              borderRadius: BorderRadius.circular(25),
                              imageAssetPath: '${datacat[index].image}',
                              imageWidth: 110,
                              imageHeight: 100,
                            ),
                            
                          ),
                        );
                      }),
                ),
                ElevatedButton(
                    onPressed: () {
                      getcatdata();
                    },
                    child: Text("dss")),
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      // Your existing code...
                      GestureDetector(
                        onTap: pickImage, // Call pickImage when tapped
                        child: Container(
                          height: 170,
                          width: 280,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFF9867C5),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              size: 36,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
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


class CardBoxWithImagenet extends StatelessWidget {
  final Color cardColor;
  final BorderRadius borderRadius;
  final String? imageAssetPath;
  final double imageWidth;
  final double imageHeight;

  CardBoxWithImagenet({
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
                ? Image.network(
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
