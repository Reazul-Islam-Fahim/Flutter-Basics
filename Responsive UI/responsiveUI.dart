import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(builder: (_) => MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Center(
                child: AspectRatio(
                  aspectRatio: 2,
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.amber,
                  ),
                ),
              ),
              FittedBox(
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width / 3,
                      color: Colors.black12,
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width / 3,
                      color: Colors.red,
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width / 3,
                      color: Colors.green,
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width / 3,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width / 2,
                color: Colors.cyanAccent,
                child: FractionallySizedBox(
                  heightFactor: 0.5,
                  widthFactor: 0.5,
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
              ),
              LayoutBuilder(
                builder: (_, constraints) {
                  if (constraints.maxWidth < 480) {
                    return Container(
                      alignment: Alignment.center,
                      child: const Text('Less than 480'),
                    );
                  } else if (constraints.maxWidth > 480 && constraints.maxWidth < 800) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.red,
                      child: const Text('Greater than 480 but less than 800'),
                    );
                  } else {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.lime,
                      child: const Text('Greater than 800'),
                    );
                  }
                },
              ),
              OrientationBuilder(
                  builder: (_, orientation){
                if(orientation == Orientation.portrait) {
                    return Container(
                      color: Colors.purple,
                    );
                  }
                else{
                  return Container(
                    color: Colors.blueGrey,
                  );
                }
              })

            ],
          ),
        ),
      ),
    );
  }
}
