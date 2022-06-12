// ignore_for_file: must_be_immutable,

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class AccordionCustom extends StatelessWidget {
  String title;
  String content;
  AccordionCustom({Key? key, required this.title, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GFAccordion(
        title: title,
        contentChild: Text(
          content,
          // ignore: prefer_const_constructors
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "Pacifico",
              color: Colors.white,
              fontSize: 16),
        ),
        collapsedIcon: const Icon(Icons.add),
        expandedIcon: const Icon(Icons.minimize),
        contentBackgroundColor: const Color.fromARGB(255, 38, 149, 240),
        textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Pacifico",
            color: Color.fromARGB(255, 9, 101, 177),
            fontSize: 20),
      ),
    );
  }
}
