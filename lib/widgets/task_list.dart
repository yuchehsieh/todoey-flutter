import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_list.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskList>(
      builder: ((context, taskListData, _) {
        return ListView.builder(
          itemBuilder: (context, index) => ChangeNotifierProvider.value(
            value: taskListData.tasks[index],
            child: TaskTile(),
          ),
          itemCount: taskListData.taskCount,
        );
      }),
    );
  }
}
