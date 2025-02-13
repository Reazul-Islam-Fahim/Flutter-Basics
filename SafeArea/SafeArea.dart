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
        body: Text("Implementing safe area.", style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
            ),
          ),
        )
      )
    );
  }
}

