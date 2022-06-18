import 'package:flutter/material.dart';

import 'button_float_custom.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> get createState => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  void incrementfn() {
    count++;
    setState(() {});
  }

  void resetfn() {
    count = 0;
    setState(() {});
  }

  void decrementfn() {
    setState(() {
      count--;
    });
  }

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
            Text("$count",
                style: const TextStyle(fontSize: 26, color: Colors.grey)),
          ],
        ),
      ),
      floatingActionButton: ButtonFloatCustom(
          increment: incrementfn, reset: resetfn, decrement: decrementfn),
    );
  }
}
