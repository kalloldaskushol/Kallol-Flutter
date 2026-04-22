import 'package:flutter/material.dart';

class CardDesign extends StatelessWidget {
  const CardDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Digital ID Card", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),centerTitle: true, backgroundColor: Colors.amber,),

        body: Center(
          child: Card(
            elevation: 20,
            margin: EdgeInsets.all(20),
            color: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(15.0),              
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  addText("Card Design"),
                  SizedBox(width: 200, child: Divider(height: 10, color: Colors.black,)), //! The Divider widget in Flutter by default stretches across the full width of its parent
                  addText("Text 1"),
                  CircleAvatar(backgroundImage: AssetImage("image/OBTQ.jpg",)), //! CircleAvatar is used to create circular profile images or icons
                  addText("Text 2"),
                  SizedBox(
                    width: 200, 
                    child: Divider(height: 20, color: Colors.blue,)
                    ),
                  addText("Text 3"),
                ],
              ),
            ),
          ),
        ),

    );
  }
}

Widget addText(String text, {double fontSize = 16, FontWeight fontWeight = FontWeight.bold}){
  return Text(
    text,
    style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
  );
}