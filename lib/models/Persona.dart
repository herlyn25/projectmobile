// ignore_for_file: file_names
import 'package:flutter_clase1/models/car.dart';
import 'package:flutter_clase1/models/service.dart';

class Persona {
  final String? nombre;
  final String? apellido;
  final String? licencia;
  final String? celular;
  final Car? car;
  final Service? service;

  Persona(
      {this.nombre,
      this.apellido,
      this.licencia,
      this.celular,
      this.car,
      this.service});

  factory Persona.fromJson(Map<String, dynamic> json) {
    return Persona(
        nombre: json['nombre'],
        apellido: json['apellido'],
        licencia: json['licencia'],
        celular: json['celular'],
        car: json['Carro'] != null ? Car.fromJson(json['Carro']) : null,
        service: json['Servicio'] != null
            ? Service.fromJson(json['Servicio'])
            : null);
  }
}