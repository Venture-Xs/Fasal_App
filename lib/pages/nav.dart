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
    ChatPage(inputString: 'Farming Chat bot'),
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
        appBar: AppBar(
          elevation: 0,
          leading: Container(
            padding: const EdgeInsets.all(10),
            child: const CircleAvatar(
              radius: 25,
            ),
          ),
          title: const Center(
              child:
                  Text("Fasal", style: TextStyle(fontWeight: FontWeight.bold))),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_sharp,
                color: Colors.black,
              ),
            ),
          ],
          backgroundColor: const Color.fromARGB(255, 248, 251, 234),
        ),
        backgroundColor: const Color.fromARGB(255, 248, 251, 234),
        body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
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
