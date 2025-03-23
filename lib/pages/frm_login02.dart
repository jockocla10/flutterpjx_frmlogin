// ignore: file_names
import 'package:flutter/material.dart'
    show
        AppBar,
        BorderRadius,
        BorderSide,
        BuildContext,
        Center,
        Color,
        Column,
        EdgeInsets,
        ElevatedButton,
        Image,
        InputDecoration,
        MaterialApp,
        OutlineInputBorder,
        OutlinedButton,
        Padding,
        RoundedRectangleBorder,
        Scaffold,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        TextAlign,
        TextFormField,
        TextStyle,
        Widget;
// ignore: implementation_imports
import 'package:flutter/src/widgets/basic.dart';

class MyWidget02 extends StatefulWidget {
  const MyWidget02({super.key, required String title});

  @override
  State<MyWidget02> createState() => _MyWidgetState02();
}

class _MyWidgetState02 extends State<MyWidget02> {
  get child => null;

  get text => null;

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 157, 210, 241),
        appBar: AppBar(
          title: const Text("WELCOME BACK !"),
          backgroundColor: const Color.fromARGB(255, 6, 104, 153),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 60, left: 24, right: 24),
          child: Center(
            child: Column(
              children: [
                Image.asset("assets/login.png", height: 200, width: 200),
                const Text(
                  'Login :',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: const Color(0xffF1F0F5),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(),
                        ),
                        labelText: 'Name *',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  'Password :',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: const Color(0xffF1F0F5),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(),
                        ),
                        labelText: 'Password *',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40, width: 300),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 253, 253, 253),
                    backgroundColor: const Color.fromARGB(255, 6, 104, 153),
                    shadowColor: const Color.fromARGB(255, 3, 47, 70),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    minimumSize: const Size(200, 50),
                  ),
                  onPressed: () {},
                  child: const Text('Login', style: TextStyle(fontSize: 20)),
                ),
                const SizedBox(height: 40, width: 300),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: const Color.fromARGB(
                          255,
                          245,
                          246,
                          247,
                        ),
                        shadowColor: const Color.fromARGB(255, 47, 47, 48),
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        minimumSize: const Size(130, 30),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: const Color.fromARGB(
                          255,
                          245,
                          246,
                          247,
                        ),
                        shadowColor: const Color.fromARGB(255, 47, 47, 48),
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        minimumSize: const Size(130, 30),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    return materialApp;
  }

  launchUrlString(url) {}
}

class LinkableElement {
  get url => null;
}
