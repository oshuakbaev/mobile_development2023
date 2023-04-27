import 'package:flutter/material.dart';
import 'package:to_do_list/constants/colors.dart';
import 'package:to_do_list/widget/todo_item.dart';
import 'package:to_do_list/model/todo.dart';
import 'package:to_do_list/accounts/account.dart';

class Home extends StatefulWidget{
  Home({Key? key}) : super (key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todosList = ToDo.todoList();
  List<ToDo> _foundToDo = [];
  final _todoController = TextEditingController();

  @override
  void initState(){
    _foundToDo = todosList;
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      drawer: _buildDrawer(context),
      body: Stack(
        children:[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              searchBox(),
              Expanded(
                child:ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50,bottom: 20),
                    child: Text('Тапсырмалар',
                      style: TextStyle(fontSize: 30,
                          fontWeight: FontWeight.w500),),
                  ),

                  for(ToDo todoo in _foundToDo.reversed)
                  ToDoItem(todo:todoo,
                    onToDoChanged: _handleToDoChange,
                    onDeleteItem: _deleteToDoItem,
                  ),

                ],),
              )
            ],
          ),
        ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(children: [
              Expanded(child: Container(
                  margin:EdgeInsets.only(bottom: 20,
                  right: 20, left: 20),
                padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow:
                  const [BoxShadow(color:Colors.grey,
                      offset: Offset(0.0,0.0),
                    blurRadius: 10.0,
                    spreadRadius: 0,
                  ),],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: _todoController,
                  decoration: InputDecoration(
                    hintText: 'Жаңа тапсырманы қосыңыз',
                    border: InputBorder.none,
                  ),
                ),
              ),
              ),
              Container(
                margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20),
                child: ElevatedButton(
                  child: Text('+',style: TextStyle(fontSize: 40,),),
                  onPressed: () {
                    _addToDoItem(_todoController.text);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: tdBlue,
                    minimumSize: Size(60,60),
                    elevation: 10,
                  ),
                ),
              ),
            ],),
          ),
        ],
      ),
    );
  }

  void _handleToDoChange(ToDo todo){

    setState(() {

    });
    todo.isDone = !todo.isDone;
  }

  void _deleteToDoItem(String id){
    setState(() {
      todosList.removeWhere((item) => item.id == id);
    });
  }

  void _addToDoItem(String toDo){
    setState(() {
      todosList.add(ToDo(id: DateTime.now().millisecondsSinceEpoch.toString(), todoText: toDo));
    });
    _todoController.clear();
  }

  void _runFilter(String enteredKeyword){
    List<ToDo> results = [];
    if(enteredKeyword.isEmpty){
      results = todosList;
    }else{
      results = todosList.
      where((item)=>item.todoText!
          .toLowerCase()
          .contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundToDo = results;
    });
  }

  Widget searchBox(){
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15),
      decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.circular(20)
      ),
      child: TextField(
        onChanged: (value) => _runFilter(value),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
              Icons.search,
              color: tdBlack,
              size: 20),
          prefixIconConstraints: BoxConstraints(
              maxHeight: 20,
              minWidth: 25),
          border: InputBorder.none,
          hintText: 'издеу',
          hintStyle:TextStyle(color: tdGrey),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: tdBGColor,
      iconTheme: IconThemeData(color: Colors.black),
      );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.purpleAccent,
            ),
            child: Text(
              'Меню',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Account'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountPage()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
          ),
        ],
      ),
    );
  }

}


