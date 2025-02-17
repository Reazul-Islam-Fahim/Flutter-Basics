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

  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ExpansionTile(
              title: Text('Expansion Tile'),
              subtitle: Text('This is expansion tile'),
              leading: Icon(Icons.ac_unit),
              trailing: Icon(Icons.arrow_downward),
              children: [
                Container(
                  height: 200,
                  color: Colors.blue,
                )
              ],
            ),
            ExpansionTile(
              title: Text('Expansion Tile'),
              subtitle: Text('This is expansion tile'),
              leading: Icon(Icons.ac_unit),
              trailing: Icon(Icons.arrow_downward),
              children: [
                Container(
                  height: 200,
                  color: Colors.blue,
                )
              ],
            ),
            ExpansionTile(
              title: Text('Expansion Tile'),
              subtitle: Text('This is expansion tile'),
              leading: Icon(Icons.ac_unit),
              trailing: Icon(Icons.arrow_downward),
              children: [
                Container(
                  height: 200,
                  color: Colors.blue,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
