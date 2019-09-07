import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) => TaskTile(
        taskTitle: tasks[index].name,
        isChecked: tasks[index].isDone,
        toggleChecked: ((_) {
          setState(() {
            tasks[index].toggleDone();
          });
        }),
      ),
      itemCount: tasks.length,
    );
  }
}
