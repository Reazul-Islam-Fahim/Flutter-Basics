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
      appBar: AppBar(),
      body: Center(
        child: DataTable(
          headingRowHeight: 100,
            columns: [
              DataColumn(label: Text('Name'),tooltip: 'Name'),
              DataColumn(label: Text('Age'),),
              DataColumn(label: Text('Role'),),              
            ], 
            rows: [
              DataRow(cells: [
                DataCell(Text('X')),
                DataCell(Text('29')),
                DataCell(Text('SDE')),
              ]),
              DataRow(cells: [
                DataCell(Text('y'), showEditIcon: true),
                DataCell(Text('25')),
                DataCell(Text('SDET')),
              ]),
              DataRow(cells: [
                DataCell(Text('Z')),
                DataCell(Text('39')),
                DataCell(Text('DM')),
              ]),
              DataRow(cells: [
                DataCell(Text('A')),
                DataCell(Text('35')),
                DataCell(Text('MD')),
              ]),
            ]
        ),
      ),
    );
  }
}
