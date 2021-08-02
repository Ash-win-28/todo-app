import 'package:flutter/material.dart';
import 'screens/tasksscreen.dart';
import 'package:provider/provider.dart';
import 'package:todoeyy/models/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
