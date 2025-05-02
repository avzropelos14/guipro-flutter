import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile({super.key, required this.taskName, required this.taskCompleted, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:20.0, right: 20, top: 25),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [


            //checkbox
            Checkbox(value: taskCompleted, onChanged: onChanged, activeColor: Colors.blue,
            ),


            //Task Name
            Text(taskName, style: TextStyle(decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none)),
          ],
        ),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(15),
          ),
      ),
    );

  }
}