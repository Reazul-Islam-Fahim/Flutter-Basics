import 'package:flutter/material.dart';
import 'package:test_app/one.dart';
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
  int _selectedindex = 0;
  final _pages= [
    one(),
    two()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: Colors.black12,
            labelType: NavigationRailLabelType.all,
            minWidth: 50,
            destinations: [
              NavigationRailDestination(
                  icon: Icon(Icons.wifi, color: Colors.white),
                  label: Text('Wifi'),
                  selectedIcon: Icon(Icons.wifi, color: Colors.blue)),
              NavigationRailDestination(
                  icon: Icon(Icons.wb_sunny, color: Colors.white),
                  label: Text('Sunny'),
                  selectedIcon: Icon(Icons.wb_sunny, color: Colors.blue)),
            ],
            selectedIndex: _selectedindex,
            onDestinationSelected: (val) {
              setState(() {
                _selectedindex = val;
              });
            },
          ),
          Expanded(child: Container(
            child: _pages[_selectedindex],
          ))
        ],
      ),
    );
  }
}
