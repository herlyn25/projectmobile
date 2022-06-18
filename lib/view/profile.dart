// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_clase1/view/login/login.dart';
import 'package:flutter_clase1/view/login/login_util.dart';
import 'package:flutter_clase1/view/widgets/gradiente.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(
        fontSize: 24,
        color: Color.fromARGB(255, 131, 132, 133),
        fontFamily: "Pacifico");
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 231, 231),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
            children: [
              Gradiente(
                  "Herly Castillo C\n Profesional en Formación",
                  300,
                  "https://firebasestorage.googleapis.com/v0/b/appclase-6cdc7.appspot.com/o/yo.png?alt=media&token=359c9b7b-0e9f-40f3-b59e-295ea94c0833",
                  50),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text("Sexo: ", style: style),
                    Text("Masculino", style: style),
                    const Divider(),
                    Text("Email:", style: style),
                    Text("herly-1988@gmail.com", style: style),
                    const Divider(),
                    Text("Celular:", style: style),
                    Text("3015098556", style: style),
                    ElevatedButton.icon(
                      onPressed: () {
                        LoginGoogleUtils().signOut();
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const Login();
                        }));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 82, 81, 81),
                      )),
                      label: Text("Logout",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontFamily: "Pacifico")),
                      icon: const FaIcon(
                        FontAwesomeIcons.signOutAlt,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
