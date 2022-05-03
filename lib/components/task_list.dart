import 'package:flutter/material.dart';
import 'package:todoey/components/task_row.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TaskRow(taskName: 'Buy Milk'),
        TaskRow(taskName: 'Buy Eggs'),
        TaskRow(taskName: 'Buy Soap'),
      ],
    );
  }
}
