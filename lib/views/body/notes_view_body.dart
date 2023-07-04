import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_appbar.dart';

import '../widgets/item_list_notes.dart';
import '../widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Column(
      children: const[
         CustomAppBar(),
        NotesListView(),
      ],
    );
  }
}

