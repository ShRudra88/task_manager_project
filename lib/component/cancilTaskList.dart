import 'package:flutter/material.dart';
import 'package:task_manager_project/api/apiClient.dart';
import 'package:task_manager_project/component/TaskList.dart';

class cancilTaskList extends StatefulWidget {
  const cancilTaskList({super.key});

  @override
  State<cancilTaskList> createState() => _cancilTaskListState();
}

class _cancilTaskListState extends State<cancilTaskList> {
  List TaskItems = [];
  bool Loading = true;

  @override
  void initState() {
    CallData();
    super.initState();
  }

  CallData() async {
    var data = await TaskListRequet("Cancil");
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
