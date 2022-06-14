import 'package:flutter/material.dart';
import 'package:flutter_clase1/view/firebase_my_list.dart';
import 'package:flutter_clase1/view/widgets/elevationCustom.dart';
import 'package:lottie/lottie.dart';

class LottieCustom extends StatefulWidget {
  const LottieCustom({Key? key}) : super(key: key);

  @override
  State<LottieCustom> get createState => _LottieCustomState();
}

class _LottieCustomState extends State<LottieCustom>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Bienvenidos Clean Car Wash',
              style: TextStyle(fontSize: 26, fontFamily: "Pacifico"),
            ),
          ),
          body: Center(
            child: Column(children: [
              /* Lottie.network(
                  "https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/C.json", 
                  repeat: true),*/
              Lottie.asset('assets/carwash.json', height: 300, width: 300),
              const ElevationCustom(
                  widget: FirebaseMyList(),
                  text_button: "Ir al listado",
                  size_letter: 32)
            ]),
          ),
        ));
  }
}
