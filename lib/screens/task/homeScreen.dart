import 'package:flutter/material.dart';
import 'package:task_manager_project/component/appBottomNav.dart';
import 'package:task_manager_project/component/cancilTaskList.dart';
import 'package:task_manager_project/component/completeTaskList.dart';
import 'package:task_manager_project/component/newTaskList.dart';
import 'package:task_manager_project/component/progressTaskList.dart';
import 'package:task_manager_project/screens/onboarding/TaskAppBar.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {

  int TabIndex = 2;

  onItemTapped(int index)
  {
    setState(() {
      TabIndex=index;
    });
  }

  final widgetOption = [
    newTaskList(),
    progressTaskList(),
    completeTaskList(),
    cancilTaskList()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TaskAppBar(),
      body: widgetOption.elementAt(TabIndex),
      bottomNavigationBar: appBottomNav(TabIndex, onItemTapped),
    );
  }
}
