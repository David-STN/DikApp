import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'calendar_page.dart';
import 'chat_page.dart';
import 'profile_page.dart';
import 'map_page.dart';
import 'package:dic_app/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: const Center(
        child: Text('Pagina Home'),
      ),
    );
  }
}
