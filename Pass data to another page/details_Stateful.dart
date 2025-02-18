import 'package:flutter/material.dart';

class detailsPage extends StatefulWidget {
  String name;
  detailsPage({required this.name});

  @override
  State<detailsPage> createState() => _detailsPageState();
}

class _detailsPageState extends State<detailsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(widget.name),
      ),
    );
  }
}
