// ignore_for_file: non_constant_identifier_names

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_clase1/models/carro.dart';
import 'package:flutter_clase1/models/serializers.dart';

part 'persona2.g.dart';

abstract class Persona2 implements Built<Persona2, Persona2Builder> {
  String get nombre;
  String get apellido;
  String get licencia;
  int get cel;
  String get sexo;

  Persona2._();
  factory Persona2([void Function(Persona2Builder) updates]) = _$Persona2;
  static Serializer<Persona2> get serializer => _$persona2Serializer;

  static Persona2? fromJson(Map<String?, dynamic> json) {
    return serializers.deserializeWith(Persona2.serializer, json);
  }
}
