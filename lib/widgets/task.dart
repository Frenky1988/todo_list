import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  Task(
      {this.isChanged,
      this.title,
      this.checkBoxCallBack,
      this.longPressCallBack});
  final bool isChanged;
  final String title;
  final Function checkBoxCallBack;
  final Function longPressCallBack;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            decoration: isChanged ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChanged,
        onChanged: checkBoxCallBack,
      ),
      onLongPress: longPressCallBack,
    );
  }
}
