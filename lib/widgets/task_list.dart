import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/widgets/task.dart';
import 'package:todo_list/widgets/task_method.dart';

class ListOfTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final _task =
            Provider.of<TaskData>(context, listen: false).tasks2[index];
        return Task(
          title: _task.name,
          isChanged: _task.isChecked,
          checkBoxCallBack: (bool value) {
            Provider.of<TaskData>(context, listen: false).updateTask(_task);
          },
          longPressCallBack: () {
            Provider.of<TaskData>(context, listen: false).deleteTask(_task);
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks2.length,
    );
  }
}
