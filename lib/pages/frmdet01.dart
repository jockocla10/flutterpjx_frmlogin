import 'package:flutter/material.dart';

class MyAppLogin extends StatefulWidget {
  const MyAppLogin(String s, {super.key});

  @override
  State<MyAppLogin> createState() => _MyAppState();
}

class _MyAppState extends State<MyAppLogin> {
  get text => null;

  @override
  Widget build(BuildContext context) {
    var inputDecoration = InputDecoration(
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
    );

    // use the validator to return an error string (or null) based on the input text
    (text) {
      if (text == null || text.isEmpty) {
        return 'Can\'t be empty';
      }
      if (text.length < 4) {
        return 'Too short';
      }
      return null;
    };

    var outlinedButton = OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 245, 246, 247),
        shadowColor: const Color.fromARGB(255, 47, 47, 48),
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        minimumSize: const Size(130, 30),
      ),
      onPressed: () {},

      child: const Text('Sign Up', style: TextStyle(fontSize: 12)),
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("WELCOME BACK !"),
          backgroundColor: const Color.fromARGB(255, 6, 104, 153),
        ),
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              // ignore: avoid_unnecessary_containers
              Container(
                child: const FractionallySizedBox(
                  heightFactor: 1.0,
                  widthFactor: 1.0,
                  //for full screen set heightFactor: 1.0,widthFactor: 1.0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/CoolLogin.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 5, left: 24, right: 24),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset("assets/login.png", height: 170, width: 170),
                      const Text(
                        'Login :',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          TextFormField(
                            onChanged: (text),
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
                      const SizedBox(height: 10),
                      const Text(
                        'Password :',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          TextFormField(
                            obscureText: true,
                            obscuringCharacter: "*",
                            decoration: inputDecoration,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20, width: 300),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: const Color.fromARGB(
                            255,
                            253,
                            253,
                            253,
                          ),
                          backgroundColor: const Color.fromARGB(
                            255,
                            6,
                            104,
                            153,
                          ),
                          shadowColor: const Color.fromARGB(255, 3, 47, 70),
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                          minimumSize: const Size(200, 50),
                        ),
                        onPressed: () {},

                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(height: 60, width: 300),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          outlinedButton,
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: const Color.fromARGB(
                                255,
                                245,
                                246,
                                247,
                              ),
                              shadowColor: const Color.fromARGB(
                                255,
                                47,
                                47,
                                48,
                              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
