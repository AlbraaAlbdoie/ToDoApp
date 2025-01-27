import 'package:flutter/material.dart';
import 'package:todo_app/pages/ToDotile.dart';
import 'package:todo_app/pages/dialog_box.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List todolist = [
    ['Stading', false],
    ['playing', false],
  ];
  void chackboxchang(bool? value, int index) {
    setState(() {
      todolist[index][1] = !todolist[index][1];
    });
  }

  void createnewtask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[300],
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          onPressed: createnewtask,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        appBar: AppBar(
          title: Center(
            child: Text(
              'TO DO ',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: ListView.builder(
            itemCount: todolist.length,
            itemBuilder: (context, index) {
              return ToDotile(
                taskName: todolist[index][0],
                taskcompleted: todolist[index][1],
                onchinge: (value) => chackboxchang(value, index),
              );
            }));
  }
}
