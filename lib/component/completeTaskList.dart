import 'package:flutter/material.dart';
import 'package:task_manager_project/api/apiClient.dart';
import 'package:task_manager_project/component/TaskList.dart';

class completeTaskList extends StatefulWidget {
  const completeTaskList({super.key});

  @override
  State<completeTaskList> createState() => _completeTaskListState();
}

class _completeTaskListState extends State<completeTaskList> {

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
    return Loading
        ? (Center(
      child: CircularProgressIndicator(),
    ))
        : (Center(
      child: TaskList(TaskItems),
    ));
  }
}

