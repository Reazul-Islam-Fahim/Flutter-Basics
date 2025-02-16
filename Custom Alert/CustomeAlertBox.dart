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
        child: ElevatedButton(
            onPressed: (){
              showDialog(
                  context: context,
                  builder: (context){
                    return Dialog(
                      child: Stack(
                        alignment: Alignment.topCenter,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 250,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text('Alert!', style: TextStyle(fontSize: 25, color: Colors.purple, fontWeight: FontWeight.bold ),),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text('Alert! this a custom alert box', style: TextStyle(fontSize: 18, color: Colors.purple),),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: -50,
                              child: CircleAvatar(
                                radius: 50,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                  child: Image.network('https://as2.ftcdn.net/v2/jpg/03/68/74/59/1000_F_368745938_zVyUETlRlWt4iBSXaCqNbraGG2DEpDXf.jpg'),
                                ),
                                )
                          )
                        ],
                      ),
                    );
                  }
              );
            },
            child: Text('Alert')),
      ),
    );
  }
}
