import 'package:flutter/material.dart';

void main() => runApp(Counter());

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var count = 0;
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
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showMessage();
          },
          child: const Icon(Icons.alarm_add)),
    );
  }

  void showMessage() {
    // ignore: avoid_print
    print("object");
  }
}
