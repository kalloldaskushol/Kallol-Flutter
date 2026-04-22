import 'package:flutter/material.dart';

class LayoutDesign extends StatelessWidget {
  const LayoutDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row & Column Design", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),centerTitle: true, backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildBox("1", Colors.red),
              buildBox("2", Colors.green),
              buildBox("3", Colors.blue),
            ],
          ),
          SizedBox(height: 20,),
          buildBox("4", Colors.purple, wSize: 300),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildBox("5", Colors.orange, wSize: 150),
              buildBox("6", Colors.pink, wSize: 150),
            ],
          )
        ],
      ),
    );
  }
}

Widget buildBox(String text, Color color, {double hSize = 100, double wSize = 100}) {
  return Container(
    height: hSize,
    width: wSize,
    alignment: Alignment.center, 
    color: color, 
    margin: EdgeInsets.all(10), 
    child: Text(text, style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),)
  );
}