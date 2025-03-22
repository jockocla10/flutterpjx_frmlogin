import 'package:flutter/material.dart';
import 'package:jmpjx001h/pages/bottom_nav_bar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Home Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 144, 229, 240),
        ),
      ),

      home: const BottomNavBarScreen(),
      //home: const BottomNavigationExample(),
    );
  }
}
