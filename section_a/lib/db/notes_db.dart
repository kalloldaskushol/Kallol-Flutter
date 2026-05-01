import 'package:section_a/auth/auth_services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class NotesDb {
  final notesTable = Supabase.instance.client.from("Notes");


  // insert
  Future<void> insertNotes(String content) async {
    final email = AuthServices().getCurrentEmail();
    await notesTable.insert( // will take map
      {
        "content": content,
        "email": email
      }
    );
  }
  // Update
  Future<void> updateNotes(dynamic noteId, String content) async {
    await notesTable.update(
      {
        "content": content,
      }
    ).eq("id", noteId);
  }
  // delete
  Future<void> deleteNotes(dynamic noteId) async {
    await notesTable.delete(
      
    ).eq("id", noteId);
  }

  Future<void> signOut() async {
    await Supabase.instance.client.auth.signOut();
  }
  
}