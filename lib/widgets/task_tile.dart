import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({
    this.isChecked,
    this.taskTitle,
    this.toggleChecked,
  });

  final String taskTitle;
  final bool isChecked;
  final Function toggleChecked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        onChanged: toggleChecked,
        value: isChecked,
      ),
    );
  }
}
