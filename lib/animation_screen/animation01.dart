import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimationFirst extends StatefulWidget {
  @override
  _AnimationFirstState createState() => _AnimationFirstState();
}

class _AnimationFirstState extends State<AnimationFirst>
    with SingleTickerProviderStateMixin {

  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0.0,end: 2 * math.pi)
        .animate(_animationController)
    ..addListener((){
      setState(() {

      });
    });


    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Animation'),
        backgroundColor: Colors.green[900],
      ),
      body: Transform.rotate(
        angle: _animation.value,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(30.0),
          child: Image.asset('asset/fan.png'),
        ),
      ),
    );
  }
}
