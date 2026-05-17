import 'dart:async';

import 'package:flutter/material.dart';
import 'package:section_a/auth/auth_gate.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay for the splash screen (e.g., 3 seconds)
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) => const AuthGate()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        child: const Center(
          child: Text(
            "Welcome to Kallol-Flutter",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ),
    );
  }
}