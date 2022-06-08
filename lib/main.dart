import 'package:flutter/material.dart';
import 'package:flutter_clase1/view/firebase_list.dart';
import 'package:flutter_clase1/view/listview_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: const FirebaseList());
  }
}
