import 'dart:collection';
import 'package:flutter/foundation.dart';

class Todo{
  Todo(this.id, this.title,this.check);
  int id;
  String title;
  bool check;
  //FocusNode focusNode;
}

class MainModel extends ChangeNotifier{
  String ikenoText = 'IKENO';
  List<Todo> _todoList = [];

  UnmodifiableListView<Todo> get todoList => UnmodifiableListView(_todoList);

  void createTodo(String title) {
    final id = _todoList.length + 1;
    _todoList = [...todoList, Todo(id, title, false)];
    notifyListeners();
  }

  void updateTodo(int id, String title) {
    todoList.asMap().forEach((int index, Todo todo) {
      if (todo.id == id) {
        _todoList[index].title = title;
      }
    });
    notifyListeners();
  }

  void updateCheck(int id, bool check) {
    todoList.asMap().forEach((int index, Todo todo) {
      if (todo.id == id) {
        _todoList[index].check = check;
      }
    });
    notifyListeners();
  }

  void deleteTodo(int id) {
    _todoList = _todoList.where((todo) => todo.id != id).toList();
    _todoList.asMap().forEach((int index, Todo todo) {
      _todoList[index].id = index + 1;
    });
    notifyListeners();
  }





  /*void changeikenoText(){
    ikenoText = 'いけのさんかっこいい';
    notifyListeners();
  }

  void changekakkoiiText(){
    ikenoText = 'IKENO';
    notifyListeners();
  }*/
}