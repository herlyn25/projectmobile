import 'package:flutter/material.dart';
import 'package:flutter_clase1/models/persona2.dart';
import 'package:flutter_clase1/service/firebase_connection.dart';
import 'package:flutter_clase1/view/widgets/card_custom.dart';
import 'package:flutter_clase1/view/widgets/gradient_main.dart';

class FirebaseMyList extends StatefulWidget {
  const FirebaseMyList({super.key});

  @override
  State<FirebaseMyList> createState() => _FirebaseMyListState();
}

class _FirebaseMyListState extends State<FirebaseMyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: const Color.fromARGB(255, 82, 81, 81),
            title: const Text(
              'Lista Personas',
              style: TextStyle(fontSize: 34),
            )),
        body: Stack(
          children: [
            GradienteMain(double.maxFinite),
            FutureBuilder(
                future: FirebaseConnection().getRegisters(),
                builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
                  List mispersonas = snapshot.data ?? [];
                  return ListView(
                    children: [
                      for (Persona2 person in mispersonas)
                        CardCustom(persona2: person)
                    ],
                  );
                })
          ],
        ));
  }
}
