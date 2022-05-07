// ignore_for_file: non_constant_identifier_names

class Task {
  final String taskName;
  bool isDone;

  Task({required this.taskName, this.isDone = false});

  void ToggleDone() {
    isDone = !isDone;
  }
}
