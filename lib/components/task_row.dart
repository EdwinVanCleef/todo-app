import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';

class TaskRow extends StatelessWidget {
  const TaskRow({Key? key, required this.taskName}) : super(key: key);

  final String taskName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: kTaskTextStyle,
      ),
      trailing: Checkbox(
        onChanged: (value) {},
        value: false,
      ),
    );
  }
}
