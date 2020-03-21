import 'dart:ffi';

import 'package:flutter/material.dart';


class AnimationFirst extends StatefulWidget {
  @override
  _AnimationFirstState createState() => _AnimationFirstState();
}

class _AnimationFirstState extends State<AnimationFirst> with SingleTickerProviderStateMixin{

  AnimationController _animationController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Animation'),
        backgroundColor: Colors.green[900],
      ),
      body: Transform.rotate(
        angle: 0.7,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(30.0),
          child: Image.asset('asset/fan.png'),
        ),
      ),
    );
  }
}
