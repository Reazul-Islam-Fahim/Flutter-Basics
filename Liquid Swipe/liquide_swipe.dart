import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart'; //import package

//download liquid_swipe dependency from pub.dev

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pages= [
      Container(color: Colors.green),
      Container(color: Colors.red),
      Container(color: Colors.yellow),
      Container(color: Colors.blue),
    ];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
              body: LiquidSwipe(pages: pages),
        )
      )
    );
  }
}
