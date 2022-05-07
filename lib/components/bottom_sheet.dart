// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';

class BuildBottomSheet extends StatefulWidget {
  const BuildBottomSheet({Key? key}) : super(key: key);

  @override
  State<BuildBottomSheet> createState() => _BuildBottomSheetState();
}

class _BuildBottomSheetState extends State<BuildBottomSheet> {
  String _newTask = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        height: 500.0,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Text(
                'Add Task',
                style: kInputTextStyle,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20.0,
                ),
                child: TextField(
                  textAlign: TextAlign.center,
                  autofocus: true,
                  decoration: kInputDecorationStyle,
                  onChanged: (value) {
                    _newTask = value;
                  },
                ),
              ),
              SizedBox(
                height: 50.0,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, _newTask);
                  },
                  child: Text('Add'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                      return Colors.lightBlueAccent;
                    }),
                    textStyle: MaterialStateProperty.resolveWith((states) {
                      return TextStyle(
                        fontSize: 20.0,
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
