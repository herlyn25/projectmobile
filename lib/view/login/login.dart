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
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Menu();
                            }))
                          }
                      });
                },
                child: const Text("Iniciar Sesion con Google")),
          ),
        ));
  }
}
