import 'package:flutter/material.dart';
import 'package:flutter_clase1/view/listview_1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Material App',
      home: ListView1()
    );
  }
}