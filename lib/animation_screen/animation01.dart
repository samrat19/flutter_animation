import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimationFirst extends StatefulWidget {
  @override
  _AnimationFirstState createState() => _AnimationFirstState();
}

class _AnimationFirstState extends State<AnimationFirst>
    with SingleTickerProviderStateMixin {

  AnimationController animationController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    );

    final curvedAnimation = CurvedAnimation(
      parent: animationController,
      curve: Curves.bounceIn,
      reverseCurve: Curves.easeOut,
    );

    animation = Tween<double>(
      begin: 0.0,
      end: 2 * math.pi,
    ).animate(animationController/*curvedAnimation*/)
    ..addListener((){
      setState(() {});
    })
    ..addStatusListener((status){
      if(status == AnimationStatus.completed){
        animationController.reverse();
      }else if(status == AnimationStatus.dismissed){
        animationController.forward();
      }
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Animation'),
        backgroundColor: Colors.green[900],
      ),
      body: Transform.rotate(
        angle: animation.value,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(30.0),
          child: Image.asset('asset/fan.png'),
        ),
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
