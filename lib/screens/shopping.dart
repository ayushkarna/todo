import 'package:flutter/material.dart';
import 'package:todo_app/widgets/background.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(name: "Shopping", noOfTasks: 8, image: "shopping"),
    );
  }
}
