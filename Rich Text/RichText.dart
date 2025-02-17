import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(text: TextSpan(
          text: "Do not have a account?",
          style: TextStyle(fontSize: 20),
          children: [
            TextSpan(
              text: 'Sign up',
              style: TextStyle(fontSize: 25, color: Colors.blue),
            ),
            TextSpan(
              text: 'Subscribe',
              style: TextStyle(fontSize: 25, color: Colors.green),
            ),
          ]
        ))
      ),
    );
  }
}
