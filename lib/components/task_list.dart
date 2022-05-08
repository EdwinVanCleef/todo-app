import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/task_row.dart';
import 'package:todoey/model/task.dart';
import 'package:todoey/model/task_list.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, tasks, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            Task currentTask = tasks.getTaskList[index];
            return TaskRow(
                taskName: currentTask.taskName,
                isChecked: currentTask.isDone,
                checkboxCallBack: (value) {
                  tasks.updateTask(currentTask);
                },
                deleteCallBack: () {
                  tasks.removeTask(currentTask);
                  tasks.updateTaskCount();
                });
          },
          itemCount: tasks.getListCount(),
        );
      },
    );
  }
}
