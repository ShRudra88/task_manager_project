import 'package:flutter/material.dart';
import 'package:task_manager_project/api/apiClient.dart';

class newTaskList extends StatefulWidget {
  const newTaskList({super.key});

  @override
  State<newTaskList> createState() => _newTaskListState();
}

class _newTaskListState extends State<newTaskList> {

  List TaskItems = [];
  bool Loading = true;


  @override
  void initState()
  {
    CallData();
    super.initState();
  }

  CallData()async
  {
    var data = await TaskListRequet("New");
    setState(() {
      Loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('new task'),
    );
  }
}
