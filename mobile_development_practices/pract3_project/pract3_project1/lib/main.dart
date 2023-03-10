import 'package:flutter/material.dart'; 

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override 
  Widget build(BuildContext context){
    const appTitle = 'oshuakbayev'; 
    return const MaterialApp(
      title:appTitle,
      home: MyHomePage(title:appTitle),
    );// MaterialApp
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({
      super.key,
      required this.title,
    });

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
      ), //appBar 
      body: Center(
          child: AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500), 
              child: Container(
                width: 200.0,
                height: 200.0,
                color: Colors.blue,
              ),
            ), //AnimatedOpacity 
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