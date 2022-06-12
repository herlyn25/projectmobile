import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_clase1/models/serializers.dart';

part 'car.g.dart';

abstract class Car implements Built<Car, CarBuilder> {
  
  String get color;
  String get marca;
  int get modelo;
  String get placa;

  Car._();

  factory Car([void Function(CarBuilder) updates]) = _$Car;
  static Serializer<Car> get serializer => _$carSerializer;

  static Car? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Car.serializer, json);
  }
}
