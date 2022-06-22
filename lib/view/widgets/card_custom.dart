// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_clase1/models/persona2.dart';
import 'package:flutter_clase1/view/personCustom.dart';

class CardCustom extends StatelessWidget {
  Persona2 persona2;
  CardCustom({Key? key, required this.persona2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        color: Color.fromARGB(255, 110, 179, 202),
        elevation: 2,
        child: SizedBox(
          width: 350,
          height: 120,
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Row(children: [
              CircleAvatar(
                backgroundImage: Image.network(persona2.photo).image,
                radius: 45,
              ),
              const VerticalDivider(),
              SizedBox(
                width: 160,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Column(children: [
                    Text(
                      "${persona2.nombre} ${persona2.apellido}",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Divider(color: Colors.transparent),
                    Text(
                      "${persona2.cel}",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ]),
                ),
              ),
              const VerticalDivider(),
              IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  textDirection: TextDirection.rtl,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              PersonCustom(persona: persona2)));
                },
              )
            ]),
          ),
        ),
      ),
    );
  }
}