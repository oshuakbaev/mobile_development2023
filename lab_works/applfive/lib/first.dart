
import 'package:applfive/second.dart';
import 'package:applfive/third.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            title: const Text("Неважно"),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.announcement)),
                Tab(icon: Icon(Icons.cake)),
                Tab(icon: Icon(Icons.cloud)),
              ],
            ),
          ),
          drawer: Drawer(
            width: 150,
            backgroundColor: Colors.greenAccent,
            child: Column(
              children: const [
                Padding(padding: EdgeInsets.only(top: 100)),
                Text("кто ты!"),
                Divider(),
                Text("Важно"),
                Divider(),
                Text("что ты!!!"),
              ],
            ),
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Second()),
                      );
                    },
                    child: const Text('Туда'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Third()),
                      );
                    },
                    child: const Text('Сюда'),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const Center(child: Text("Announcement")),
                    const Center(child: Text("Cake")),
                    const Center(child: Text("Cloud")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
