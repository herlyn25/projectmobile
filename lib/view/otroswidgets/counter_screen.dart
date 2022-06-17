// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Counter_Screen extends StatefulWidget {
  Counter_Screen({Key? key}) : super(key: key);

  @override
  State<Counter_Screen> get createState => _Counter_ScreenState();
}

class _Counter_ScreenState extends State<Counter_Screen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8.0,
        title: const Text('Home'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Number pushs",
              style: TextStyle(fontSize: 32, color: Colors.blue),
            ),
            Text("$count", style: const TextStyle(fontSize: 26, color: Colors.grey)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showMessage();
          },
          child: const Icon(Icons.alarm_add)),
    );
  }

  void showMessage() {
    setState(() {
      count = count + 1;
    });    
  }
}