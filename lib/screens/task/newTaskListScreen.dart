import 'package:flutter/material.dart';

import '../../utility/utility.dart';

class newTaskListScreen extends StatefulWidget {
  const newTaskListScreen({super.key});

  @override
  State<newTaskListScreen> createState() => _newTaskListScreenState();
}

class _newTaskListScreenState extends State<newTaskListScreen> {

/*  String emails="";

  @override
  void initState() {
    super.initState();
  }

  CallUserData()async
  {
    String? a = await ReadUserData("email");
    setState(() {
      emails = a!;
    });
  }
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('New Task List'),
      ),
    );
  }
}

