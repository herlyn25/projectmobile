import 'package:flutter/material.dart';
import 'package:flutter_clase1/models/persona2.dart';
import 'package:flutter_clase1/service/firebase_connection.dart';
import 'package:flutter_clase1/view/listtile_custom.dart';

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
            ),
            body: FutureBuilder(
                future: FirebaseConnection().getRegisters(),
                builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
                  List mispersonas = snapshot.data ?? [];
                  return ListView(
                    children: [
                      for (Persona2 person in mispersonas)
                        ListTileCustom(
                            name: '${person.nombre} ${person.apellido}',
                            image: person.sexo == 'Masculino'
                                ? "https://cdn-icons-png.flaticon.com/512/7088/7088399.png"
                                : "https://cdn-icons-png.flaticon.com/512/7088/7088452.png")
                    ],
                  );
                })));
  }
}
