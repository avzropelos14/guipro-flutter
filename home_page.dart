import 'package:flutter/material.dart';
import 'package:test_flutter/utilities/todo_tile.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {


  //list of todo
  List toDoList = [
    ["Guipro Flutter Run", false],
    ["Tuition for finals", false],
    ["Philpop roleplay", false]

  ];


  //checkbox was taptap
    void checkBoxChanged(bool? value, int index) {
        setState(() {
          toDoList[index][1] = !toDoList[index][1];
        });

    }

  @override  
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 131, 190, 238),
        appBar: AppBar(
          title: Text('To Do (Asian College)'),
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder:(context, index) {
            return ToDoTile(taskName: toDoList[index][0], taskCompleted: toDoList[index][1], onChanged: (value) =>  checkBoxChanged(value, index),
            );
          },
        ),
      ),
    );
  }
}