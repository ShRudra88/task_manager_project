import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/screens/cancil_task_screen.dart';
import 'package:task_manager_project/ui/screens/completed_task_screen.dart';
import 'package:task_manager_project/ui/screens/new_task_screen.dart';
import 'package:task_manager_project/ui/screens/progress_task_screen.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {


  int selectedItems = 0;

  List<Widget> screen = [
    const NewTaskScreen(),
    const ProgressTaskScreen(),
    const CompletedTaskScreen(),
    const CancilTaskScreen()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedItems],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedItems,
        onTap: (index){
          selectedItems = index;
          setState(() {

          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'New'),
          BottomNavigationBarItem(icon: Icon(Icons.check_circle_outline), label: 'In progress'),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Completed'),
          BottomNavigationBarItem(icon: Icon(Icons.cancel_outlined), label: 'Cancelled')
        ],
      ),
    );
  }
}
