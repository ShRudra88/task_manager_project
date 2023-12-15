import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/widgets/profile_summary_card.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ProfileSummaryCard(
              enableOnTap: false,
            ),
            Expanded(child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [

                  ],
                ),
              ),
            ),)
          ],
        ),
      ),
    );
  }
}
