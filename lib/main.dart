import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/screens/task_screen.dart';
import 'package:todo_list/widgets/task_method.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}
