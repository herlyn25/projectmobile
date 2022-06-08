// ignore_for_file: avoid_function_literals_in_foreach_calls, avoid_print, unnecessary_new

import 'dart:math';

import 'package:firebase_database/firebase_database.dart';
import '../models/Persona.dart';
import '../models/car.dart';
import '../models/service.dart';

class ServiceHelper {
  Future<List<Persona>> getPersonas() async {
    List<Persona> personas = [];
    try {
      DatabaseEvent snap =
          await FirebaseDatabase.instance.ref().child('Registros').once();
      if (snap.snapshot.exists) {
        snap.snapshot.children.forEach((element) {
          Map map = {'key': element.key, 'body': element.value};
          Car car = Car(
              map['body']['Carro']['Color'],
              map['body']['Carro']['marca'],
              map['body']['Carro']['modelo'],
              map['body']['Carro']['placa']);
          Service service = Service(
            map['body']['Servicio']['lavado'],
            map['body']['Servicio']['polish'],
            map['body']['Servicio']['tapiceria'],
          );
          Persona persona = Persona(
              map['key'].toString(),
              map['body']['nombre'],
              map['body']['apellido'],
              map['body']['licencia'],
              map['body']['celular'].toString(),
              car,
              service);
          personas.add(persona);
        });
      }
    } catch (e) {
      print(e.toString());
      return personas;
    }
    return personas;
  }

  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  Future<bool> savePersona(Persona per) async {
    bool respuesta;
    try {
      var key = new Random();
      await FirebaseDatabase.instance.ref().child('Registros').push().set({
        '${key.nextInt(10000)}': {
          {
            'Carro': {
              'Color': per.car.color,
              'marca': per.car.marca,
              'modelo': per.car.modelo,
              'placa': per.car.placa
            },
            'Servicio': {
              'lavado': per.service.washed,
              'polish': per.service.polish,
              'tapiceria': per.service.tapestry
            },
            'apellido': per.apellido,
            'cel': per.celular,
            'licencia': per.licencia,
            'nombre': per.name
          }
        }
      });
      respuesta = true;
    } catch (e) {
      respuesta = false;
      print(e);
    }
    return respuesta;
  }
}
