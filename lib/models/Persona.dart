// ignore_for_file: file_names

import 'package:flutter_clase1/models/car.dart';
import 'package:flutter_clase1/models/service.dart';

class Persona {
  final String id;
  final String name;
  final String apellido;
  final String licencia;
  final String celular;
  final Car car;
  final Service service;
  Persona(this.id, this.name, this.apellido, this.licencia, this.celular,
      this.car, this.service);

  @override
  String toString() {
    super.toString();
    return 'Mi id es $id; mi nombre es $name $apellido con mumero celular $celular';
  }
}
