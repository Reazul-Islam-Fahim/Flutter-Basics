import 'package:rive/rive.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flare Animation',
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
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            value = !value;
          });
        }),
        body: Container(
          color: Colors.blue,
          child: Center(
            child: RiveAnimation.asset(
              'assets/animations/A.riv', // Path to your .riv file
              animations: value == false
                  ? ['Demo Mode']
                  : ['Sun Rotate'], // Name of the animation in the .riv file
            ),
          ),
        ));
  }
}
