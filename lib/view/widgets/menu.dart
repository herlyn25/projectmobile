import 'package:flutter/material.dart';
import 'package:flutter_clase1/view/firebase_my_list.dart';
import 'package:flutter_clase1/view/profile.dart';
import 'package:flutter_clase1/view/widgets/home.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> get createState => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;
  static List<Widget> get _widgetOptions => [
        const Home(),
        FirebaseMyList(),
        const Profile()
      ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.car_crash), label: "Car Service"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}


