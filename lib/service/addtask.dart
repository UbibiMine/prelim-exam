import 'package:mobile_dev/model/todo.dart';
import 'package:riverpod/riverpod.dart';

class addtask {
  final Ref container;
  final List<ToDo> _todoList = [];

  addtask(this.container);

  void addtaskToDo(String label, String task) {
    final newTask = ToDo(label, task);
    _todoList.add(newTask);
    print('$label(task: $task) has been added: ');
  }

  void viewTask() {
    if (_todoList.isEmpty) {
      print('No Task available');
    } else {
      print('Task List: ');
      for (var list in _todoList) {
        print(list);
      }
    }
  }

  List<ToDo> get list => _todoList;
}
