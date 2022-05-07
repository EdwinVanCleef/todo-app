import 'package:flutter/material.dart';
import 'package:todoey/components/task_row.dart';
import 'package:todoey/model/task.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key, required this.taskList}) : super(key: key);

  final List<Task> taskList;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskRow(
            taskName: widget.taskList[index].taskName,
            isChecked: widget.taskList[index].isDone,
            checkboxCallBack: (value) {
              setState(() {
                widget.taskList[index].ToggleDone();
              });
            });
      },
      itemCount: widget.taskList.length,
    );
  }
}
