import 'package:flutter/foundation.dart';

class Task with ChangeNotifier {
  Task({
    this.name,
    this.isDone = false,
  });

  final String name;
  bool isDone;

  void toggleDone() {
    isDone = !isDone;
    notifyListeners();
  }
}
