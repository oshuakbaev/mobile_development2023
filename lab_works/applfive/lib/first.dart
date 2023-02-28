
import 'package:applfive/second.dart';
import 'package:applfive/third.dart';
import 'package:flutter/material.dart';


class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlue, title: const Text("Неважно"),
        bottom: const TabBar(tabs: [
          Tab(icon: Icon(Icons.announcement)),
          Tab(icon: Icon(Icons.ice_skating)),
          Tab(icon: Icon(Icons.cloud)),
        ]),
      ),
      drawer: Drawer(
          width: 150,
          backgroundColor: Colors.greenAccent,
          child: Column(children: [
            Padding(padding: EdgeInsets.only(top: 100)),
            Text("кто ты!"),
            Divider(),
            Text("Важно"),
            Divider(),
            Text("что ты!!!")
          ])),


    );
  }
}