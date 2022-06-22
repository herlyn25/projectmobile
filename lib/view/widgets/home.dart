import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clase1/view/widgets/gradient_main.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    const bubblesOptions = BubbleOptions(bubbleCount: 70);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                child: AnimatedBackground(
                    behaviour: BubblesBehaviour(options: bubblesOptions),
                    vsync: this,
                    child: SizedBox(
                        child: Image.asset("assets/logo_autolavado.png"))),
              ),
            ],
          )),
    );
  }
}
