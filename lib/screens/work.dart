import 'package:flutter/material.dart';
import 'package:todo_app/widgets/background.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(name: "Work", noOfTasks: 5, image: "bag"),
    );
  }
}
