import 'package:flutter/material.dart';
import 'package:provider_listview/models/task.dart';

class Tasklist with ChangeNotifier {
  final List<Task> _taskList = [];

  get taskList => _taskList;

  void addNewTask(String data) {
    _taskList.add(
      Task(name: data, status: false),
    );
    notifyListeners();
  }
}
