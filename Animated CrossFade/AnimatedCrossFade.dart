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
  bool check = true; // A variable to toggle the state of the animation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedCrossFade(
              firstChild: Container(
                height: 200,
                width: double.infinity,
                color: Colors.blue,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        check = false;
                      });
                    },
                    child: Text('Hi'),
                  ),
                ),
              ),
              secondChild: Center(
                child: Column(
                  children: [
                    Text(
                      'How are you!',
                      style: TextStyle(fontSize: 50),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          check = true; // Change the value to show the first child again
                        });
                      },
                      child: Text('Hi again'),
                    ),
                  ],
                ),
              ),
              crossFadeState: check
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: Duration(seconds: 1),
            ),
          ),
        ],
      ),
    );
  }
}
