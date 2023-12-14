import 'package:flutter/material.dart';
import 'package:task_manager_project/app.dart';
import 'package:task_manager_project/ui/screens/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskManagerApp(),
    );
  }
}
