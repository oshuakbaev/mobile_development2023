class ToDo{
  String? id;
  String? todoText;
  bool isDone;


  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList(){
    return [

      // ToDo(id: '01', todoText: 'Morning excercise',isDone: true),
      // ToDo(id: '02', todoText: 'Morning excercise2',isDone: true),
      // ToDo(id: '03', todoText: 'Morning excercise3',isDone: true),

    ];
  }
}