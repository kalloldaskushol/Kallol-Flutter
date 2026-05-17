// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:section_a/auth/auth_services.dart';
import 'package:section_a/db/notes_db.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {

  final _notesController = TextEditingController();
  final notesDb = NotesDb();
  
  void addNewNotes(){
    _notesController.clear();
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text("Add New Notes:"),
        content: TextField(controller: _notesController,),
        
        actions: [ // Cancel Button and Save Button
          //* Cancel Button
          TextButton(onPressed: (){
              Navigator.pop(context);
              _notesController.clear();
          }, child: Text("Cancel")),
          
          //* Save Button
          TextButton(onPressed: () async {
          try{
            await notesDb.insertNotes(_notesController.text);
            
            setState(() {
              // To refresh the UI after adding new notes
            });


            if(context.mounted){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Notes Added Successfully"))
              );
            }
            Navigator.pop(context); // Close the dialog
            _notesController.clear(); // Clear the text field after saving

          }catch(e){
            if(mounted){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("$e"))
              );
            }
          }
          }, child: Text("Save")),
        ],
      ),
    ); // ShowDialog
  }

  // Delete
  void deleteNotes(dynamic id) async {
    try {
      await notesDb.deleteNotes(id);
      
      setState(() {
              // To refresh the UI after adding new notes
      });

      if(mounted){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Delete Successful"))
        );
      }
    } catch (e) {
      if(mounted){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("$e"))
        );
      }
    }
  }

  //update
  void updateNotes(dynamic id, String content){
    _notesController.text = content;

    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text("Update Notes:"),
        content: TextField(controller: _notesController,),
        
        actions: [ // Cancel Button and Save Button
          //* Cancel Button
          TextButton(onPressed: (){
              Navigator.pop(context);
              _notesController.clear();
          }, child: Text("Cancel")),
          
          //* Save Button
          TextButton(onPressed: () async {
          try{
            final updateNote = _notesController.text;
            await notesDb.updateNotes(id, updateNote);
            setState(() {
              // To refresh the UI after adding new notes
            });



            if(context.mounted){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Update Successfully"))
              );
            }
            Navigator.pop(context); // Close the dialog
            _notesController.clear(); // Clear the text field after saving

          }catch(e){
            if(mounted){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("$e"))
              );
            }
          }
          }, child: Text("Save")),
        ],
      ),
    ); // ShowDialog
  }




  @override
  Widget build(BuildContext context) {
    final email = AuthServices().getCurrentEmail();
    return Scaffold(
      appBar: AppBar(title: Text("Notes Page"),
      centerTitle: true,
      backgroundColor: Colors.blueGrey,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => addNewNotes(),
      child: Icon(Icons.add),
      ),
      body: StreamBuilder(stream: notesDb.notesTable.stream(primaryKey: ['id']).eq("email", email!),
       builder: (context, snapshot){
        if(!snapshot.hasData){
          return Center(child: CircularProgressIndicator(),);
        }
        final notes = snapshot.data!;
        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index){
            final note = notes[index]; //! here "notes" means the list of notes that we get from the stream, and "note" means each individual note in that list.
            final id = note['id']; //! here 'note' means each individual note in the list of notes that we get from the stream, and 'id' means the id of each individual note.
            final content = note['content'];

            return Card(

              child: ListTile(
                leading: Text("${index + 1}"), // as id is not int
                title: Text(content),
                trailing: Row(mainAxisSize: MainAxisSize.min ,children: [
                  IconButton(onPressed: (){
                    deleteNotes(id);
                  }, icon: Icon(Icons.delete)),
                  IconButton(onPressed: (){
                    
                    updateNotes(id, content);
                  }, icon: Icon(Icons.edit)),
                ],),
              
              ),
            );

          },

        );
       }
       ),
    );
  }
}