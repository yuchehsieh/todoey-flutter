import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Task>(
      builder: ((context, taskData, _) {
        return ListTile(
          title: Text(
            taskData.name,
            style: TextStyle(
              decoration: taskData.isDone ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Checkbox(
            onChanged: (_) => taskData.toggleDone(),
            value: taskData.isDone,
          ),
        );
      }),
    );
  }
}
