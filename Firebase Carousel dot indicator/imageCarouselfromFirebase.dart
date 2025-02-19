import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

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

  Future getImagefromFirebase() async{
    var firestore = FirebaseFirestore.instance;
    QuerySnapshot qn = await firestore.collection('carousel_images').get();
    return qn.docs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            child: FutureBuilder(
                future: getImagefromFirebase(),
                builder: (_, snapshot){
                  return CarouselSlider.builder(
                    slideBuilder: (index){
                      DocumentSnapshot sliderImage = snapshot.data[index];
                      return Container(
                        child: Image.network(sliderImage['image']),
                      );
                    },
                    itemCount: snapshot.hasData ? snapshot.data.length : 0,
                    slideTransform: CubeTransform(
                      rotationAngle: 0,
                    ),
                    slideIndicator: CircularSlideIndicator(
                      indicatorBackgroundColor: Colors.red,
                      currentIndicatorColor: Colors.orange,
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
