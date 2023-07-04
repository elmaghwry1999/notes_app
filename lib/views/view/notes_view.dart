import 'package:flutter/material.dart';
import 'package:noteapp/views/body/notes_view_body.dart';
import '../widgets/add_note_bottom_sheet.dart';
class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          context: context,
          builder: (context) => const AddNoteBottomSheet(),
        ),
        backgroundColor: Colors.grey,
        elevation: 10,
        child: const Icon(Icons.add, size: 30, color: Colors.white),
      ),
      body: const NotesViewBody(),
    );
  }
}
