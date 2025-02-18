// import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: RiveAnimation.asset(
            'assets/animations/A.riv', // Path to your .riv file
            animations: ['Rectangle shape morphing animation'], // Name of the animation in the .riv file
            onInit: (artboard) {
              debugPrint('Demo Mode');
            },
          ),
        ),
      ),
    );
  }
}
