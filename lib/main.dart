import 'package:flutter/material.dart';
import 'homePage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title:("Calculator"),
      theme: new ThemeData(
        primarySwatch: Colors.red
        // Todo: đây là thay đổi màu giao diện của App
      ),
      home: new HomePage(), 
    );
  }
  //todo:
  // ?
  // !
}