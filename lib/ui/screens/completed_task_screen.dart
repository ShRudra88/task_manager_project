import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/widgets/profile_summary_card.dart';
import 'package:task_manager_project/ui/widgets/task_item_card.dart';

class CompletedTaskScreen extends StatefulWidget {
  const CompletedTaskScreen({super.key});

  @override
  State<CompletedTaskScreen> createState() => _CompletedTaskScreenState();
}

class _CompletedTaskScreenState extends State<CompletedTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ProfileSummaryCard(
              enableOnTap: true,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index){
                    return TaskItermCard();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
