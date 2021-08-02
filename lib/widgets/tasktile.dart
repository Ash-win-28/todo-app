import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool checkBoxstate;
  final void Function(bool?) callBack;
  final void Function() longPress;

  TaskTile(
      {required this.taskTitle,
      required this.checkBoxstate,
      required this.callBack,
      required this.longPress});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: checkBoxstate ? TextDecoration.lineThrough : null,
        ),
      ),
      onLongPress: longPress,
      trailing: Checkbox(
        activeColor: Color(0xFF066AFF),
        value: checkBoxstate,
        onChanged: callBack,
      ),
    );
  }
}
