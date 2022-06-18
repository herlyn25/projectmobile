import 'package:flutter/material.dart';
import 'package:flutter_clase1/view/widgets/gradient_main.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 82, 81, 81),
            title: const Text('Bienvenid@ a:',
                style: TextStyle(fontSize: 34, color: Colors.white)),
          ),
          body: Stack(
            children: [
              GradienteMain(double.infinity),
              Center(
                child:
                    SizedBox(child: Image.asset("assets/logo_autolavado.png")),
              ),
            ],
          )),
    );
  }
}
