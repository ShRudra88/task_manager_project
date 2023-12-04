import 'package:flutter/material.dart';

class newTaskList extends StatefulWidget {
  const newTaskList({super.key});

  @override
  State<newTaskList> createState() => _newTaskListState();
}

class _newTaskListState extends State<newTaskList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('new task'),
    );
  }
}
