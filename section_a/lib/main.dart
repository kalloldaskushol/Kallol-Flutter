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
import 'package:section_a/home_page.dart';

void main() {
    runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomePage()

    );
  }
}