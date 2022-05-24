import 'package:flutter/material.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 111, 118, 131),
          title: const Text('Hola Mundo'),
          
        ),
        // ignore: prefer_const_constructors
        body: Center(
          child: const Text('Car IV'),
        ),      
    );
  }
}