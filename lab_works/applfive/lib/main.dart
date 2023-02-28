import 'package:applfive/first.dart';
import 'package:applfive/second.dart';
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
        appBar: AppBar(
          backgroundColor: Colors.lightBlue, title: const Text("Неважно"),
          controller: _tabController,
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.announcement)),
            Tab(icon: Icon(Icons.ice_skating)),
            Tab(icon: Icon(Icons.cloud)),
          ]),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Second()));
              }, child: Text("Туда")),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Second()));
              }, child: Text("Сюда")),
            ],
          ),
        ),
      ),

    );
  }
}
