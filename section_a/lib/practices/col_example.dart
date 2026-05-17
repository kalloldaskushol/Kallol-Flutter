import 'package:flutter/material.dart';

class ColExample extends StatelessWidget {
  const ColExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column Example"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [            
            
            SizedBox(height: 20,),
            Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            height: 100,
            margin: EdgeInsets.all(10),
            width: double.infinity,
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home, color: Colors.white, size: 50,),
                Text("Home", style: TextStyle(color: Colors.white, fontSize: 50),)
              ],
            ),
            ),
            
            
            SizedBox(height: 20,),
            Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.redAccent,
            ),
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person, color: Colors.white, size: 50,),
                Text("Profile", style: TextStyle(color: Colors.white, fontSize: 50),)
              ],
            ),
            ),
            
            
            SizedBox(height: 20,),
            Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.orangeAccent,
            ),
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.settings, color: Colors.white, size: 50,),
                Text("Settings", style: TextStyle(color: Colors.white, fontSize: 50),)
              ],
            ),
            ),  
          ],),
      ),
    );
  }
}