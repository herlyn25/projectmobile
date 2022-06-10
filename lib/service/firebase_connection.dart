// ignore_for_file: avoid_function_literals_in_foreach_calls, avoid_print, unnecessary_new, no_leading_underscores_for_local_identifiers

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_clase1/models/response_firebase.dart';

class FirebaseConnection {
  static final FirebaseDatabase _database = FirebaseDatabase.instance;

  DatabaseReference instanceFirebase() {
    return _database.ref('/Registros');
  }

  /*  void getAllRegistros() {
    DatabaseReference _registros = instanceFirebase();
    _registros.onValue.listen((event) {
      final registros = event.snapshot.value;
      Map<String, dynamic> registrosJson = json.decode(registros.toString());
      print(registrosJson);
      ResponseFirebase reg = ResponseFirebase.fromJson(registrosJson);
      print(reg);
    });
  } */
  Future<ResponseFirebase> getRegisters() async {
    try {
      DatabaseReference _registros = instanceFirebase();
      DataSnapshot response = await _registros.get();
      final register = ResponseFirebase.fromJson(response.value as List);
      return register;
    } catch (e) {
      rethrow;
    }
  }
}
