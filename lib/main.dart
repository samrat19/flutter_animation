import 'package:flutter/material.dart';
import 'package:flutteranimation/animation_screen/my_animated_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyAnimation(),
    );
  }
}
