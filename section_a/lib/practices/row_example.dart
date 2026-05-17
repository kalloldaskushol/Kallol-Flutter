import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Example"),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        mainAxisAlignment : MainAxisAlignment.center,
        children: [
          SizedBox(width: 10,),
          Container(
            margin: EdgeInsets.all(10),
            height: 100,
            width: 100,
            color: Colors.red,
            child: Center(
              child: Text("Flutter Row Practice",style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,)), 
          ),
          SizedBox(width: 10,),
          Container(
            margin: EdgeInsets.all(10),
            height: 100,
            width: 100,
            color: Colors.red,
            child: Center(child: Text("Hello", textAlign: TextAlign.center,),)            
          ),
          SizedBox(width: 10,),
          Container(
            margin: EdgeInsets.all(10),
            height: 100,
            width: 100,
            color: Colors.red,
            child: Center(child: Text("World", textAlign: TextAlign.center,),) 
          )
      
        ],
      ),
    );
  }
}