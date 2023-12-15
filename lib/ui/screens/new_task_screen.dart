import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/screens/add_new_task_screen.dart';
import 'package:task_manager_project/ui/widgets/profile_summary_card.dart';
import 'package:task_manager_project/ui/widgets/sumary_card.dart';
import 'package:task_manager_project/ui/widgets/task_item_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddNewTaskScreen(),),);
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const ProfileSummaryCard(
              enableOnTap: true,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    SummaryCard(count: '92',title: 'New',),
                    SummaryCard(count: '92',title: 'In progress',),
                    SummaryCard(count: '92',title: 'Completed',),
                    SummaryCard(count: '92',title: 'Cancelled',),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                  itemBuilder: (context, index){
                  return const TaskItermCard();
           }),
            )
          ],
        ),
      ),
    );
  }
}


