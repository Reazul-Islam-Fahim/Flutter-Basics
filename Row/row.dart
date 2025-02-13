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
        appBar: AppBar(title: Text('Row'),),
        body: Row(
          children: <Widget> [
            Container(
              height: 200,
              width: 150,
              color: Colors.yellow,
            ),
            SizedBox(width: 10,),
            Container(
              height: 200,
              width: 150,
              color: Colors.red,
            ),
            SizedBox(width: 10,),
            Container(
              height: 200,
              width: 150,
              color: Colors.green,
            ),
          ],
        ),
        )
      )
    );
  }
}

