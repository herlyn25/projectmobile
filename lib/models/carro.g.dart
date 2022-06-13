// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carro.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Carro> _$carroSerializer = new _$CarroSerializer();

class _$CarroSerializer implements StructuredSerializer<Carro> {
  @override
  final Iterable<Type> types = const [Carro, _$Carro];
  @override
  final String wireName = 'Carro';

  @override
  Iterable<Object?> serialize(Serializers serializers, Carro object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'color',
      serializers.serialize(object.color,
          specifiedType: const FullType(String)),
      'marca',
      serializers.serialize(object.marca,
          specifiedType: const FullType(String)),
      'modelo',
      serializers.serialize(object.modelo, specifiedType: const FullType(int)),
      'placa',
      serializers.serialize(object.placa,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Carro deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CarroBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'marca':
          result.marca = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'modelo':
          result.modelo = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'placa':
          result.placa = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Carro extends Carro {
  @override
  final String color;
  @override
  final String marca;
  @override
  final int modelo;
  @override
  final String placa;

  factory _$Carro([void Function(CarroBuilder)? updates]) =>
      (new CarroBuilder()..update(updates))._build();

  _$Carro._(
      {required this.color,
      required this.marca,
      required this.modelo,
      required this.placa})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(color, r'Carro', 'color');
    BuiltValueNullFieldError.checkNotNull(marca, r'Carro', 'marca');
    BuiltValueNullFieldError.checkNotNull(modelo, r'Carro', 'modelo');
    BuiltValueNullFieldError.checkNotNull(placa, r'Carro', 'placa');
  }

  @override
  Carro rebuild(void Function(CarroBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CarroBuilder toBuilder() => new CarroBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Carro &&
        color == other.color &&
        marca == other.marca &&
        modelo == other.modelo &&
        placa == other.placa;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, color.hashCode), marca.hashCode), modelo.hashCode),
        placa.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Carro')
          ..add('color', color)
          ..add('marca', marca)
          ..add('modelo', modelo)
          ..add('placa', placa))
        .toString();
  }
}

class CarroBuilder implements Builder<Carro, CarroBuilder> {
  _$Carro? _$v;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _marca;
  String? get marca => _$this._marca;
  set marca(String? marca) => _$this._marca = marca;

  int? _modelo;
  int? get modelo => _$this._modelo;
  set modelo(int? modelo) => _$this._modelo = modelo;

  String? _placa;
  String? get placa => _$this._placa;
  set placa(String? placa) => _$this._placa = placa;

  CarroBuilder();

  CarroBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _color = $v.color;
      _marca = $v.marca;
      _modelo = $v.modelo;
      _placa = $v.placa;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Carro other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Carro;
  }

  @override
  void update(void Function(CarroBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Carro build() => _build();

  _$Carro _build() {
    final _$result = _$v ??
        new _$Carro._(
            color:
                BuiltValueNullFieldError.checkNotNull(color, r'Carro', 'color'),
            marca:
                BuiltValueNullFieldError.checkNotNull(marca, r'Carro', 'marca'),
            modelo: BuiltValueNullFieldError.checkNotNull(
                modelo, r'Carro', 'modelo'),
            placa: BuiltValueNullFieldError.checkNotNull(
                placa, r'Carro', 'placa'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
