// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers, unused_local_variable

import 'package:flutter/material.dart';

class FormPerson extends StatefulWidget {
  const FormPerson({Key? key}) : super(key: key);

  @override
  State<FormPerson> createState() => _FormPersonState();
}

class _FormPersonState extends State<FormPerson> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _apellido = TextEditingController();
  final TextEditingController _licencia = TextEditingController();
  final TextEditingController _celular = TextEditingController();

  @override
  void dispose() {
    _name.dispose();
    _apellido.dispose();
    _licencia.dispose();
    _celular.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 500,
      color: const Color.fromARGB(255, 199, 220, 236),
      child: Form(
          child: Column(
        children: [
          TextFormField(
            controller: _name,
            decoration: const InputDecoration(labelText: "Digite Nombre"),
          ),
          TextFormField(
            controller: _apellido,
            decoration: const InputDecoration(labelText: "Digite Apellido"),
          ),
          TextFormField(
            controller: _licencia,
            decoration: const InputDecoration(labelText: "Digite licencia"),
          ),
          TextFormField(
            controller: _celular,
            decoration: const InputDecoration(labelText: "Digite Celular"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
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
      )),
    );
  }
}
