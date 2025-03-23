import 'package:flutter/material.dart';
import 'package:jmpjx001g/pages/const/data.dart';
import 'package:jmpjx001g/pages/day5/profile_screen.dart';
import 'package:jmpjx001g/pages/listview_screen.dart';
import 'package:jmpjx001g/pages/utils/extensions/context_extentions.dart';
import 'package:jmpjx001g/pages/utils/routes.dart';
import 'package:jmpjx001g/widgets/menu_grid_widget.dart';

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
        Navigator.pushNamed(context, AppRoutes.tab);
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
        //ListViewScreen
        //final result = await Navigator.pushNamed(
        //  context,
        //  AppRoutes.setting,
        //  arguments: name,
        //);
        final result = await context.push<String>(ListViewScreen());
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
