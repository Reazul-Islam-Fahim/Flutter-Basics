import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:ui';

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

  DateTime? _date;
  TimeOfDay? _time;

  getDate() async {
    DateTime? date = await showDatePicker(
        context: context,
        firstDate: DateTime(DateTime.now().year-20),
        lastDate: DateTime(DateTime.now().year+2));

    setState(() {
      _date = date;
    });

  }

  getTime() async
  {
    TimeOfDay? time = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now()
    );
    setState(() {
      _time = time;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Transform.rotate(
                angle: pi/4,
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 150,),
              Transform.scale(
                scale: 1.5,
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 150,),
              Transform.translate(
                offset: Offset(50,100),
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
