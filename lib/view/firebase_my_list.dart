// ignore_for_file: unused_label

import 'package:flutter/material.dart';
import 'package:flutter_clase1/models/Persona.dart';
import 'package:flutter_clase1/service/servicehelper.dart';
import 'package:flutter_clase1/view/accordion_custom.dart';
import 'package:flutter_clase1/view/formPerson.dart';

class FirebaseMyList extends StatefulWidget {
  const FirebaseMyList({Key? key}) : super(key: key);

  @override
  State<FirebaseMyList> createState() => _FirebaseMyListState();
}

class _FirebaseMyListState extends State<FirebaseMyList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Consumiendo de Firebase',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Lista Personas'),
              actions: [
                IconButton(
                    onPressed: () {
                      setState(() {});
                    },
                    icon: const Icon(Icons.refresh)),
                IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return FormPerson();
                          });
                    },
                    icon: const Icon(Icons.add))
              ],
            ),
            body: FutureBuilder(
                future: ServiceHelper().getPersonas(),
                builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
                  List mispersonas = snapshot.data ?? [];
                  return ListView(
                    children: [
                      for (Persona person in mispersonas)
                        AccordionCustom(
                            title: '${person.name} ${person.apellido}'
                                .toUpperCase(),
                            content: """Licencia: ${person.licencia} \nCarro:
    Color: ${person.car.color}   
    Marca: ${person.car.marca}   
    Modelo: ${person.car.modelo}    
    Placa: ${person.car.placa} \nServicio:   
    Lavado: ${person.service.washed}
    Polish: ${person.service.polish}
    Tapiceria: ${person.service.tapestry} """)
                    ],
                  );
                })));
  }
}
