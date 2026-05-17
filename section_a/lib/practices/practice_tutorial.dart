import 'package:flutter/material.dart';

class PracticeTutorial extends StatelessWidget {
  const PracticeTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Developer Profile", style: TextStyle(color: Colors.white,fontSize: 26, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),

      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center ,children: [
          Card(
            elevation: 10,
            margin: EdgeInsets.all(16.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                Row(children: [
                  CircleAvatar(radius: 40, backgroundImage: AssetImage("assets/image/ME.jpeg")),
                  SizedBox(width: 10,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start ,children: [
                    Text("Kallol Das Kushol", style: TextStyle(fontWeight: FontWeight(1000)),),
                    Text("CSE, 63rd Batch"),
                    Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start, children: [
                      Icon(Icons.location_on, size: 16,),
                      Text("Sylhet, Bangladesh",style: TextStyle(fontWeight: FontWeight(1000))),
                    ],),
                  ],)
                ],),
                
                SizedBox(height: 25,child: Divider(),),
                // 2nd row
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly ,children: [
                  infoColInRow("12", "Posts"),
                  SizedBox(height: 50, child: VerticalDivider()),
                  infoColInRow("45", "Interaction"),
                  // SizedBox(height: 50, child: VerticalDivider()),
                  SizedBox(height: 50, child: VerticalDivider(),),
                  infoColInRow("1", "Followers"),
                ],),
                
                SizedBox(height: 40, child: Divider(),),
                // 3rd row
                //* Dont need Row if i use wrap
                Wrap(
                  alignment: WrapAlignment.center, 
                  spacing: 8,
                  runSpacing: 12,

                  children: [
                  skillCon("Flutter", Colors.black),
                  skillCon("Dart", Colors.black),
                  skillCon("Python", Colors.black),
                  skillCon("Java", Colors.black),
                  skillCon("HTML", Colors.black),
                  skillCon("SQL", Colors.black),
                  skillCon("Git", Colors.black),
                  skillCon("Firebase", Colors.black),
                  skillCon("UI/UX", Colors.black),
                ], 
                ),
                
                SizedBox(height: 40,child: Divider(),),
                Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.purple, foregroundColor: Colors.white, minimumSize: Size(60, 60), textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight(1000))),
                   onPressed: (){},
                   child: Text("Message"), 
                   ),
                  
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.purple, foregroundColor: Colors.white, textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight(1000)), minimumSize: Size(80, 60)),
                    onPressed: (){}, child: Text("Phone")),
                ],),
                SizedBox(height: 40,child: Divider(),)
              ],),
            ),
          )
        ],),
      ),
    );
  }
}

Widget skillCon(String text, Color color){
  return Container(
    height: 50,
    width: 80,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(25), 
    ),
    child: Center(child: Text(text, style: TextStyle(fontWeight: FontWeight(100), fontSize: 18, color: Colors.white))),
  );
}

Widget infoColInRow(String text1, String text2){
  return Column(children: [
    Text(text1, style: TextStyle(fontWeight: FontWeight(1000), fontSize: 26)),
    Text(text2),
  ],);
}
/*
//! Column and Row Layout Tutorial
import 'package:flutter/material.dart';

class PracticeTutorial extends StatelessWidget {
  const PracticeTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column and Row Layout", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          myCon("1", 100, 100, Colors.red),
          myCon("2", 100, 100, Colors.green),
          myCon("3", 100, 100, Colors.blue),
        ],),
        SizedBox(height: 20,),
        myCon("Large Container", 150, 400, Colors.orange),
        Row(mainAxisAlignment: MainAxisAlignment.center ,children: [
          myCon("Left", 60, 100, Colors.purple),
          myCon("Right", 60, 100, Colors.lightGreen),
        ],)

      ],),

    );
  }
}

//Container widget
Widget myCon(String text, double height, double width, Color color){
  return Container(
    color: color,
    margin: EdgeInsets.all(25),
    height: height,
    width: width,
    child: Center(child: Text(text, style: TextStyle(color: Colors.white ,fontSize: 20 ,fontWeight: FontWeight.bold),)),
  );
}
*/
/*
//! ID Card Design Tutorial
import 'package:flutter/material.dart';

class PracticeTutorial extends StatelessWidget {
  const PracticeTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Digital ID Card", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Card(
            child: Column(children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column( children: [
                    CircleAvatar(backgroundImage: AssetImage("assets/image/ME.jpeg"), radius: 50,),
                    Title(color: Colors.black, child: Text("Kallol Das Kushol", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, fontStyle: FontStyle.italic),)),
                    Text("Batch: 63rd, Department Of CSE", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16)), 
                    SizedBox(height: 20,),
                    //2nd part of the ID card
                    Divider(thickness: 2),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(children: [
                        buildRow(Icons.person,"ID: 0182410012101006"),
                        SizedBox(height: 20,),
                        buildRow(Icons.email,"kallold70@gmail.com"),
                        SizedBox(height: 20,),
                        buildRow(Icons.phone,"01886-204319"),
                      ],),
                    )
                  ],),
                ),
              )
            ],),
          )
        ],),
      ),

    );
  }
}

Widget buildRow(IconData icon ,String text){
  return Row(children: [
    // Padding(padding: EdgeInsets.all(8)),
    Icon(icon),
    SizedBox(width: 10,),
    Text(text, style: TextStyle(fontSize: 16,),)
  ],);
}
*/