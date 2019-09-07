import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_list.dart';
import 'package:todoey_flutter/screens/task.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: TaskList(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
