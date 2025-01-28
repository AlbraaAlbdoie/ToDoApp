import 'package:flutter/material.dart';
import 'package:todo_app/pages/mybutton.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  VoidCallback onSave;
  VoidCallback onCancel;
  final TextEditingController controller;
  DialogBox({
    super.key,
    required this.controller,
    required this.onCancel,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: 150,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //user input
            TextFormField(
              
              controller: controller,
              decoration: InputDecoration(
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                hintText: 'Add A new task',
              ),
            ),
            //buttons -> save +cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Mybutton(text: 'Save', onpressed: onSave),
                SizedBox(
                  width: 8,
                ),
                Mybutton(text: 'Cancel', onpressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
