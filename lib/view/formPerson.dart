// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers, unused_local_variable, unnecessary_new, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_clase1/models/car.dart';

import '../models/Persona.dart';
import '../models/service.dart';
import '../service/servicehelper.dart';

class FormPerson extends StatefulWidget {
  const FormPerson({Key? key}) : super(key: key);

  @override
  State<FormPerson> get createState => _FormPersonState();
}

class _FormPersonState extends State<FormPerson> {
  final TextEditingController _color = TextEditingController();
  final TextEditingController _marca = TextEditingController();
  final TextEditingController _placa = TextEditingController();
  final TextEditingController _modelo = TextEditingController();
  final TextEditingController _id = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _apellido = TextEditingController();
  final TextEditingController _licencia = TextEditingController();
  final TextEditingController _celular = TextEditingController();
  final GlobalKey<FormState> _formularioKey = GlobalKey<FormState>();
  bool answerLavado = false;
  bool answerPolished = false;
  bool answerTapiceria = false;

  @override
  Future<void> dispose() async {
    super.dispose();
    _name.dispose();
    _apellido.dispose();
    _licencia.dispose();
    _celular.dispose();
    _marca.dispose();
    _placa.dispose();
    _modelo.dispose();
    _color.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //height: 800,
      color: const Color.fromARGB(255, 199, 220, 236),
      child: Form(
          key: _formularioKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: _id,
                  decoration: const InputDecoration(
                      labelText: "Digite ID", prefixIcon: Icon(Icons.key)),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) return "Id requerido";
                  },
                ),
                TextFormField(
                  controller: _name,
                  decoration: const InputDecoration(
                      labelText: "Digite Nombre",
                      prefixIcon: Icon(Icons.person)),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) return "name requerido";
                  },
                ),
                TextFormField(
                    controller: _apellido,
                    decoration: const InputDecoration(
                        labelText: "Digite Apellido",
                        prefixIcon: Icon(Icons.person)),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "apellido requerido";
                      }
                    }),
                TextFormField(
                    controller: _licencia,
                    decoration: const InputDecoration(
                        labelText: "Digite licencia",
                        prefixIcon: Icon(Icons.credit_card)),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "licencia requerido";
                      }
                    }),
                TextFormField(
                    controller: _celular,
                    decoration: const InputDecoration(
                        labelText: "Digite Celular",
                        prefixIcon: Icon(Icons.phone)),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "celular requerido";
                      }
                    }),
                SwitchListTile(
                    title: const Text('Lavado'),
                    value: answerLavado,
                    onChanged: (bool? value) {
                      if (value != null) {
                        answerLavado = value;
                        setState(() {});
                      }
                    }),
                SwitchListTile(
                    title: const Text('Polished'),
                    value: answerPolished,
                    onChanged: (bool? value) {
                      if (value != null) {
                        answerPolished = value;
                        setState(() {});
                      }
                    }),
                SwitchListTile(
                    title: const Text('Tapiceria'),
                    value: answerTapiceria,
                    onChanged: (bool? value) {
                      if (value != null) {
                        answerTapiceria = value;
                        setState(() {});
                      }
                    }),
                TextFormField(
                  controller: _color,
                  decoration: const InputDecoration(
                      labelText: "Digite Color",
                      prefixIcon: Icon(Icons.color_lens)),
                  validator: (String? value) {
                    if (value == null || value.isEmpty)
                      return "color requerido";
                  },
                ),
                TextFormField(
                  controller: _marca,
                  decoration: const InputDecoration(
                      labelText: "Digite Marca",
                      prefixIcon: Icon(Icons.mark_as_unread)),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "marca requerido";
                    }
                  },
                ),
                TextFormField(
                  controller: _modelo,
                  decoration: const InputDecoration(
                      labelText: "Digite Modelo",
                      prefixIcon: Icon(Icons.numbers)),
                  validator: (String? value) {
                    if (value == null || value.isEmpty)
                      return "modelo requerido";
                  },
                ),
                TextFormField(
                  controller: _placa,
                  decoration: const InputDecoration(
                      labelText: "Digite Placa", prefixIcon: Icon(Icons.abc)),
                  validator: (String? value) {
                    if (value == null || value.isEmpty)
                      return "placa requerida";
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: () async {
                          if (true) {
                            String lavado = "no";
                            String polished = "no";
                            String tapiceria = "no";

                            if (answerLavado) lavado = "si";
                            if (answerPolished) polished = "si";
                            if (answerTapiceria) tapiceria = "si";
                            Car car = new Car(
                                _color.text, _marca.text, 2022, _placa.text);
                            Service service = Service(lavado, polished, "si");
                            Persona per = Persona(
                                _id.text,
                                _name.text,
                                _apellido.text,
                                _licencia.text,
                                _celular.text,
                                car,
                                service);
                            print(per.toString());
                            bool answer =
                                await ServiceHelper().savePersona(per);

                            if (_formularioKey.currentState!.validate()) {
                              Navigator.pop(context);
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("Registro Guardado"),
                                backgroundColor: Colors.green,
                              ));
                              answerLavado = false;
                              answerPolished = false;
                              answerTapiceria = false;
                              print("Guardado Satisfactoriamente");
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("Error al Registrar"),
                                backgroundColor: Colors.red,
                              ));
                              print("Algo salio mal");
                            }
                          }
                        },
                        child: const Text("Aceptar")),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Cancelar"))
                  ],
                )
              ],
            ),
          )),
    );
  }
}
