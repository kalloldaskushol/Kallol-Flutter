import 'package:flutter/material.dart';

class SectionD extends StatelessWidget {
  const SectionD({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Developer Profile", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          color: Colors.amberAccent,
          margin: EdgeInsets.all(40),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(mainAxisSize: MainAxisSize.min,mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(children: [
                CircleAvatar(radius: 40,backgroundImage: AssetImage("assets/image/ME.jpeg"),),
                SizedBox(width: 15,),
                Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("Kallol Das Kushol"),
                  Text("CSE 63rd Batch"),
                  Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Icon(Icons.location_on),
                    Text("Sylhet, Bangladesh")
                  ],)
                ],)
              ],),
              SizedBox(height: 20,child: Divider(),),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.center, children: [

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("12"),
                      Text("Posts"),
                    ],
                  ),
                ),
                SizedBox(height: 50, child: VerticalDivider(),),
                
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("12"),
                      Text("Posts"),
                    ],
                  ),
                ),
                SizedBox(height: 50, child: VerticalDivider(),),
                
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("12"),
                      Text("Posts"),
                    ],
                  ),
                ),
              ],
              ),
              SizedBox(height: 20,child: Divider(),),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Wrap(
                  
                  spacing: 0,
                  runSpacing: 5,
                  runAlignment: WrapAlignment.spaceEvenly,
                  alignment: WrapAlignment.start,
                  children: [
                    addCard("Flutter", (){}, Colors.black),
                    addCard("UI/UX Design", (){}, Colors.black),
                    addCard("Mobile Development", (){}, Colors.black),
                    addCard("Web Development", (){}, Colors.black),
                    addCard("Game Development", (){}, Colors.black),
                    addCard("Cloud Computingz", (){}, Colors.black),
                  ],
                ),
              )

            ],),
          ),
          
        ),
      ),
    );
  }
}

Widget addCard(String text, VoidCallback onPressed, Color backgroundColor){
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    color: backgroundColor,
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Text(text, style: TextStyle(fontSize: 16, color: Colors.white,),),
    ),
  );
}



// import 'package:flutter/material.dart';

// class SectionD extends StatelessWidget {
//   const SectionD({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Developer Profile", style: TextStyle(fontSize: 26, color: Colors.white, fontWeight: FontWeight.bold),),
//         backgroundColor: Colors.deepPurpleAccent,
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
//                 height: 200,
//                 width: double.infinity,
//                 child: Row(children: [
//                   CircleAvatar(backgroundImage: AssetImage("assets/image/ME.jpeg"),radius: 60,),
//                   SizedBox(width: 20,),
//                   Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
//                     Text("Kallol Das Kushol", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
//                     Text("CSE: 63rd Batch", style: TextStyle(fontSize: 18),),
//                     Row(children: [
//                       Icon(Icons.location_on, color: Colors.black,),
//                       Text("Sylhet, Bangladesh", style: TextStyle(fontWeight: FontWeight.bold),)
//                     ],)
//                   ],)
//                 ],),
//               ),
//               Container(
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),),
//                 height: 100,
//                 width: double.infinity,
//                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                
//                   Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center, children: [
//                     SizedBox(width: 100,),
//                     Text("12", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
//                     Text("Posts", style: TextStyle(fontSize: 18),),
//                   ],),
//                   SizedBox(height: 40, child: VerticalDivider(),),
                
//                   Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center, children: [
//                     SizedBox(width: 100,),
//                     Text("340", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
//                     Text("Engagement", style: TextStyle(fontSize: 18),),
//                   ],),
//                   SizedBox(height: 40, child: VerticalDivider(),),
                
//                 Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center, children: [
//                     SizedBox(width: 100,),
//                     Text("1200", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
//                     Text("Followers", style: TextStyle(fontSize: 18),),
//                   ],),
//                 ],)
//               ),
//               Container(
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),),
//                 height: 20,
//                 width: double.infinity,
//                 padding: EdgeInsets.all(20),
//                 child: Wrap(
//                   runAlignment: WrapAlignment.center, // runAlignment is used to align the lines of buttons in the center when they wrap to the next line
//                   alignment: WrapAlignment.center, // alignment is used to align the buttons in the center within each line
//                   spacing: 20, // spacing is the horizontal space between the buttons
//                   runSpacing: 12, // runSpacing is the vertical space between the lines of buttons
//                   children:  [
//                     addButton("Flutter", (){}, Colors.blue),
//                     addButton("Dart", (){}, Colors.green),
//                     addButton("GitHub", (){}, Colors.grey),
//                     addButton("UI", (){}, Colors.orange),
//                     addButton("UX", (){}, Colors.purple),
//                     addButton("AI", (){}, Colors.red),
//                     addButton("ML", (){}, Colors.teal),
//                     addButton("DSA", (){}, Colors.indigo),
//                   ],),
//                 ),

              
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Widget addButton(String text, VoidCallback onPressed, Color backgroundColor){
//   return ElevatedButton(
//     onPressed: onPressed, 
//     style: ElevatedButton.styleFrom(
      
//       backgroundColor: backgroundColor,
//       textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)
//       ), 
    
//       child: Text(text),
//     );
// }