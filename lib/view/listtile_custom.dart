import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListTileCustom extends StatelessWidget {
  final String name;
  final String image;
  const ListTileCustom({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: Image.network(image).image),
      title: Text(name),
      onTap: () => showDialog<Image>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
              title: Text(name),
              content: Image(image: Image.network(image).image))
              ),
    );
  }
}
