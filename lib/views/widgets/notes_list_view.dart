import 'package:flutter/material.dart';

import 'item_list_notes.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) => ItemListNotes(
          function: () {},
          index: index + 1,
          date: '25/7/2023',
          headNote: 'Head Note2',
          note:
              'بسم الله الرحمن الرحيم الحمد لله رب العالمين الرحمن الرحيم مالك يوم الدين اياك نعبد واياك نستعين اهدنا الصراط المستقيم صراط الذين انعمت عليهم غير المغضوب عليهم ولا الضالين  ',
        ),
      ),
    );
  }
}
