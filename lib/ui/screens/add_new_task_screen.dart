import 'dart:html';

import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/widgets/body_background.dart';
import 'package:task_manager_project/ui/widgets/profile_summary_card.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ProfileSummaryCard(
              enableOnTap: true,
            ),
            Expanded(child: BodyBackground(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 32,),
                      Text('Add new Task',
                      style: Theme.of(context).textTheme.titleLarge,
                      ),
                const SizedBox(
                  height: 16,),
                 TextFormField(
                   decoration: const InputDecoration(
                     hintText: 'Subject'
                   ),
                 ),
                const SizedBox(
                  height: 8,),
                TextFormField(
                  maxLines: 8,
                  decoration: const InputDecoration(
                    hintText: 'Description'
                  ),
                ),
                   const SizedBox(
                    height: 32,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){
              
                      },
                      child: const Icon(Icons.arrow_circle_right_outlined),
                    ),
                  )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}