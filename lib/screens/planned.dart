import 'package:flutter/material.dart';
import 'package:todo_app/widgets/background.dart';

class Planned extends StatelessWidget {
  const Planned({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(name: "Planned", noOfTasks: 2, image: "calendar"),
    );
  }
}
