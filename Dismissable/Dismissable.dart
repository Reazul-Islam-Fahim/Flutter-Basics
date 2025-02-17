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
      body: Center(
        child: Dismissible(
          key: ValueKey('ABC'),
          secondaryBackground: Container(
            color: Colors.blue,
            child: Icon(Icons.archive, size: 40,),
          ),
          background: Container(
            color: Colors.red,
            child: Icon(Icons.delete, size: 40,),
          ),
          child: ListTile(
            title: Text('this is list tile title'),
            subtitle: Text('this is list tile subtitle'),
            // trailing: Icon(Icons.ac_unit),
            leading: Icon(Icons.verified_user),
          ),
        )
      ),
    );
  }
}
