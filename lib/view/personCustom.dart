// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, avoid_unnecessary_containers, must_be_immutable, file_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_clase1/models/persona2.dart';
import 'package:flutter_clase1/view/widgets/elevationCustom.dart';
import 'package:flutter_clase1/view/widgets/gradiente.dart';

import 'firebase_my_list.dart';

class PersonCustom extends StatelessWidget {
  Persona2 persona;
  PersonCustom({Key? key, required this.persona}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    const style =
        TextStyle(fontFamily: "Pacifico", fontSize: 17, color: Colors.white);
    const style2 =
        TextStyle(fontFamily: "Pacifico", fontSize: 17, color: Colors.blue);
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('${persona.nombre} ${persona.apellido}',
              style: const TextStyle(
                  fontFamily: "Pacifico", fontSize: 36, color: Colors.white)),
        ),
        body: Stack(children: [
          Column(children: [
            Gradiente(
                '''Sexo: ${persona.sexo}\n Licencia: ${persona.licencia}\n Celular: ${persona.cel}''',
                270,
                persona.photo),
            Text('''Carro:
        Color: ${persona.carro.color}
        Marca: ${persona.carro.marca}
        Modelo: ${persona.carro.modelo}
        Placa: ${persona.carro.placa}
        ''', style: style2),
            Text('''Servicio:
        Lavado: ${persona.carro.polish}
        Polish: ${persona.carro.polish}
        Tapiceria: ${persona.carro.tapiceria}\n''', style: style2),
            const ElevationCustom(
                widget: FirebaseMyList(),
                text_button: "Ir al Listado",
                size_letter: 28)
          ])
        ]),
      ),
    );
  }
}
