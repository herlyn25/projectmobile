import 'package:flutter/material.dart';
import 'package:flutter_clase1/models/games.dart';

// ignore: must_be_immutable
class ListTileCustom extends StatelessWidget {
  final String name;
  final String image;
  ListTileCustom({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: Image.network(image).image),
      title: Text(name),
      onTap: () => Scaffold.of(context).showSnackBar(SnackBar(
        content: Image(
          image: Image.network(image).image,
        ),
        duration: const Duration(seconds: 2),
      )),
    );
  }
}
