import 'package:flutter/material.dart';
import './home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Calculator app",
      theme: ThemeData(
        brightness: Brightness.dark
      ),

      home: Home(),
    );
  }
}