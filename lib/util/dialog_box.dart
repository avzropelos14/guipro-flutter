import 'package:flutter_midterms/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 239, 92, 81,),
      content: SizedBox(
        height: 120, 
        child: Column(children: [
        //get user input
        TextField(
          decoration: InputDecoration(border: OutlineInputBorder(), hintText: "Add New Task"
          ),
          
        ),


        //buttons

      ]),
      )
    );
  }
}