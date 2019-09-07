import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskList with ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

//  List<Task> get tasks {
//    return [..._tasks];
//  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void createNewTask(String taskTitle) {
    _tasks.add(Task(name: taskTitle));
    notifyListeners();
  }

  void deleteTask(Task taskToDelete) {
    _tasks.remove(taskToDelete);
    notifyListeners();
  }

  /// Teacher's version of toggle the checking state
  /// goal is to keep TaskTile simple
  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  /// Compare to my way of doing this, (Learning from Teacher Max)
  /// I choose expose the Task out,
  /// and TaskTile just directly to read and use the method
  /// which belongs to Task.
}
