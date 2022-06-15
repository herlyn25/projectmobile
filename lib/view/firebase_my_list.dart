import 'package:flutter/material.dart';
import 'package:flutter_clase1/models/persona2.dart';
import 'package:flutter_clase1/service/firebase_connection.dart';
import 'package:flutter_clase1/view/listtile_custom.dart';
import 'package:flutter_clase1/view/lottie_custom.dart';

class FirebaseMyList extends StatefulWidget {
  const FirebaseMyList({super.key});

  @override
  State<FirebaseMyList> get createState => _FirebaseMyListState();
}

class _FirebaseMyListState extends State<FirebaseMyList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Consumiendo de Firebase',
        home: Scaffold(
            backgroundColor: const Color.fromARGB(255, 82, 81, 81),
            appBar: AppBar(
              title: const Text(
                'Lista Personas',
                style: TextStyle(fontSize: 32, fontFamily: "Pacifico"),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LottieCustom()),
                    );
                  },
                  icon: const Icon(Icons.arrow_back),
                )
              ],
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
                          image: person.photo,
                          persona: person,
                        )
                    ],
                  );
                })));
  }
}
