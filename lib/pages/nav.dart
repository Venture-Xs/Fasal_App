import 'package:flutter/material.dart';

import "pages.dart";

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const ChatPage(),
    const ProfilePage(),
  ];

  void setIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 248, 251, 234),
        body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.business), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: ""),
          ],
          iconSize: 28,
          currentIndex: _selectedIndex,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          onTap: setIndex,
          selectedItemColor: const Color.fromARGB(255, 52, 78, 65),
          unselectedItemColor: const Color.fromARGB(255, 181, 203, 126),
        ));
  }
}
