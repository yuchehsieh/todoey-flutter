import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskList with ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  List<Task> get tasks {
    return [..._tasks];
  }

  int get taskCount {
    return _tasks.length;
  }

  void createNewTask(String taskTitle) {
    _tasks.add(Task(name: taskTitle));
    notifyListeners();
  }
}
