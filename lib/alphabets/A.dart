import 'package:flutter/material.dart';


class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<String> imagePaths = [
    'assets/images/alphabets/one.png',
    'assets/images/alphabets/two.png',
    'assets/images/alphabets/three.png',
    // Add more image paths as needed
  ];

  int currentImageIndex = 0;

  void _changeImage() {
    setState(() {
      // Cycle through image paths
      currentImageIndex = (currentImageIndex + 1) % imagePaths.length;
    });
  }

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
      ),
      body: GestureDetector(
        onTap: _changeImage,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFB98EFF), Colors.white],
            ),
          ),
          child: Center(
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: Image.asset(
                imagePaths[currentImageIndex],
                key: ValueKey<int>(currentImageIndex),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
