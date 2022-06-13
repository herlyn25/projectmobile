// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona2.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Persona2> _$persona2Serializer = new _$Persona2Serializer();

class _$Persona2Serializer implements StructuredSerializer<Persona2> {
  @override
  final Iterable<Type> types = const [Persona2, _$Persona2];
  @override
  final String wireName = 'Persona2';

  @override
  Iterable<Object?> serialize(Serializers serializers, Persona2 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'nombre',
      serializers.serialize(object.nombre,
          specifiedType: const FullType(String)),
      'apellido',
      serializers.serialize(object.apellido,
          specifiedType: const FullType(String)),
      'licencia',
      serializers.serialize(object.licencia,
          specifiedType: const FullType(String)),
      'cel',
      serializers.serialize(object.cel, specifiedType: const FullType(int)),
      'sexo',
      serializers.serialize(object.sexo, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Persona2 deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Persona2Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'apellido':
          result.apellido = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'licencia':
          result.licencia = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'cel':
          result.cel = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'sexo':
          result.sexo = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Persona2 extends Persona2 {
  @override
  final String nombre;
  @override
  final String apellido;
  @override
  final String licencia;
  @override
  final int cel;
  @override
  final String sexo;

  factory _$Persona2([void Function(Persona2Builder)? updates]) =>
      (new Persona2Builder()..update(updates))._build();

  _$Persona2._(
      {required this.nombre,
      required this.apellido,
      required this.licencia,
      required this.cel,
      required this.sexo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(nombre, r'Persona2', 'nombre');
    BuiltValueNullFieldError.checkNotNull(apellido, r'Persona2', 'apellido');
    BuiltValueNullFieldError.checkNotNull(licencia, r'Persona2', 'licencia');
    BuiltValueNullFieldError.checkNotNull(cel, r'Persona2', 'cel');
    BuiltValueNullFieldError.checkNotNull(sexo, r'Persona2', 'sexo');
  }

  @override
  Persona2 rebuild(void Function(Persona2Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Persona2Builder toBuilder() => new Persona2Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Persona2 &&
        nombre == other.nombre &&
        apellido == other.apellido &&
        licencia == other.licencia &&
        cel == other.cel &&
        sexo == other.sexo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, nombre.hashCode), apellido.hashCode),
                licencia.hashCode),
            cel.hashCode),
        sexo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Persona2')
          ..add('nombre', nombre)
          ..add('apellido', apellido)
          ..add('licencia', licencia)
          ..add('cel', cel)
          ..add('sexo', sexo))
        .toString();
  }
}

class Persona2Builder implements Builder<Persona2, Persona2Builder> {
  _$Persona2? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _apellido;
  String? get apellido => _$this._apellido;
  set apellido(String? apellido) => _$this._apellido = apellido;

  String? _licencia;
  String? get licencia => _$this._licencia;
  set licencia(String? licencia) => _$this._licencia = licencia;

  int? _cel;
  int? get cel => _$this._cel;
  set cel(int? cel) => _$this._cel = cel;

  String? _sexo;
  String? get sexo => _$this._sexo;
  set sexo(String? sexo) => _$this._sexo = sexo;

  Persona2Builder();

  Persona2Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _apellido = $v.apellido;
      _licencia = $v.licencia;
      _cel = $v.cel;
      _sexo = $v.sexo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Persona2 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Persona2;
  }

  @override
  void update(void Function(Persona2Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Persona2 build() => _build();

  _$Persona2 _build() {
    final _$result = _$v ??
        new _$Persona2._(
            nombre: BuiltValueNullFieldError.checkNotNull(
                nombre, r'Persona2', 'nombre'),
            apellido: BuiltValueNullFieldError.checkNotNull(
                apellido, r'Persona2', 'apellido'),
            licencia: BuiltValueNullFieldError.checkNotNull(
                licencia, r'Persona2', 'licencia'),
            cel: BuiltValueNullFieldError.checkNotNull(cel, r'Persona2', 'cel'),
            sexo: BuiltValueNullFieldError.checkNotNull(
                sexo, r'Persona2', 'sexo'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
