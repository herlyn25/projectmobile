import 'package:flutter/material.dart';
import 'package:flutter_clase1/view/login/login_util.dart';
import 'package:flutter_clase1/view/widgets/menu.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: Center(
            child: ElevatedButton(
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
                child: const Text("Iniciar Sesion con Google")),
          ),
        ));
  }
}
