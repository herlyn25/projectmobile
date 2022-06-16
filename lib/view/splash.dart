// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_clase1/view/firebase_my_list.dart';
import 'package:flutter_clase1/view/widgets/elevation_custom.dart';
import 'package:flutter_clase1/view/widgets/menu.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> get createState => Home();
}

class Home extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 8), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const FirebaseMyList()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 82, 81, 81),
        title: const Text(
          'Bienvenidos Clean Car Wash',
          style: TextStyle(fontSize: 26, fontFamily: "Pacifico"),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/carwash.json', height: 300, width: 300),
              const Text("Home")
            ]),
      ),
    );
  }
}
