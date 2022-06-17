// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class GradienteMain extends StatelessWidget {
  double heightGradient = 0;
  GradienteMain(this.heightGradient, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: heightGradient,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 69, 69, 70),
                    Color.fromARGB(255, 116, 105, 231)
                  ],
                  begin: FractionalOffset(0.2, 0.0),
                  end: FractionalOffset(1.0, 0.6),
                  stops: [0.0, 0.6],
                  tileMode: TileMode.clamp)),
          alignment: const Alignment(-0.9, -0.6)),
    );
  }
}
