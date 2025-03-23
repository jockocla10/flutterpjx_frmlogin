import 'package:flutter/material.dart';
import 'package:jmpjx001g/pages/frmdet01.dart';
//import 'package:JMPJX001G/pages/MyHomepage.dart';

//import 'package:jmpjx001g/pages/frm_login02.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyAppLogin('LOGIN'),
      //home: const ListViewSeparatedScreen(),
      //home: const ListViewScreen(),
      //home: const BottomNavBarScreen(),
    );
  }
}
