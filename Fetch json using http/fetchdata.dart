import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:test_app/details.dart';

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

  var data;

  Future getData() async{
    var response = await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
    setState(() {
      var decode = json.decode(response.body);
      data = decode['data'];
      print(data);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: data == null ? 0 : data.length,
          itemBuilder: (context, index){
          return ListTile(
            title: Text(data[index]['first_name']),
            subtitle: Text(data[index]['email']),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => detailsPage(receiveData: data[index],) ));
            },
          );
          }
      ),
    );
  }
}
