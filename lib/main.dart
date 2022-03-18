import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:magic_ball/MagicBallHomePage.dart';

void main() {
  runApp(MagicApp());
}

class MagicApp extends StatefulWidget {
  MagicApp({Key? key}) : super(key: key);

  @override
  State<MagicApp> createState() => _MagicAppState();
}

class _MagicAppState extends State<MagicApp> {
  int number = 5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text("Ask me anything"),
        ),
        body: Center(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    flex: 1,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          number = Random().nextInt(4) + 1;
                        });
                      },
                      child: Image.asset('images/ball$number.png'),
                    ),
                  ),
                ),
              ),
              Text("Click image to Get your answer")
            ],
          ),
        ),
      ),
    );
  }
}
