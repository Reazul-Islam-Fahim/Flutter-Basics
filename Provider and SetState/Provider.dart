import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/data.dart';
import 'package:test_app/receive.dart';

void main() => runApp(ChangeNotifierProvider(
  create: (context) => data(),
    child: MyApp()
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    final providerdata = Provider.of<data>(context);
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              providerdata.value.toString(),
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                providerdata.increament();
              },
              child: Icon(Icons.add),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => receiveData())
                );
        
              },
              child: Icon(Icons.send),
            ),
          ],
        ),
      ),
    ));
  }
}
