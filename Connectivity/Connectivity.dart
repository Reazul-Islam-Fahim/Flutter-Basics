import 'dart:async';

import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
  StreamSubscription? subscription;
  
  Future checkConnection() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.mobile) {
      Fluttertoast.showToast(msg: 'connected with mobile');
    } else if (result == ConnectivityResult.wifi) {
      Fluttertoast.showToast(msg: 'connected with wifi');
    } else {
      Fluttertoast.showToast(msg: 'Not connected');
    }
  }
  
  @override
  void initState() {
    subscription = Connectivity().onConnectivityChanged.listen((event){checkConnection();});
    super.initState();
  }

  @override
  void dispose() {
    subscription!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
