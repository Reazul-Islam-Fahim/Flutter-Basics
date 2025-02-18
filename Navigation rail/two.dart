import 'package:flutter/material.dart';

class two extends StatelessWidget {
  const two({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text('two', style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
