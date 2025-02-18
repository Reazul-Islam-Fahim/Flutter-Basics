import 'package:flutter/material.dart';

class detailsPage extends StatelessWidget {
  String? name;

  detailsPage({this.name});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(child: Text(name.toString(), style: TextStyle(fontSize: 50),),),
    );
  }
}
