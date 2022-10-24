import 'package:flutter/material.dart';
import 'package:provider_listview/models/task.dart';
import 'package:provider_listview/models/validation_item.dart';

class Tasklist with ChangeNotifier {
  ValidationItem valid = ValidationItem(null, null);
  final List<Task> _taskList = [];

  get taskList => _taskList;

  bool get isValid {
    if (valid.value != null) {
      return true;
    } else {
      return false;
    }
  }

  void changevalid(String value) {
    if (value.isEmpty) {
      valid = ValidationItem(null, "Must be filled");
    } else if (value.length < 3) {
      valid = ValidationItem(null, "Must be at least 3 characters");
    } else {
      valid = ValidationItem(value, null);
    }
    notifyListeners();
  }

  void addNewTask(String data) {
    _taskList.add(
      Task(name: data, status: false),
    );
    notifyListeners();
  }
}
