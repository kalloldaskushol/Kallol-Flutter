//! A widget that checks the authentication state of the user and displays the appropriate page (either the login page or the notes page) based on whether the user is signed in or not.

import 'package:flutter/material.dart';
import 'package:section_a/pages/login.dart';
import 'package:section_a/pages/notes_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key, this.signedInPage});

  final Widget? signedInPage;

  @override
  Widget build(BuildContext context) {

    return StreamBuilder(
      stream: Supabase.instance.client.auth.onAuthStateChange, builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return Scaffold(
            body: Center(child: CircularProgressIndicator()),

          );
        }
        final session = snapshot.hasData ? snapshot.data!.session: null; 
        if(session != null){
          return NotesPage();
        }else{
          return Login();
        }
      }
      );
  }
}
