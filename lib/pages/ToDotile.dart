import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class ToDotile extends StatelessWidget {
  final String taskName;
  final bool taskcompleted;
  Function(bool?)? onchinge;
  Function(BuildContext)? deletFunction;

  ToDotile({
    super.key,
    required this.taskName,
    required this.taskcompleted,
    required this.onchinge,
    required this.deletFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deletFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade300,
              borderRadius: BorderRadius.circular(6),
            )
          ],
        ),
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
      ),
    );
  }
}
