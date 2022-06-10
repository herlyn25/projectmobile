// ignore_for_file: deprecated_member_use
import 'package:flutter_clase1/models/Persona.dart';

class ResponseFirebase {
  List<Persona>? registros;

  ResponseFirebase({this.registros});
  
  ResponseFirebase.fromJson(List<dynamic> json) {(
    registros= json.map((e) => Persona.fromJson(e)).toList());
  }}