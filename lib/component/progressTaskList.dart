import 'package:flutter/material.dart';

import '../api/apiClient.dart';

class progressTaskList extends StatefulWidget {
  const progressTaskList({super.key});

  @override
  State<progressTaskList> createState() => _progressTaskListState();
}

class _progressTaskListState extends State<progressTaskList> {

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
    var data = await TaskListRequet("Progess");
    setState(() {
      Loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('progess'),
    );
  }
}
