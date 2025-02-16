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
        child: ElevatedButton(onPressed: (){
          showModalBottomSheet(context: context, builder: (context)
          {
            return Container(
              height: 250,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    ListTile(
                      title: Text('one'),
                      subtitle: Text('This is one'),
                      trailing: Icon(Icons.access_alarm),
                    ),
                    ListTile(
                      title: Text('two'),
                      subtitle: Text('This is two'),
                      trailing: Icon(Icons.access_alarm),
                    ),
                    ListTile(
                      title: Text('three'),
                      subtitle: Text('This is three'),
                      trailing: Icon(Icons.access_alarm),
                    ),
                    ListTile(
                      title: Text('four'),
                      subtitle: Text('This is four'),
                      trailing: Icon(Icons.access_alarm),
                    ),
                    ListTile(
                      title: Text('five'),
                      subtitle: Text('This is five'),
                      trailing: Icon(Icons.access_alarm),
                    ),
                    ListTile(
                      title: Text('six'),
                      subtitle: Text('This is six'),
                      trailing: Icon(Icons.access_alarm),
                    ),
                  ],
                ),
              ),
            );
          });
        },
            child: Text('Click me')),
      )
    );
  }
}
