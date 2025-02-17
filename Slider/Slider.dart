import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
  var _value = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Slider', style: TextStyle(fontSize: _value),),
          SizedBox(height: 50,),
          Text(_value.toString()),
          SizedBox(height: 50,),
          Slider(
            min: 10,
              max: 50,
              value: _value,
              onChanged: (value){
              setState(() {
                _value = value;
                print(_value);
              });
              })
        ]
      ),
    );
  }
}
