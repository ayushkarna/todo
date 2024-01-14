import 'package:todo_app/screens/personal.dart';
import 'package:todo_app/screens/planned.dart';
import 'package:todo_app/screens/shopping.dart';
import 'package:todo_app/screens/today.dart';
import 'package:todo_app/screens/work.dart';

List<String> icon = [
  "assets/sun.png",
  "assets/calendar.png",
  "assets/person.png",
  "assets/bag.png",
  "assets/shopping.png",
];
List<String> parameters = [
  "Today",
  "Planned",
  "Personal",
  "Work",
  "Shopping",
];
List<int> noOfTasks = [
  4,
  2,
  6,
  5,
  8,
];

List tasksParameters = const [
  Today(),
  Planned(),
  Personal(),
  Work(),
  Shopping(),
];
