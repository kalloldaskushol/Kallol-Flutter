import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // -> Leading, title, actions
        title: Text("HomePage"),
        backgroundColor: const Color.fromARGB(255, 129, 93, 93),
        leading: Icon(
          Icons.arrow_back
        ),
        actions: [
          Text("Action 1"),
          SizedBox(
            width: 10
          ),
          Icon(
            Icons.menu
          )
        ],
      ),
      body: Center(child: Text("Section A Home Page", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Color.fromARGB(255, 163, 44, 44)),)),
    );
  }
}