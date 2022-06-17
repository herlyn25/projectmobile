import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clase1/firebase_options.dart';
import 'package:flutter_clase1/view/login/login.dart';
import 'package:flutter_clase1/view/splash.dart';

Future<void> main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Splash());
  }
}
