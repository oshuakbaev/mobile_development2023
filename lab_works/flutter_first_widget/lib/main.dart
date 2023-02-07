import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            title: Text("oshuakbayev flutter"),
            centerTitle: true,
        ), // шапка
        body: Center(
            child: Text("Hello My Flutter!", style:TextStyle(
              fontSize: 50,
              color: Colors.blueAccent,
              fontFamily: 'Times New Roman',
            ),)
        ),
      ),
    );
  }

}