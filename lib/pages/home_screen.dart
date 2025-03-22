import 'package:flutter/material.dart';
import 'package:jmpjx001h/pages/const/data.dart';
import 'package:jmpjx001h/pages/profile_screen.dart';
import 'package:jmpjx001h/pages/setting_screen.dart';
import 'package:jmpjx001h/pages/utils/extensions/context_extentions.dart';
//import 'package:jmpjx001h/pages/listview_screen.dart';
// ignore: unused_import
//import 'package:jmpjx001h/pages/utils/extensions/context_extensions.dart';
//import 'package:jmpjx001h/pages/utils/routes.dart';
import 'package:jmpjx001h/widgets/menu_grid_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var name = footballPlayers[0]['name'] as String;

  void onClick(String menu) async {
    switch (menu.toLowerCase()) {
      case "home":
        break;
      case "profile":
        final result = await context.push<String>(ProfileScreen(name: name));
        if (result != null) {
          setState(() {
            name = result;
          });
        }
        break;
      case "settings":
        final result = await context.push<String>(SettingScreen());
        if (result != null) {
          setState(() {
            name = result;
          });
        }
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello, $name")),
      body: ListView(children: [MenuGridWidget(onClick: onClick)]),
    );
  }
}
