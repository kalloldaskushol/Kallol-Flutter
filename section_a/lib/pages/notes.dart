import 'package:flutter/material.dart';
import 'package:section_a/db/notes_db.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  final _notesController = TextEditingController();
  void addNewNotes(){
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text("Add New Notes:"),
        content: TextField(controller: _notesController,),
        actions: [
          TextButton(onPressed: (){
              Navigator.pop(context);
              _notesController.clear();
          }, child: Text("Cancel")),
          TextButton(onPressed: () async {
          try{
            await NotesDb().insertNotes(_notesController.text);
            if(context.mounted){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Notes Added Successfully"))
              );
            }
            Navigator.pop(context);
            _notesController.clear();

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
    );
    // );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notes Page"),
      centerTitle: true,
      backgroundColor: Colors.blueGrey,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => addNewNotes(),
      child: Icon(Icons.add),
      ),
    );
  }
}