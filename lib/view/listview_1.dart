import 'package:flutter/material.dart';
import 'package:flutter_clase1/view/listtile_custom.dart';

import '../models/games.dart';

class ListView1 extends StatelessWidget {
  ListView1({Key? key}) : super(key: key);
  final List<Map<String, String>> _games = [
    {
      "image":
          "https://www.lavanguardia.com/files/og_thumbnail/uploads/2021/09/02/6130d99519f60.png",
      "name": "Roblox"
    },
    {
      "image":
          "https://i0.wp.com/hipertextual.com/wp-content/uploads/2020/12/silent-hill-1.jpg?fit=1200%2C736&quality=50&strip=all&ssl=1",
      "name": "Silent Hills"
    },
    {
      "image":
          "https://static.wikia.nocookie.net/doblaje/images/b/be/Forzahorizon5_keyart.jpg/revision/latest?cb=20220225074339&path-prefix=es",
      "name": "Forza Horizon 5"
    },
    {
      "image":
          'https://cloudfront-us-east-1.images.arcpublishing.com/infobae/CNTWUAMXZRF3BPIYPCNPFHOMJQ.jpg',
      "name": 'League of Legends',
    },
    {
      "image":
          'https://compass-ssl.xbox.com/assets/9c/94/9c944d9c-7ef1-4b46-9f68-9b02966d3993.jpg?n=Halo-Infinite_GLP-Page-Hero-0_1083x609.jpg',
      "name": 'Halo Infinite',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Video Juegos")),
        body: ListView.builder(
            itemCount: _games.length,
            itemBuilder: (_, index) {
              Games gm = Games(_games[index]["name"]!, _games[index]["image"]!);
              return ListTileCustom(name: gm.name, image: gm.image);
            }));
  }
}
