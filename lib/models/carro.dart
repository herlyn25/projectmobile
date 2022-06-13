import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_clase1/models/serializers.dart';

part 'carro.g.dart';

abstract class Carro implements Built<Carro, CarroBuilder> {
  String get color;
  String get marca;
  int get modelo;
  String get placa;

  Carro._();

  factory Carro([void Function(CarroBuilder) updates]) = _$Carro;
  static Serializer<Carro> get serializer => _$carroSerializer;

  static Carro? fromJson(Map<Object, Object> json) {
    return serializers.deserializeWith(Carro.serializer, json);
  }
}
