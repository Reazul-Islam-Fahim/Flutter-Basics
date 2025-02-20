import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(builder: (_) => MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/first':(context) => FirstSreen(),
        '/second':(context) => SecondScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstSreen(),
    );
  }
}

class FirstSreen extends StatefulWidget {
  const FirstSreen({super.key});

  @override
  State<FirstSreen> createState() => _FirstSreenState();
}

class _FirstSreenState extends State<FirstSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen(),),);
            },
            child: Text('fisrt screen')
        ),
      ),
    );
  }
}


class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstSreen(),),);
            },
            child: Text('second screen')
        ),
      ),
    );
  }
}

