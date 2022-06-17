// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_clase1/view/widgets/gradiente.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style =
        TextStyle(fontSize: 24, color: Colors.blue, fontFamily: "Pacifico");
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
            children: [
              Gradiente(
                  "Herly Castillo",
                  300,
                  "https://firebasestorage.googleapis.com/v0/b/appclase-6cdc7.appspot.com/o/yo.png?alt=media&token=359c9b7b-0e9f-40f3-b59e-295ea94c0833",
                  80),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text("Sexo: ", style: style),
                    Text("Masculino", style: style),
                    const Divider(),
                    Text("Email:", style: style),
                    Text("herly-1988@gmail.com", style: style),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
