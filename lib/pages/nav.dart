import 'package:fasal_app/pages/DiseaseDetection/disease_detection.dart';
import 'package:fasal_app/pages/WeatherForecast/weather_forecast.dart';
import 'package:fasal_app/pages/ProfilePage/profile.dart';
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
    ChatPage(inputString: ''),
    const ProfilePage(),
    const WeatherForecast(),
    const DiseasePrediction(),
  ];

  void setIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: ProfileScreen(),
        appBar: AppBar(
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile_photo.jpg"),
                radius: 25,
              ),
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
        body: Container(child: _widgetOptions.elementAt(_selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.article), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.sunny), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.camera), label: ""),
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
