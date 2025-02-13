import 'package:flutter/material.dart';
import 'package:test_app/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              height: MediaQuery.of(context).size.height*0.4,
              width: MediaQuery.of(context).size.width*0.3,
              color: Colors.amber,
            ),
          ),
        )
      )
    );
  }
}
