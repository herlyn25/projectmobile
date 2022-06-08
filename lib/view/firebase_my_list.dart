import 'package:flutter/material.dart';

class FirebaseMyList extends StatelessWidget {
  const FirebaseMyList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Estoy en Firebase porfin funciono'),
        ),
      ),
    );
  }
}
