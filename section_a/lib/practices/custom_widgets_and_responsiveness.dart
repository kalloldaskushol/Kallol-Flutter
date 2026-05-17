import 'package:flutter/material.dart';
import 'package:section_a/widgets/my_con.dart';
 
class CustomWidgetsAndResponsiveness extends StatelessWidget {
  const CustomWidgetsAndResponsiveness({super.key});
 
  @override
  Widget build(BuildContext context) {
 
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
 
    return Scaffold(
      appBar: AppBar(
        title: Text("Column & Row Layout"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(children: [
        SizedBox(
          height: height * 0.2,
          width: width * 0.8,
        ),
        SingleChildScrollView(
          scrollDirection:  Axis.horizontal,
          child: Row(children: [
            MyCon(text: "1", color: Colors.blue, height: 50, width: 50),
            MyCon(text: "1", color: Colors.blue, height: 50, width: 50),
            MyCon(text: "1", color: Colors.blue, height: 50, width: 50),
            MyCon(text: "1", color: Colors.blue, height: 50, width: 50),          
            MyCon(text: "1", color: Colors.blue, height: 50, width: 50),
            MyCon(text: "1", color: Colors.blue, height: 50, width: 50),
            MyCon(text: "1", color: Colors.blue, height: 50, width: 50),
            MyCon(text: "1", color: Colors.blue, height: 50, width: 50),          
            MyCon(text: "1", color: Colors.blue, height: 50, width: 50),
            MyCon(text: "1", color: Colors.blue, height: 50, width: 50),
            MyCon(text: "1", color: Colors.blue, height: 50, width: 50),
            MyCon(text: "1", color: Colors.blue, height: 50, width: 50),          
            MyCon(text: "1", color: Colors.blue, height: 50, width: 50),
            MyCon(text: "1", color: Colors.blue, height: 50, width: 50),
            MyCon(text: "1", color: Colors.blue, height: 50, width: 50),
            MyCon(text: "1", color: Colors.blue, height: 50, width: 50),
          ],),
        )
      ],),
    );
  }
}