// ignore_for_file: avoid_function_literals_in_foreach_calls, avoid_print, unnecessary_new, no_leading_underscores_for_local_identifiers

import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_clase1/models/persona2.dart';

class FirebaseConnection {
  static final FirebaseDatabase _database = FirebaseDatabase.instance;

  DatabaseReference instanceFirebase() {
    return _database.ref('/Personas');
  }

  Future<List> getRegisters() async {
    List<Persona2> persons = [];
    try {
      DatabaseReference _registros = instanceFirebase();
      DataSnapshot response = await _registros.get();
      String myJson = json.encode(response.value);
      Map<String, dynamic> myJsonDecode = json.decode(myJson);
      myJsonDecode.forEach((key, element) {
        Persona2? obj = Persona2.fromJson(element);
        persons.add(obj!);
      });
    } catch (e) {
      //rethrow;
      print(e);
    }
    return persons;
  }
}
