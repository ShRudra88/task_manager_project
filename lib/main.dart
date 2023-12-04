import 'package:flutter/material.dart';
import 'package:task_manager_project/screens/onboarding/emailVerificationScreen.dart';
import 'package:task_manager_project/screens/onboarding/loginScreen.dart';
import 'package:task_manager_project/screens/onboarding/pinVerificationScreen.dart';
import 'package:task_manager_project/screens/onboarding/registrationScreen.dart';
import 'package:task_manager_project/screens/onboarding/setPasswordScreen.dart';
import 'package:task_manager_project/screens/onboarding/splashScreen.dart';
import 'package:task_manager_project/screens/task/homeScreen.dart';
import 'package:task_manager_project/component/newTaskList.dart';
import 'package:task_manager_project/utility/utility.dart';

main()async
{
  WidgetsFlutterBinding.ensureInitialized();

  String? token =  await ReadUserData('token');

  if(token==null)runApp(MyApp('/'));
  else runApp(MyApp('/'));
}

class MyApp extends StatelessWidget {

  final String FirstRoute;
  MyApp(this.FirstRoute);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task Manager",
      initialRoute: FirstRoute,
      routes: {
        '/':(context)=> homeScreen(),
        '/login':(context)=> loginScreen(),
        '/registration':(context)=> registrationScreen(),
        '/emailVerification':(context)=> emailVerificationScreen(),
        '/pinVerification':(context)=> pinVerificationScreen(),
        '/setPassword':(context)=> setPasswordScreen(),
        '/newTaskList':(context)=> newTaskList(),
      },
    );
  }
}

