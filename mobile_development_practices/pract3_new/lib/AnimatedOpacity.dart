import 'package:flutter/material.dart'; 

void main(){
  runApp(const AnimatedOpacityClass());
}

class AnimatedOpacityClass extends StatelessWidget{
  const AnimatedOpacityClass({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    const appTitle = 'oshuakbayev'; 
    return MaterialApp(
      title:appTitle,
      home: MyHomePage(title:appTitle),
    );// MaterialApp
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({
      Key? key,
      required this.title,
    }) : super(key: key);

  final String title; 

  @override 
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions:[
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child:const Text("Back"), 
          ),         
        ],
      ), //appBar 
      body: Center(
        child: Builder(
          builder: (context) => AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500), 
            child: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.blue,
            ),
          ),
        ),
      ), //Center

      floatingActionButton: FloatingActionButton(
        onPressed:(){
          setState((){
              _visible =!_visible;
            });
        },

        tooltip:"button", 
        child: const Icon(Icons.flip), 
      ), // floatinbutton
    ); // Scaffold 

  }

}
