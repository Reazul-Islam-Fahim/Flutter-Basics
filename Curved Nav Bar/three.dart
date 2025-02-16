import 'package:flutter/material.dart';

class three extends StatelessWidget {
  const three({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text('three', style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
