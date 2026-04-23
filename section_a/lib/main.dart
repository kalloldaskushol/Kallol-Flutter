// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp()); // will pass the obj of first class made in the project
//   // ⭐Have to Study -> streaghtless, Streaghtfull
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp();
//   }
// }

// 2nd class
import 'package:flutter/material.dart';
import 'package:section_a/list_tile.dart';
// import 'package:section_a/profile_card.dart';
// import 'package:section_a/row_example.dart';
// import 'package:section_a/card_design.dart';
// import 'package:section_a/image_layout.dart';
// import 'package:section_a/image_layout.dart';
// import 'package:section_a/layout_design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp( //! Why MaterialApp is used here?
        debugShowCheckedModeBanner: false, 
        home: ListTilee(),
      );
  }
}