// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, avoid_unnecessary_containers, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_clase1/models/persona2.dart';
import 'package:flutter_clase1/view/widgets/elevationCustom.dart';

import 'firebase_my_list.dart';

class PersonCustom extends StatelessWidget {
  Persona2 persona;
  PersonCustom({Key? key, required this.persona}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
            child: Column(children: [
          Text('${persona.nombre} ${persona.apellido}'),
          const ElevationCustom(
              widget: FirebaseMyList(),
              text_button: "Ir al Listado",
              size_letter: 32)
        ])),
      ),
    );
  }
}
