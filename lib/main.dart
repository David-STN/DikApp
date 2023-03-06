import 'package:flutter/material.dart';
import 'Pages/calendar_page.dart';
import 'Pages/chat_page.dart';
import 'Pages/map_page.dart';
import 'Pages/profile_page.dart';
import 'Pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int currentIndex = 2;
  final List<Widget> _children = [
    const CalPage(),
    const MapPage(),
    const HomePage(),
    const ChatPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Map',
            icon: Icon(
              Icons.calendar_today,
              color: Color.fromARGB(255, 89, 89, 71),
              size: 40,
            ),
            backgroundColor: Color.fromARGB(255, 204, 204, 178),
          ),
          BottomNavigationBarItem(
            label: 'Map',
            icon: Icon(
              Icons.location_on,
              color: Color.fromARGB(255, 89, 89, 71),
              size: 40,
            ),
            backgroundColor: Color.fromARGB(255, 204, 204, 178),
          ),
          BottomNavigationBarItem(
            label: 'Map',
            icon: Icon(
              Icons.layers_outlined,
              color: Color.fromARGB(255, 89, 89, 71),
              size: 40,
            ),
            backgroundColor: Color.fromARGB(255, 204, 204, 178),
          ),
          BottomNavigationBarItem(
            label: 'Map',
            icon: Icon(
              Icons.chat_bubble_outline_rounded,
              color: Color.fromARGB(255, 89, 89, 71),
              size: 40,
            ),
            backgroundColor: Color.fromARGB(255, 204, 204, 178),
          ),
          BottomNavigationBarItem(
            label: 'Map',
            icon: Icon(
              Icons.person_pin,
              color: Color.fromARGB(255, 89, 89, 71),
              size: 40,
            ),
            backgroundColor: Color.fromARGB(255, 204, 204, 178),
            //backgroundColor: Colors.blue
          ),
        ],
        selectedLabelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
        //selectedItemColor: Colors.red,

        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
