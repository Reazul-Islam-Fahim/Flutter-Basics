import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            floatingActionButton: FloatingActionButton(
                onPressed: (){},
              child: Icon(Icons.add),
            ),
            body: Center(
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.amber,
                  ),
                  Positioned(
                    bottom: -50,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
          )
        )
    );
  }
}
