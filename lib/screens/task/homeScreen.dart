import 'package:flutter/material.dart';
import 'package:task_manager_project/component/appBottomNav.dart';
import 'package:task_manager_project/component/cancilTaskList.dart';
import 'package:task_manager_project/component/completeTaskList.dart';
import 'package:task_manager_project/component/newTaskList.dart';
import 'package:task_manager_project/component/progressTaskList.dart';
import 'package:task_manager_project/screens/onboarding/TaskAppBar.dart';
import 'package:task_manager_project/utility/utility.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {

  int TabIndex = 0;

  Map<String, String> ProfileData={"email":"","firstName":"","photo":"",}

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

  ReadAppBarData()async
  {
    String? email = await ReadUserData('email');
    String? firstName = await ReadUserData('firstName');
    String? lastName = await ReadUserData('lastName');
    String? photo = await ReadUserData('photo');

    setState(() {
      ProfileData = {"email":'$email',"firstName":'$firstName',"laseName":'$lastName',"photo":'$photo');
    });
  }

  @override
        void initState()
    {
      ReadAppBarData(),

      super.initState()
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TaskAppBar(context, ProfileData),
      body: widgetOption.elementAt(TabIndex),
      bottomNavigationBar: appBottomNav(TabIndex, onItemTapped),
    );
  }
}
