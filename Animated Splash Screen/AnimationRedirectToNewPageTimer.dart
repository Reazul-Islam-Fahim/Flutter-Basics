import 'dart:async';
import 'package:test_app/one.dart';
import 'package:flutter/cupertino.dart';
import 'package:rive/rive.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flare Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  void initState() {
    Timer(Duration(seconds: 3), (){
      Navigator.push(context, CupertinoPageRoute(builder: (context) => one()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: 500,
          color: Colors.blue,
          child: Center(
            child: RiveAnimation.asset(
              'assets/animations/A.riv', // Path to your .riv file
              animations: ['Demo Mode'],
              onInit: (artboard) {
                // Debugging: Print when the animation initializes
                print('Rive animation initialized');
              },// Name of the animation in the .riv file
            ),
          ),
        )
    );
  }
}
