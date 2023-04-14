import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lecture",
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: <Widget>[
              Tab(
                icon: Icon(Icons.content_cut_sharp),
              ),
              Tab(
                icon: Icon(Icons.question_mark),
              ),
              Tab(
                icon: Icon(Icons.question_mark),
              ),
            ]),
          ),
          body: const TabBarView(
            children: <Widget>[
              MyKNB(),
              Center(
                child: Text("222222"),
              ),
              Center(
                child: Text("333333"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyKNB extends StatefulWidget {
  const MyKNB({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyStateKNB();
  }
}

class MyStateKNB extends State<MyKNB> {
  List<String> images = const [
    'assets/images/kamen.jpg', //0
    'assets/images/scissors.jpg', //1
    'assets/images/paper.jpg', //2
  ];
  late String image1;
  late String image2;
  late bool stopper;
  late double oc1;
  late double oc2;
  late int index1;
  late int index2;

  String getImage1() {
    setState(() {
      index1 = Random().nextInt(3);
    });
    return images[index1];
  }

  String getImage2() {
    setState(() {
      index2 = Random().nextInt(3);
    });
    return images[index2];
  }

  @override
  void initState() {
    super.initState();
    image1 = getImage1();
    image2 = getImage2();
    stopper = false;
    oc1 = 0;
    oc2 = 0;
  }

  void winner() {
    if (index1 == 0 && index2 == 1 ||
        index1 == 1 && index2 == 2 ||
        index1 == 2 && index2 == 0) {
      setState(() {
        oc1 = 1;
        oc2 = 0;
      });
    } else if (index2 == 0 && index1 == 1 ||
        index2 == 1 && index1 == 2 ||
        index2 == 2 && index1 == 0) {
      setState(() {
        oc1 = 0;
        oc2 = 1;
      });
    } else {
      setState(() {
        oc1 = 0;
        oc2 = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background_kps.jpg'),
          fit: BoxFit.cover,
        ),
      ),
        child: Column(
      children: [
        const Padding(padding: EdgeInsets.all(20)),
        ElevatedButton(
            onPressed: () {
              setState(() {
                stopper = false;
                oc1 = 0;
                oc2 = 0;
              });
              Timer.periodic(const Duration(milliseconds: 1), (timer) async {
                setState(() {
                  image1 = getImage1();
                  image2 = getImage2();
                });
                if (stopper) {
                  timer.cancel();
                  winner();
                }
              });
            },
            child: const Text("Start")),
        ElevatedButton(
            onPressed: () {
              setState(() {
                stopper = true;
              });
            },
            child: const Text("stop")),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image1,
              height: 150,
              width: 150,
            ),
            const Padding(padding: EdgeInsets.all(10)),
            Opacity(
              opacity: oc1,
              child: const Text("winner",style:TextStyle(fontSize: 30)),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.all(20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image2,
              height: 150,
              width: 150,
            ),
            const Padding(padding: EdgeInsets.all(10)),
            Opacity(
              opacity: oc2,
              child: const Text("winner"),
            ),
            Padding(padding: EdgeInsets.all(20)),
          ],
        ),
      ],
    )
    );
  }
}
