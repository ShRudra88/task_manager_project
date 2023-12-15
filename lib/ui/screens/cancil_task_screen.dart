import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/widgets/profile_summary_card.dart';
import 'package:task_manager_project/ui/widgets/task_item_card.dart';

class CancilTaskScreen extends StatefulWidget {
  const CancilTaskScreen({super.key});

  @override
  State<CancilTaskScreen> createState() => _CancilTaskScreenState();
}

class _CancilTaskScreenState extends State<CancilTaskScreen> {
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
