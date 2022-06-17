// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

class Gradiente extends StatelessWidget {
  String title = "";
  double heightGradient = 0;
  String imagen = "";
  double padding_photo;
  Gradiente(this.title, this.heightGradient, this.imagen,  this.padding_photo, {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightGradient,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      alignment: const Alignment(-0.9, -0.6),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: padding_photo),
              child: CircleAvatar(
                backgroundImage: Image.network(imagen).image,
                radius: 60,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontFamily: "Pacifico",
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
