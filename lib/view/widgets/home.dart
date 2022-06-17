import 'package:flutter/material.dart';
import 'package:flutter_clase1/view/widgets/gradient_main.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 82, 81, 81),
          title: const Text('Bienvenido a Clean Car Wash',
              style: TextStyle(
                  fontFamily: "Pacifico", fontSize: 28, color: Colors.white)),
        ),
        body: Stack(
          children: [
            GradienteMain(double.infinity),
            Center(
              child: SizedBox(child: Image.asset("assets/logo_autolavado.png")),
            ),
          ],
        ));
  }
}
