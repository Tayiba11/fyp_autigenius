import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


class orangeScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<orangeScreen> {
  double imageSize = 200.0;
  double maxSize = 300.0;

  final player = AudioPlayer();

  void _increaseSize() {
    setState(() {
      if (imageSize < maxSize) {
        imageSize += 20.0;
      } else {
        imageSize = 200.0;
      }
    });

    player.play(AssetSource('audio/orange.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Extend the gradient behind the AppBar
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
          'Orange',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),



      body: GestureDetector(
        onTap: _increaseSize,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFB98EFF), Colors.white],
            ),
          ),
          child: Center(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: imageSize,
              height: imageSize,
              child: Image.asset('assets/images/fruits/orange.png'), // Replace with your image
            ),
          ),
        ),
      ),
    );
  }
}
