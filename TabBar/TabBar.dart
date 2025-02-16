import 'package:flutter/material.dart';
import 'package:test_app/one.dart';
import 'package:test_app/two.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('This is AppBar and below is the TabBar.'),
            bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.camera),),
                  Tab(icon: Icon(Icons.call),),
                ]
            ),
          ),
          body: TabBarView(
              children: [
                one(),
                two(),
              ]
          ),
        ),
      )
    );
  }
}
