import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:dic_app/Pages/calendar_page.dart';
import 'package:dic_app/Pages/calendar_page.dart';
import 'package:dic_app/Pages/chat_page.dart';
import 'package:dic_app/Pages/home_page.dart';
import 'package:dic_app/Pages/profile_page.dart';
import 'package:dic_app/Pages/map_page.dart';
import 'package:dic_app/Pages/pippo_page.dart';
import 'package:dic_app/widget_tree.dart';

Future<void> main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      //home: const WidgetTree(),
      home: const MyBottomNavigationBar(),
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
    const HomePages(),
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
            label: 'Calendario',
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
            label: 'Home',
            icon: Icon(
              Icons.layers_outlined,
              color: Color.fromARGB(255, 89, 89, 71),
              size: 40,
            ),
            backgroundColor: Color.fromARGB(255, 204, 204, 178),
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: Icon(
              Icons.chat_bubble_outline_rounded,
              color: Color.fromARGB(255, 89, 89, 71),
              size: 40,
            ),
            backgroundColor: Color.fromARGB(255, 204, 204, 178),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
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
