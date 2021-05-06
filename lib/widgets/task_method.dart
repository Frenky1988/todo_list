import 'package:flutter/cupertino.dart';

class Tasks {
  Tasks({this.name, this.isChecked = false});

  final String name;
  bool isChecked;

  void toggleChecked() {
    isChecked = !isChecked;
  }
}

class TaskData extends ChangeNotifier {
  List<Tasks> tasks2 = [];

  void addTaskToList(String newTaskTitle) {
    final task = Tasks(name: newTaskTitle);
    tasks2.add(task);
    notifyListeners();
  }

  void updateTask(Tasks tasks) {
    tasks.toggleChecked();
    notifyListeners();
  }

  void deleteTask(Tasks tasks) {
    tasks2.remove(tasks);
    notifyListeners();
  }
}
