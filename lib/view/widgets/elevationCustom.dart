// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class ElevationCustom extends StatelessWidget {
  final Widget widget;
  final String text_button;
  final double size_letter;

  const ElevationCustom(
      {Key? key, required this.widget, required this.text_button,required this.size_letter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(        
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget),
          );
        },
        child: Text(
          text_button,
          style: TextStyle(fontSize: size_letter, fontFamily: "Pacifico"),
        ));
  }
}
