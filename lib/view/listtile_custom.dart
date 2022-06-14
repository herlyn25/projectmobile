import 'package:flutter/material.dart';
import 'package:flutter_clase1/models/persona2.dart';
import 'package:flutter_clase1/view/personCustom.dart';

// ignore: must_be_immutable
class ListTileCustom extends StatelessWidget {
  final String name;
  final String image;
  final Persona2 persona;

  ListTileCustom(
      {super.key,
      required this.name,
      required this.image,
      required this.persona});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(backgroundImage: Image.network(image).image),
        title: Text(name,
            style: const TextStyle(
                color: Color.fromARGB(255, 245, 246, 247),
                fontSize: 32,
                fontFamily: "Pacifico")),
        onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PersonCustom(persona: persona))),
            });
  }
}
