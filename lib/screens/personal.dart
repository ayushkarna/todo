import 'package:flutter/material.dart';
import 'package:todo_app/widgets/background.dart';

class Personal extends StatefulWidget {
  const Personal({super.key});

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(name: "Personal", noOfTasks: 8, image: "person"),
    );
  }
}
