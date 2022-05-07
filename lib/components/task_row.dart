// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TaskRow extends StatelessWidget {
  TaskRow(
      {Key? key,
      required this.taskName,
      this.isChecked = false,
      required this.checkboxCallBack})
      : super(key: key);

  final String taskName;
  final Function(dynamic value) checkboxCallBack;
  bool isChecked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
          decoration: (isChecked) ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallBack,
        value: isChecked,
      ),
    );
  }
}
