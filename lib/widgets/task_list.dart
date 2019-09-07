import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  TaskList({this.tasks, this.toggleTaskDone});

  final List<Task> tasks;
  final Function toggleTaskDone;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) => TaskTile(
        taskTitle: tasks[index].name,
        isChecked: tasks[index].isDone,
        toggleChecked: (_) => toggleTaskDone(index),
      ),
      itemCount: tasks.length,
    );
  }
}
