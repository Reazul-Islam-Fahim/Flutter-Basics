import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Display local image from assets
                Image.asset("images/TAXDO.png"),

                // Display image from network
                Image.network(
                    "https://cdn.pixabay.com/photo/2025/02/09/17/58/cycling-9394894_960_720.jpg"),
              ],
            ),
          ),
        )));
  }
}
