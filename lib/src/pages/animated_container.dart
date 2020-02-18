

import 'package:flutter/material.dart';

import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  
  double _width = 50.0;
  double _height = 50.0;

  Color _color = Colors.pink;

  BorderRadiusGeometry _boderRadius = BorderRadius.circular(8.0); 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated container"),),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          curve: Curves.bounceOut,
          decoration: BoxDecoration(
            borderRadius: _boderRadius, 
            color: _color,
          ),
          duration: Duration( milliseconds: 500),
        ),
      ),
      floatingActionButton: 
      FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () => animatedBox(),
      ),
    );
  }

  animatedBox() {

    final random = Random();

    setState(() {
      _width  = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
        random.nextInt(255), 
        random.nextInt(255), 
        random.nextInt(255), 
        1);
      
      _boderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}