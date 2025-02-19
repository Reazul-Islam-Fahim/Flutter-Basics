import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:test_app/one.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flare Animation',
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
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'first',
          body: 'this is first description',
          image: Image.network('https://media.istockphoto.com/id/2170561826/photo/modern-office-building-by-night-in-paris-france.jpg?s=2048x2048&w=is&k=20&c=bIDy-YZ10ol-9TARJxq07s38r3OGFdpB5VKNaFyXEw0=', height: 350,),
        ),
        PageViewModel(
          title: 'second',
          body: 'this is second description',
          image: Image.network('https://cdn.pixabay.com/photo/2025/02/11/20/43/cormorant-9399801_1280.jpg', height: 350,),
        ),
        PageViewModel(
          title: 'third',
          body: 'this is third description',
          image: Image.network('https://cdn.pixabay.com/photo/2025/02/03/21/01/forest-9380294_960_720.jpg', height: 350,),
        ),
      ],
      onDone: (){
        Navigator.push(context, CupertinoPageRoute(builder: (context)=> one()));
      },
      done: Text('done'),
      showSkipButton: true,
      showNextButton: false,
      skip: Text('Skip'),
      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.blue,
        activeSize: Size(35.0, 15.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50))
        )
      ),
    );
  }
}
