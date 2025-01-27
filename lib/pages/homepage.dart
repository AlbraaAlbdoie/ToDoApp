import 'package:flutter/material.dart';
import 'package:todo_app/pages/ToDotile.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        title: Center(
          child: Text(
            'TO DO ',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        children: [
          ToDotile()
        ],
      ),
    );
  }
}
