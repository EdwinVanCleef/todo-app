import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey/model/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _taskList = [];
  int _taskCount = 0;

  void addTask(Task newTask) {
    _taskList.add(newTask);
    notifyListeners();
  }

  void removeTask(Task deleteTask) {
    _taskList.remove(deleteTask);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.ToggleDone();
    notifyListeners();
  }

  void updateTaskCount() {
    _taskCount = _taskList.length;
    notifyListeners();
  }

  int getListCount() {
    return _taskCount;
  }

  UnmodifiableListView<Task> get getTaskList {
    return UnmodifiableListView(_taskList);
  }
}
