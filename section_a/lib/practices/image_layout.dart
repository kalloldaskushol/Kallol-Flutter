import 'package:flutter/material.dart';

class ImageLayout extends StatelessWidget {
  const ImageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(/*
      body: CircleAvatar(
        radius: 100,
        backgroundImage: NetworkImage("https://miro.medium.com/v2/resize:fit:1100/format:webp/1*10RECXGTH5NyaeBg5yD1pw.png"),
      )*/
      body: Card(
        color: Colors.blue,
        child: ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("Section A"),
          subtitle: Text("SAD Class"),
          trailing: Icon(Icons.notifications),
        ),
      ),
    );
  }
}