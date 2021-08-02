import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tasktile.dart';
import 'package:provider/provider.dart';
import 'package:todoeyy/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            checkBoxstate: task.isCompleted,
            callBack: (newValue) {
              taskData.updateTask(task);
            },
            longPress: () {
              taskData.deleteTask(task);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
