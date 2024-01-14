import 'package:flutter/material.dart';
import 'package:todo_app/widgets/background.dart';

class Today extends StatefulWidget {
  const Today({super.key});

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(name: "Today", noOfTasks: 4, image: "sun"),
    );
  }
}
