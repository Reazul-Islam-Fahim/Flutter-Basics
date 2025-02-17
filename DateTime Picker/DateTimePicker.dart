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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _date == null ? Text('Choose date') : Text('Date : ${_date?.year}-${_date?.month}-${_date?.day}', style: TextStyle(fontSize: 40),),

            ElevatedButton(onPressed: (){
              getDate();
            }, child: Text('Pick date')),
            SizedBox(height: 50,),
            _time == null ? Text('Choose time') : Text('Time : ${_time?.hour}:${_time?.minute}', style: TextStyle(fontSize: 40),),
            ElevatedButton(onPressed: (){
              getTime();
            }, child: Text('Pick time')),
          ],
        ),
      ),
    );
  }
}
