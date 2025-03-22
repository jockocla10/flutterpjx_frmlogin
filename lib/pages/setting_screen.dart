import 'package:flutter/material.dart';

import 'package:jmpjx001h/pages/const/data.dart';
import 'package:jmpjx001h/pages/utils/extensions/context_extentions.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  var name = '';

  void changeName() {
    final index = footballPlayers.indexWhere((e) => e['name'] == name);
    if (index > -1) {
      final newName = footballPlayers[index + 1];
      context.pop(newName['name']);
    }
  }

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    name = (args as String?) ?? '';
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Setting Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () => context.pop(),
              child: Text("Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}
