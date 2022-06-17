import 'package:flutter/material.dart';
import 'package:flutter_clase1/view/login/login_util.dart';
import 'package:flutter_clase1/view/widgets/gradient_main.dart';
import 'package:flutter_clase1/view/widgets/menu.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 82, 81, 81),
        title: const Text('Login',
            style: TextStyle(fontSize: 32, fontFamily: "Pacifico")),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            GradienteMain(double.infinity),
            ElevatedButton.icon(
                onPressed: () {
                  LoginGoogleUtils().signInWithGoogle().then((user) => {
                        if (user != null)
                          {
                            showDialog<Image>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: Text("Bienvenido ${user.displayName}"),
                                content: Image(
                                    image: Image.network('${user.photoURL()}')
                                        .image),
                                actions: [
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Aceptar"))
                                ],
                              ),
                            ).whenComplete(() => Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return const Menu();
                                })))
                          }
                      });
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 82, 81, 81),
                )),
                label: const Text("Iniciar Sesion con Google"),
                icon: const FaIcon(
                  FontAwesomeIcons.googlePlus,
                  color: Colors.red,
                )),
          ],
        ),
      ),
    );
  }
}
