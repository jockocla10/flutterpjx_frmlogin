// ignore: file_names
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/basic.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key, required String title}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  get child => null;

  get text => null;

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
          padding: const EdgeInsets.only(top: 120, left: 24, right: 24),
          child: Center(
            child: Column(
              children: [
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
                      obscureText: true,
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

class color_of_choice {}
