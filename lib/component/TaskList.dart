import 'package:flutter/material.dart';
import 'package:task_manager_project/style/style.dart';

ListView TaskList(TaskItems)
{
  return ListView.builder(

    itemCount: TaskItems.length,
    itemBuilder: (context, index){
    return Card(
      child: ItemSizeBox(
      Column(
      mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(TaksItems[index]['title'],
    style: Head6Text(Colors.blue[900]),),
  Text(TaksItems[index]['description'],
    style: Head7Text(Colors.grey[900]),),
    ],
      )
  ),
    );
    }
    );
}