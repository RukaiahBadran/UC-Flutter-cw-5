import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var state1 = 1;
  var state2 = 1;

  void play() {
    state1 = Random().nextInt(3) + 1;
    state2 = Random().nextInt(3) + 1;

    setState(() {});
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Rock Paper Sicssors"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  play();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 100,
                      height: 150,
                      child: Image.asset('assets/i_$state1.png'),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 100,
                      height: 150,
                      child: Image.asset('assets/i_$state2.png'),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
              ),
              Container(
                width: 80,
                height: 80,
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  onPressed: () {
                    play();
                  },
                  child: Text('Play!'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
