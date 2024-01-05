import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/screens/edit_profile_screen.dart';

class ProfileSummaryCard extends StatelessWidget {
  const ProfileSummaryCard({
    super.key, required this.enableOnTap ,
  });

  final bool enableOnTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        if(enableOnTap){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProfileScreen(),),);

        }
      },
      leading: const CircleAvatar(
        child: Icon(Icons.person),
      ),
      title: const Text('Sakhawat Rudra',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700
        ),
      ),
      subtitle: const Text('shr@gmail.com',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      tileColor: Colors.green,
      trailing: const Icon(Icons.arrow_forward),
    );
  }
}