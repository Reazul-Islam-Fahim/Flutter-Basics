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

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(

          padding: EdgeInsets.all(45),
          child: Row(
            children: [
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.dashboard),
                tooltip: 'Dashboard',
                padding: EdgeInsets.symmetric(horizontal: 20),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.browse_gallery),
                tooltip: 'Browse gallery',
                padding: EdgeInsets.symmetric(horizontal: 20),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.camera),
                tooltip: 'Camera',
                padding: EdgeInsets.symmetric(horizontal: 20),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.access_alarm_outlined),
                tooltip: 'Alarm',
                padding: EdgeInsets.symmetric(horizontal: 20),
              ),
                ]
                ),
        ),
      )
    );
  }
}
