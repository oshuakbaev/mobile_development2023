import 'package:pract3_new/AnimatedOpacity.dart';
import 'package:pract3_new/AnimatedPosition.dart';
import 'package:pract3_new/PositionTransition.dart';
import 'package:pract3_new/SlideTransition.dart';
// import 'package:pract3_new/AnimatedSize.dart';
// import 'package:pract3_new/ScaleTransition.dart';
// import 'package:pract3_new/SizeTransition.dart';
// import 'package:pract3_new/RotationTransition.dart';


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          backgroundColor:Colors.white,
          appBar:AppBar(
              title:Text("pract3_new"), 
            ),//AppBar
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const AnimatedOpacity()),
                          );
                        },
                        child: const Text('SlideTransition'),
                      );
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AnimatedPosition_class()),
                      );
                    },
                    child: const Text('AnimatedPosition'),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PositionTransition_class()),
                      );
                    },
                    child: const Text('PositionTransition'),
                  ),

                  Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SlideTransition_class()),
                          );
                        },
                        child: const Text('SlideTransition'),
                      );
                    },
                  ),


                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => const AnimatedSize_class()),
                  //     );
                  //   },
                  //   child: const Text('AnimatedSize'),
                  // ),

                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => const ScaleTransition_class()),
                  //     );
                  //   },
                  //   child: const Text('ScaleTransition'),
                  // ),

                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => const SizeTransition_class()),
                  //     );
                  //   },
                  //   child: const Text('SizeTransition'),
                  // ),

                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => const RotationTransition_class()),
                  //     );
                  //   },
                  //   child: const Text('RotationTransition'),
                  // ),
                ],
              ),
            ],
          ),
        ) //Scaffold
    );
  }
}
