import 'package:flutter/material.dart';
import 'package:test_app/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Scaffold(
        body: Container(
          height: 200,
          width: 200,
          color: Colors.amber,
          child: Text('This is a container'),
        ),
        )
      )
    );
  }
}

