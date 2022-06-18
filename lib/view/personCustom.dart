// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, avoid_unnecessary_containers, must_be_immutable, file_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_clase1/models/persona2.dart';
import 'package:flutter_clase1/view/widgets/gradiente.dart';

class PersonCustom extends StatelessWidget {
  Persona2 persona;
  PersonCustom({Key? key, required this.persona}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    const style = TextStyle(fontSize: 24, color: Colors.white);
    const style2 = TextStyle(fontSize: 24, color: Colors.blue);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 231, 231),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 82, 81, 81),
        title: Text('${persona.nombre} ${persona.apellido}',
            style: const TextStyle(fontSize: 32, color: Colors.white)),
      ),
      body: Stack(children: [
        Column(children: [
          Gradiente(
              '''Sexo: ${persona.sexo}\n Licencia: ${persona.licencia}\n Celular: ${persona.cel}''',
              280,
              persona.photo,
              10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 18),
                child: Text("Carro:",
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              const Divider(color: Colors.transparent),
              Text(" Color: ${persona.carro.color}", style: style2),
              Text("Marca: ${persona.carro.marca}", style: style2),
              Text("Modelo: ${persona.carro.modelo}", style: style2),
              Text("Placa: ${persona.carro.placa}", style: style2),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(),
              ),
              const Text("Servicio:",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  )),
              Text("Lavado: ${persona.carro.polish}", style: style2),
              Text("Polish: ${persona.carro.polish}", style: style2),
              Text("Tapiceria: ${persona.carro.tapiceria}", style: style2),
            ],
          ),
        ])
      ]),
    );
  }
}
