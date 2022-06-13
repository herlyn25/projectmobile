// ignore_for_file: unused_import

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_clase1/models/carro.dart';
import 'package:flutter_clase1/models/persona2.dart';

part 'serializers.g.dart';

@SerializersFor([Persona2, Carro])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
