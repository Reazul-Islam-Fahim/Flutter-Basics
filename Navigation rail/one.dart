import 'package:flutter/material.dart';

class one extends StatelessWidget {
  const one({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text('one', style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
