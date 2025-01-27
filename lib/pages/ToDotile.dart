import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ToDotile extends StatelessWidget {
  ToDotile(
      {super.key,
      required this.taskName,
      required this.taskcompleted,
      required this.onchinge});
  final String taskName;
  final bool taskcompleted;
  Function(bool?)? onchinge;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.deepPurple),
        child: Row(
          children: [
            Checkbox(
                side: BorderSide(color: Colors.white, width: 2),
                checkColor: Colors.white,
                activeColor: Colors.deepPurpleAccent[500],
                value: taskcompleted,
                onChanged: onchinge),
            // task name
            Text(
              taskName,
              style: TextStyle(
                  decoration: taskcompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  decorationColor: Colors.white,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
