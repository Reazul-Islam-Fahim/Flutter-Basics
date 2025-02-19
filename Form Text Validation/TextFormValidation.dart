import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/one.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

    final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              validator: (value){
                if(value?.isEmpty ?? true){
                  return 'Enter your name';
                }
                return null;
              },
            ),
            TextFormField(
              validator: (value){
                if(value?.isEmpty ?? true){
                  return 'Enter your age';
                }
                return null;
              },
            ),
            TextFormField(
              validator: (value){
                if(value?.isEmpty ?? true){
                  return 'Enter your number';
                }
                return null;
              },
            ),
      
            ElevatedButton(onPressed: (){
              if(_formkey.currentState?.validate() ?? false)
                {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => one()),
                  );
                }
            }, child: Text('Submit')),
          ],
        ),
      ),
    );
  }
}
