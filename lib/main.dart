import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clase1/firebase_options.dart';
import 'package:flutter_clase1/view/firebase_my_list.dart';

Future<void> main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  callFirebase();
}

void callFirebase() {
  FirebaseDatabase database = FirebaseDatabase.instance;
  DatabaseReference ref = database.ref('/Registros');
  ref.onValue.listen((event) {
    final data = event.snapshot.value;
    // ignore: avoid_print
    print(data.toString());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: const FirebaseMyList());
  }
}
