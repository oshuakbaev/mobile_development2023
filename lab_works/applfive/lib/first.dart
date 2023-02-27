
import 'package:applfive/second.dart';
import 'package:applfive/third.dart';
import 'package:flutter/material.dart';


class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlue, title: const Text("Неважно")),
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
    );
  }
}