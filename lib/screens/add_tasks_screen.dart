import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyy/models/task_data.dart';

class AddTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTask = "";
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF066AFF),
                fontSize: 30.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (text) {
                  newTask = text;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF066AFF)),
                ),
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTask);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
