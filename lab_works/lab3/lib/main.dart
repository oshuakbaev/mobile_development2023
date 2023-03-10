import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _MyStateApp();
  }
}


class _MyStateApp extends State<MyApp>{

  double sieze01 = 20.0;
  static const double sieze02 = 25.0;
  List<Color> tus = [Colors.green, Colors.yellow, Colors.orange, Colors.blue];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DefaultTabController(
    initialIndex: 1,  //optional, starts from 0, select the tab by default
    length:3,
    child: Scaffold(
          appBar: AppBar(
            title: Text(
                "lab3 oshuakbayev"
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: tus[0],
                        child: const Center(
                          child: Text(
                            "1",
                            style: TextStyle(fontSize: sieze02),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: tus[1],
                        child: const Center(
                          child: Text(
                            "2",
                            style: TextStyle(fontSize: sieze02),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ), //Row 1/2
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: tus[3],
                        child: const Center(
                          child: Text(
                            "4",
                            style: TextStyle(fontSize: sieze02),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: tus[2],
                        child: const Center(
                          child: Text(
                            "3",
                            style: TextStyle(fontSize: sieze02),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton.small(
            child: const Icon(Icons.adb),
            onPressed: (){
              setState(() {
                // Rotate the list in a clockwise direction
                tus.insert(0, tus.removeLast());
              });
            },
          ),
        ),
      );
    }
  }
  ),
  ),);
  
}