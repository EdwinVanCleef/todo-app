// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todoey/components/bottom_sheet.dart';
import 'package:todoey/components/task_list.dart';
import 'package:todoey/constants.dart';
import 'package:todoey/model/task.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  Widget buildBottomSheet(BuildContext context) {
    return BuildBottomSheet();
  }

  List<Task> taskList = [];
  int taskCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: buildBottomSheet,
          ).then((value) {
            setState(() {
              taskList.add(
                Task(
                  taskName: value,
                  isDone: false,
                ),
              );

              taskCount = taskList.length;
            });
          });
        },
        child: Icon(
          Icons.add,
          size: 40.0,
        ),
      ),
      backgroundColor: Color(0xFF5BC1FF),
      body: Column(
        children: [
          SizedBox(
            height: 280.0,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 35.0,
                          child: Icon(
                            Icons.list,
                            size: 50.0,
                            color: Color(0xFF63C0FB),
                          ),
                        ),
                      ),
                      Text(
                        'Todoey',
                        style: kTitleTextStyle,
                      ),
                      Text(
                        '$taskCount Tasks',
                        style: kNumberOfTasksStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                color: Colors.white,
              ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 20.0,
                ),
                child: TaskList(
                  taskList: taskList,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
