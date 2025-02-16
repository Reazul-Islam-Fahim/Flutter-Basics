import 'package:flutter/material.dart';
import 'package:test_app/one.dart';
import 'package:test_app/two.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 200,
              backgroundColor: Colors.blue,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('This is flexible spacebar'),
              ),
            ),
            SliverList(delegate: SliverChildListDelegate(<Widget>[
              addDetails('one','This is one'),
              addDetails('two','This is two'),
              addDetails('three','This is three'),
              addDetails('four','This is four'),
              addDetails('five','This is five'),
              addDetails('six','This is six'),
              addDetails('seven','This is seven'),
              addDetails('eight','This is eight'),
              addDetails('nine','This is nine'),
              addDetails('ten','This is ten'),
            ]))
          ],
        ),
      ),
    );
  }
}

Widget addDetails(String name, String description) {
  return ListTile(
    title: Text(name),
    subtitle: Text(description),
    leading: CircleAvatar(
      child: Text(name[0]),
    ),
  );
}
