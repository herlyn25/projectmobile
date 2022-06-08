import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  callFirebase();
  runApp(const FirebaseMyList());
}

void callFirebase() {
DatabaseReference starCountRef = FirebaseDatabase.instance.ref('/Registros');
starCountRef.onValue.listen((event) {
final data = event.snapshot.value;
print(data.toString());
});  
}

class FirebaseMyList extends StatelessWidget {
  const FirebaseMyList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Estoy en Firebase'),
          ),
        ),
      ),
    );
  }
}
