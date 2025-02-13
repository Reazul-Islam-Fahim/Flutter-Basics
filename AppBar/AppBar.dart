import 'dart:mirrors';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Appbar'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.add_a_photo),
              onPressed: () {
                print('More');
              },
            ),
          ],
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Text('Simple Appbar', style: TextStyle(fontSize: 20), fontweight: FontWeight.bold),
        ),
      ),
    );
  }
}
