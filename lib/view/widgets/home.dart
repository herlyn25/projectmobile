import 'package:flutter/material.dart';
import 'package:flutter_clase1/view/widgets/gradient_main.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 82, 81, 81),
          title: const Text('Bienvenido a Clean Car Wash',
              style: TextStyle(
                  fontFamily: "Pacifico", fontSize: 28, color: Colors.white)),
        ),
        body: Center(
          child: Stack(children: [GradienteMain(double.infinity)]),
        ),
      ),
    );
  }
}
