import 'package:flutter/material.dart';
import 'package:task_manager_project/style/style.dart';
import 'package:task_manager_project/utility/utility.dart';

AppBar TaskAppBar(context, ProfileData)
{
  return AppBar(
      backgroundColor: Colors.green,
      flexibleSpace: Container(
        margin: EdgeInsets.fromLTRB(10, 40, 10, 0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.memory(ShowBase64Image(ProfileData['photo'])),
              ),
            ),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text('${ProfileData['firstname']} ${ProfileData['LastName']}', style: Head7Text(Colors.white),),
                Text(ProfileData['email'],style: Head9Text(Colors.white),)
              ],
            )
          ],
        ),
      ),
    actions: [
      IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline)),
      IconButton(onPressed: ()async{
        await RemoveToken()
      }, icon: Icon(Icons.output))
    ],
  );
}