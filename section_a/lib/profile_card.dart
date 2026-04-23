import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Digital Profile Card", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),), backgroundColor: Colors.deepPurple, centerTitle: true,
      ),
      body: Center(
        child: Card(
          color: Colors.deepPurpleAccent,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Profile Card", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(width: 250,child: Divider(color: Colors.black,),),
                CircleAvatar(
                  backgroundImage: AssetImage("image/OBTQ.jpg"),
                  radius: 50,
                ),
                SizedBox(height: 5,),
                Text("Kallol Das Kushol", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                Text("Flutter Developer", style: TextStyle(fontSize: 14, color: Colors.white),),
                SizedBox(width: 250,child: Divider(color: Colors.black,),),
                infoRow(Icons.email, "kalloldaskushol@example.com"),
                infoRow(Icons.phone, "+1 234 567 890"),
                infoRow(Icons.location_on, "123 Main Street, City, Country"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
Widget infoRow(IconData icon, String text){
  return Row(

    mainAxisSize: MainAxisSize.min,
    children: [ 
    Icon(icon, color: Colors.white,),
    SizedBox(width: 5,),
    Text(text, style: TextStyle(color: Colors.white),)
  ],);
}