import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:test_app/four.dart';
import 'package:test_app/one.dart';
import 'package:test_app/three.dart';
import 'package:test_app/two.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Modal button',
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
  var _page = 0;
  final pages = [
    one(),
    two(),
    three(),
    four(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          color: Colors.white,
          backgroundColor: Colors.blue,
          animationCurve: Curves.linear,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          items: [
            Icon(Icons.access_alarm),
            Icon(Icons.call),
            Icon(Icons.message),
            Icon(Icons.account_balance),
          ]),
      body: pages[_page],
    );
  }
}
