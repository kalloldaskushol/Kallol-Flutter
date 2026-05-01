import 'package:flutter/material.dart';
// import 'package:section_a/auth/auth_gate.dart';
import 'package:section_a/practice_tutorial.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
void main() async {
  // SuperBase Initialization
  await Supabase.initialize(
    url: 'https://jzhyemcywefusuwztdfu.supabase.co', 
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imp6aHllbWN5d2VmdXN1d3p0ZGZ1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzczMDYwNDksImV4cCI6MjA5Mjg4MjA0OX0.0BIlOr1XkJVK3BcUcRQ6hbE_RljVeWD33wLOByosv0s'
    );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp( //! Why MaterialApp is used here?
        debugShowCheckedModeBanner: false,
        title: "Kallol-Flutter", 
        // home: AuthGate(),
        home: PracticeTutorial(),
      );
  }
}