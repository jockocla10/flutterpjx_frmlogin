import 'package:flutter/material.dart';

import 'package:jmpjx001h/pages/const/data.dart';
import 'package:jmpjx001h/pages/frmabout.dart';
import 'package:jmpjx001h/pages/home_screen.dart';
import 'package:jmpjx001h/pages/news.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  var currentIndex = 0;
  var name = footballPlayers[0]['name'] as String;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [HomeScreen(), ListNewsScreen(), AboutPage()][currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap:
            (value) => setState(() {
              currentIndex = value;
            }),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "News"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "About"),
        ],
      ),
    );
  }
}
